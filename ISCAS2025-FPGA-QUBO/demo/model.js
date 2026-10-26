/* Independent JavaScript implementation of the conflict QUBO. */
'use strict';
self.SudokuQUBO = (() => {
  const peers=Array.from({length:729},()=>[]);
  for(let i=0;i<729;i++)for(let j=i+1;j<729;j++){
    const r=i/81|0,c=(i/9|0)%9,d=i%9,R=j/81|0,C=(j/9|0)%9,D=j%9;
    if((r===R&&c===C)||(d===D&&(r===R||c===C||((r/3|0)===(R/3|0)&&(c/3|0)===(C/3|0))))){peers[i].push(j);peers[j].push(i);}
  }
  function model(text){
    const puzzle=text.replace(/[\s|]/g,'').replace(/\./g,'0');
    if(!/^[0-9]{81}$/.test(puzzle))throw Error('Enter exactly 81 digits; use 0 or . for a blank.');
    const bits=new Uint8Array(729),fixed=new Uint8Array(729);
    for(let cell=0;cell<81;cell++)if(+puzzle[cell]){
      const k=cell*9+(+puzzle[cell])-1;
      for(const j of peers[k])if(bits[j])throw Error('The clues conflict in a row, column, or box.');
      bits[k]=1;fixed[k]=1;for(const j of peers[k])fixed[j]=1;
    }
    for(let cell=0;cell<81;cell++)if(puzzle[cell]==='0'&&Array.from(fixed.slice(cell*9,cell*9+9)).every(Boolean))throw Error('A cell has no remaining candidate.');
    return {puzzle,bits,fixed,free:Array.from({length:729},(_,i)=>i).filter(i=>!fixed[i]),clues:[...puzzle].filter(c=>c!=='0').length};
  }
  function inspect(bits,puzzle){
    let selected=0,pairs=0,filled=0,clues=true;const grid=[],bad=new Set();
    for(let i=0;i<729;i++)if(+bits[i]){selected++;for(const j of peers[i])if(j>i&&+bits[j]){pairs++;bad.add(i/9|0);bad.add(j/9|0);}}
    for(let c=0;c<81;c++){const on=[];for(let d=0;d<9;d++)if(+bits[c*9+d])on.push(d+1);grid.push(on.length===1?on[0]:0);if(on.length===1)filled++;if(+puzzle[c]&&(on.length!==1||on[0]!==+puzzle[c]))clues=false;}
    const groups=[];for(let n=0;n<9;n++){groups.push(grid.filter((_,i)=>(i/9|0)===n));groups.push(grid.filter((_,i)=>i%9===n));groups.push(grid.filter((_,i)=>(i/27|0)===(n/3|0)&&(i%9/3|0)===n%3));}
    return {energy:-selected+3*pairs,selected,filled_cells:filled,conflict_pairs:pairs,clues_preserved:clues,solved:clues&&filled===81&&groups.every(g=>new Set(g).size===9&&!g.includes(0)),grid:Array.from({length:9},(_,i)=>grid.slice(i*9,i*9+9)),bad};
  }
  return {peers,model,inspect};
})();
