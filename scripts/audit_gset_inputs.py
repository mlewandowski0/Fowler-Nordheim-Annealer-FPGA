#!/usr/bin/env python3
"""Inventory the exact supplementary table, preserving omissions and capacity limits."""
import json,hashlib,re,shutil,subprocess
from pathlib import Path
from gset_model import ROOT,REFERENCES,load
out=ROOT/'results/gset';out.mkdir(parents=True,exist_ok=True)
validated=False
if shutil.which('pdftotext'):
 text=subprocess.check_output(['pdftotext','-layout','-f','11','-l','12',str(ROOT/'results.pdf'),'-'],text=True,stderr=subprocess.DEVNULL)
 table={int(n):(int(ref),int(diff))for n,ref,diff in re.findall(r'^\s*G(\d+)\s+(\d+)\s+(-?\d+)\s*$',text,re.M)}
 assert table==REFERENCES,'Reference transcription differs from supplied PDF tables'
 validated=True
rows=[]
for number,(ref,diff)in REFERENCES.items():
 name=f'G{number}';p=ROOT/'python_code/problems'/name
 if p.exists():
  _,meta=load(p);n=meta['vertices'];status='available';negative=meta['negative_edges']
 else:
  n=2000 if 22<=number<=42 else 1000 if 43<=number<=47 or 51<=number<=54 else 3000 if 48<=number<=50 else 5000 if 55<=number<=59 else 10000
  meta={'name':name,'vertices':n,'source_url':f'https://web.stanford.edu/~yyye/yyye/Gset/{name}'};negative=None;status='not_downloaded'
 build='gset'if n==800 else 'gset1024'if n==1000 else 'gset2048'if n==2000 and number in list(range(22,27))+list(range(35,39))else None
 rows.append({**meta,'paper_reference_cut':ref,'paper_neurosa_worst_cut':ref+diff,'table':'S1'if number<=30 else'S2','local_input':status,'planned_overlay':build,'exclusion':None if build else'Size/weight combination exceeds the evaluated dense local-memory variants; no reduced/subgraph substitute used.'})
result={'table_transcription_checked_against_pdf':validated,'source_pdf':'results.pdf','source_pdf_sha256':hashlib.sha256((ROOT/'results.pdf').read_bytes()).hexdigest(),'pages':[11,12],'table_entries':len(rows),'planned_entries':sum(bool(r['planned_overlay'])for r in rows),'extra_local_graphs_not_in_tables':['G8','G9'],'size_source':'https://sparse.tamu.edu/Gset','rows':rows}
(out/'inventory.json').write_text(json.dumps(result,indent=2)+'\n');print(result['table_entries'],'table entries;',result['planned_entries'],'fit planned builds')
