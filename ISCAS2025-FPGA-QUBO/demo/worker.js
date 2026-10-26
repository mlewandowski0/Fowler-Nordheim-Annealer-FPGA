'use strict';
importScripts('model.js');
onmessage=({data})=>{
  try{
    const m=SudokuQUBO.model(data.puzzle),x=m.bits.slice(),count=new Int16Array(729);
    let state=(data.seed||1)>>>0;const random=()=>{state^=state<<13;state^=state>>>17;state^=state<<5;return(state>>>0)/4294967296;};
    for(let i=0;i<729;i++)if(x[i])for(const j of SudokuQUBO.peers[i])count[j]++;
    let energy=-m.clues,best=energy,step=0;
    const frame=()=>({cycle:step,bits:Array.from(x).join(''),...SudokuQUBO.inspect(x,m.puzzle)});
    postMessage({type:'frame',frame:frame()});
    if(m.free.length===0){postMessage({type:'done',steps:0});return;}
    const max=6000000,period=180000;
    while(step<max&&best>-81){
      const end=Math.min(step+10000,max);
      while(step<end&&best>-81){
        const k=m.free[Math.floor(random()*m.free.length)],delta=(x[k]?1:-1)*(1-3*count[k]);
        const t=1.25*Math.pow(.025/1.25,(step%period)/period);
        if(delta<=0||random()<Math.exp(-delta/t)){
          const change=x[k]?-1:1;x[k]^=1;energy+=delta;for(const j of SudokuQUBO.peers[k])count[j]+=change;
          if(energy<best){best=energy;postMessage({type:'frame',frame:frame()});}
        }
        step++;
      }
      postMessage({type:'progress',steps:step,best});
    }
    postMessage({type:'done',steps:step});
  }catch(e){postMessage({type:'error',message:e.message});}
};
