#!/usr/bin/env python3
"""Browser regression checks against an already served demo (Playwright optional)."""
import argparse,json
from pathlib import Path
import numpy as np
from sudoku_model import PRESETS,model,inspect

def main():
    from playwright.sync_api import sync_playwright
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--url',default='http://127.0.0.1:8000/demo/')
    p.add_argument('--out',type=Path,default=Path('build/demo_qa'))
    a=p.parse_args();a.out.mkdir(parents=True,exist_ok=True)
    fixtures=[];rng=np.random.default_rng(114)
    for preset in PRESETS.values():
        m=model(preset['puzzle'])
        for i in range(8):
            bits=m['initial'].copy();bits[m['free']]=rng.integers(0,2,len(m['free']))
            fixtures.append({'puzzle':preset['puzzle'],'bits':''.join(map(str,bits[:729])),'check':inspect(bits,preset['puzzle'])})
    with sync_playwright() as pw:
        browser=pw.chromium.launch(headless=True,args=['--no-sandbox'])
        page=browser.new_page(viewport={'width':1440,'height':1200},device_scale_factor=1)
        errors=[];page.on('pageerror',lambda e:errors.append(str(e)))
        response=page.goto(a.url);assert response.status==200
        page.wait_for_selector('.cell');assert page.locator('.cell').count()==81
        checks=page.evaluate('(fs)=>fs.map(f=>SudokuQUBO.inspect(f.bits,f.puzzle))',fixtures)
        for fixture,check in zip(fixtures,checks):
            for key,value in fixture['check'].items():assert check[key]==value,(key,check[key],value)
        assert page.evaluate('SudokuQUBO.peers.every(p=>p.length===28)')
        assert 'Recorded FPGA' in page.locator('#source-badge').inner_text()
        assert page.locator('#benchmark-rows tr').count()==39
        for size,count in [('800',21),('1000',9),('2000',9)]:
            page.locator('#benchmark-filter').select_option(size);assert page.locator('#benchmark-rows tr').count()==count
        page.locator('#benchmark-filter').select_option('all')
        assert page.locator('#cpu-comparison-rows tr').count()==3
        assert page.locator('#tts-comparison-rows tr').count()==3
        assert page.locator('#spinnaker-published-rows tr').count()==3
        assert page.locator('#spinnaker-fpga-rows tr').count()==3
        assert page.locator('#iteration-rows tr').count()==3
        page.locator('#spinnaker-comparison summary').click()
        assert 'Not reached' in page.locator('#spinnaker-fpga-rows tr').first.inner_text()
        page.locator('#spinnaker-comparison summary').click()
        page.screenshot(path=str(a.out/'desktop.png'),full_page=True)
        page.locator('#timeline').fill(page.locator('#timeline').get_attribute('max'));page.locator('#timeline').dispatch_event('input')
        assert page.locator('#result-status').inner_text()=='Verified solution'
        assert page.locator('#energy-value').inner_text()=='-81'
        page.locator('.cell').nth(2).click();assert 'R1 C3' in page.locator('#cell-detail').inner_text()
        page.locator('#restart').click();page.locator('#play').click();page.wait_for_timeout(900)
        assert 'state 1 /' not in page.locator('#step-label').inner_text();page.locator('#play').click()
        page.locator('#preset').select_option('paper');assert 'paper' in page.locator('#problem-name').inner_text()
        page.locator('.run-details summary').click();page.locator('#attempt-run').click()
        page.locator('#timeline').fill(page.locator('#timeline').get_attribute('max'));page.locator('#timeline').dispatch_event('input')
        assert page.locator('#energy-value').inner_text()=='-79'
        assert page.locator('#result-status').inner_text()!='Verified solution'
        page.locator('#attempt-run').click()
        page.locator('#timeline').fill(page.locator('#timeline').get_attribute('max'));page.locator('#timeline').dispatch_event('input')
        assert page.locator('#energy-value').inner_text()=='-81'
        assert page.locator('#result-status').inner_text()=='Verified solution'
        page.locator('.run-details summary').click()
        page.locator('#edit-puzzle').click();page.locator('#puzzle-text').fill('1'*81);page.locator('#apply-puzzle').click()
        assert 'conflict' in page.locator('#message').inner_text()
        page.locator('#preset').select_option('classic')
        tampered=page.evaluate('JSON.parse(JSON.stringify(QUBO_RECORDINGS.classic))');tampered['frames'][-1]['energy']=-80
        page.locator('#import-file').set_input_files({'name':'invalid.json','mimeType':'application/json','buffer':json.dumps(tampered).encode()})
        page.wait_for_function("document.querySelector('#message').textContent.includes('Cannot import')")
        page.locator('#import-file').set_input_files({'name':'valid.json','mimeType':'application/json','buffer':json.dumps(page.evaluate('QUBO_RECORDINGS.classic')).encode()})
        page.wait_for_function("document.querySelector('#message').textContent.includes('Imported recording')")
        page.locator('#graph-tab').click();assert page.locator('#graph-board').is_visible()
        page.locator('#timeline').fill(page.locator('#timeline').get_attribute('max'));page.locator('#timeline').dispatch_event('input')
        assert int(page.locator('#energy-value').inner_text())>3000
        page.screenshot(path=str(a.out/'maxcut.png'),full_page=True)
        page.locator('#sudoku-tab').click()
        # Deterministic direct worker run: no solved grid or exact solver is supplied.
        result=page.evaluate('''puzzle=>new Promise((resolve,reject)=>{
          const worker=new Worker('worker.js'),frames=[];
          worker.onmessage=({data})=>{if(data.type==='frame')frames.push(data.frame);
            if(data.type==='done'){worker.terminate();resolve({steps:data.steps,frames});}
            if(data.type==='error'){worker.terminate();reject(Error(data.message));}};
          worker.onerror=e=>reject(Error(e.message));worker.postMessage({puzzle,seed:1});})''',PRESETS['classic']['puzzle'])
        assert result['frames'][-1]['solved']
        for f in result['frames']:
            check=inspect(np.array(list(f['bits']),dtype=int),PRESETS['classic']['puzzle'])
            assert check['energy']==f['energy'] and check['solved']==f['solved'] and check['clues_preserved']
        page.locator('#browser-run').click()
        page.wait_for_function("!document.querySelector('#browser-run').disabled",timeout=60000)
        assert 'Browser software' in page.locator('#source-badge').inner_text()
        for width in [768,390,360]:
            page.set_viewport_size({'width':width,'height':900});page.locator('#preset').select_option('classic');page.wait_for_timeout(100)
            assert page.evaluate('document.documentElement.scrollWidth<=innerWidth'),f'overflow: {width}'
            page.screenshot(path=str(a.out/f'width{width}.png'),full_page=True)
        assert not errors,errors
        browser.close()
        summary={'status':'PASS','model_fixtures':len(fixtures),'worker_steps_to_solution':result['steps'],'worker_frames':len(result['frames']),'widths':[1440,768,390,360],'page_errors':errors,'checks':['playback','scrubbing','candidate inspection','clue validation','tampered import rejection','valid import','MAX-CUT','paper attempts','browser worker','responsive overflow','benchmark table and filters','CPU and first-hit tables','fixed native-iteration table']}
        (a.out/'summary.json').write_text(json.dumps(summary,indent=2)+'\n');print(json.dumps(summary,indent=2))
if __name__=='__main__':main()
