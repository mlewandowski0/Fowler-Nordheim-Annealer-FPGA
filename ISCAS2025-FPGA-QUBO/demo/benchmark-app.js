'use strict';
(()=>{
 const data=window.QUBO_BENCHMARKS;if(!data||!data.graphs.length)return;
 const $=id=>document.getElementById(id);$('benchmarks').hidden=false;
 $('benchmark-count').textContent=data.graphs.length;$('benchmark-runs').textContent=data.board_runs;$('benchmark-coverage').textContent=`${data.covered_table_entries} / ${data.table_entries}`;
 const fmt=v=>v.toLocaleString('en-US'),range=r=>r[0]===r[1]?fmt(r[0]):`${fmt(r[0])}–${fmt(r[1])}`;
 function render(){const filter=$('benchmark-filter').value;$('benchmark-rows').replaceChildren();for(const g of data.graphs){if(filter!=='all'&&g.vertices!==+filter)continue;
  const tr=document.createElement('tr');for(const text of [g.name+(g.in_tables?'':' *'),`${fmt(g.vertices)} · ${g.negative_edges?'±1':'+1'}`,range(g.cut_range),g.reference?fmt(g.reference):'Not listed',g.reference?`${(100*g.best_cut/g.reference).toFixed(2)}%`:'—',`${g.median_seconds.toFixed(3)} s`,g.reference?`${g.target99_hits} / ${g.runs}`:'—']){const td=document.createElement('td');td.textContent=text;tr.append(td);}$('benchmark-rows').append(tr);}}
 $('benchmark-filter').onchange=render;render();
 for(const row of data.cpu_comparison||[]){const tr=document.createElement('tr');for(const text of [row.name,`${row.fpga_median_seconds.toFixed(3)} s`,`${row.cpu_median_seconds.toFixed(3)} s`,range(row.fpga_cut_range),range(row.cpu_cut_range)]){const td=document.createElement('td');td.textContent=text;tr.append(td);}$('cpu-comparison-rows').append(tr);}

 const median=xs=>{const a=xs.filter(v=>v!==null).sort((a,b)=>a-b);return a.length?a[(a.length-1)/2|0]:null;};
 for(const row of data.cpu_comparison||[]){const tr=document.createElement('tr'),f=median(row.fpga_target_seconds),c=median(row.cpu_target_seconds);for(const text of [`${row.name} / ${fmt(row.target99)}`,`${(f*1000).toFixed(2)} ms · ${row.fpga_target_hits}/3`,c===null?`No hit within 30 s · ${row.cpu_target_hits}/3`:`${c.toFixed(3)} s · ${row.cpu_target_hits}/3`]){const td=document.createElement('td');td.textContent=text;tr.append(td);}$('tts-comparison-rows').append(tr);}
})();

(()=>{
 const data=window.QUBO_SPINNAKER;if(!data)return;
 const $=id=>document.getElementById(id),add=(id,values)=>{const tr=document.createElement('tr');for(const text of values){const td=document.createElement('td');td.textContent=text;tr.append(td);}$(id).append(tr);};
 for(const row of data.rows){const p=row.fpga_primary;add('spinnaker-published-rows',[row.graph,`≈${row.spinnaker_reported_runtime_approx_seconds.toLocaleString('en-US')} s`,'Fixed iterations']);add('spinnaker-fpga-rows',[`${row.graph} / ${p.target_cut.toLocaleString('en-US')}`,`${p.successes} / ${p.attempts}`,p.conditional_median_first_hit_seconds===null?'Not reached':`${(p.conditional_median_first_hit_seconds*1000).toFixed(2)} ms`,`${row.fpga_complete_trial_median_seconds.toFixed(3)} s`]);}
})();

(()=>{const data=window.QUBO_ITERATIONS;if(!data)return;const body=document.getElementById('iteration-rows');for(const r of data.rows){const tr=document.createElement('tr'),range=a=>a[0]===a[1]?a[0].toLocaleString('en-US'):a.map(v=>v.toLocaleString('en-US')).join('–');for(const text of [r.graph,`${r.median_seconds.toFixed(3)} s`,range(r.accepted_flips_range),range(r.cut_range)]){const td=document.createElement('td');td.textContent=text;tr.append(td);}body.append(tr);}})();
