"""Strict Gset parser and independent signed cut scorer."""
from pathlib import Path
import hashlib,json,re
import numpy as np
ROOT=Path(__file__).resolve().parents[1]
# Values transcribed from supplied results.pdf, Tables S1/S2 (not current optimality certificates).
REFERENCES={1:(11624,0),2:(11620,-3),3:(11622,0),4:(11646,-5),5:(11631,0),6:(2178,0),7:(2006,0),10:(2000,-1),11:(564,0),12:(556,0),13:(582,0),14:(3064,-1),15:(3050,-1),16:(3052,0),17:(3047,-2),18:(992,-4),19:(906,-1),20:(941,0),21:(931,-3),22:(13359,-1),23:(13344,-3),24:(13337,-2),25:(13340,-7),26:(13328,-4),27:(3341,0),28:(3298,-2),29:(3405,-14),30:(3413,-1),31:(3310,-2),32:(1410,-4),33:(1382,-2),34:(1384,-2),35:(7687,-12),36:(7680,-17),37:(7691,-8),38:(7688,-16),39:(2408,-3),40:(2400,-7),41:(2405,-12),42:(2481,-15),43:(6660,0),44:(6650,0),45:(6654,0),46:(6649,-3),47:(6657,-1),48:(6000,0),49:(6000,0),50:(5880,0),51:(3848,-1),52:(3851,-4),53:(3850,0),54:(3852,-4),55:(10299,-15),56:(4017,-11),57:(3494,-22),58:(19293,-39),59:(6086,-31),67:(6950,-68),72:(7006,-76)}
def load(path):
 path=Path(path);rows=[list(map(int,l.split())) for l in path.read_text().splitlines() if l.strip()];n,m=rows[0];assert len(rows)==m+1
 q=np.zeros((n,n),dtype=np.int16);seen=set()
 for row in rows[1:]:
  assert len(row)==3;a,b,w=row;assert 1<=a<=n and 1<=b<=n and a!=b and w in (-1,1)
  key=tuple(sorted((a-1,b-1)));assert key not in seen;seen.add(key);q[a-1,b-1]=q[b-1,a-1]=w
 assert max(np.abs(q).sum(axis=1))<=511,'field can exceed signed 10-bit range'
 num=int(path.name[1:]);ref=REFERENCES.get(num)
 meta={'name':path.name,'vertices':n,'edges':m,'negative_edges':sum(r[2]<0 for r in rows[1:]),'sha256':hashlib.sha256(path.read_bytes()).hexdigest(),'source_url':f'https://web.stanford.edu/~yyye/yyye/Gset/{path.name}','in_supplement_tables':bool(ref),'paper_reference_cut':ref[0] if ref else None,'paper_neurosa_worst_cut':sum(ref) if ref else None}
 return q,meta

def cut(q,bits):
 x=np.asarray(bits,dtype=int);assert x.shape==(q.shape[0],) and set(np.unique(x))<={0,1}
 return int(np.sum(np.triu(q,1)*(x[:,None]!=x[None,:])))

def prepare_sim(path,out,physical=800):
 q,meta=load(path);assert q.shape[0]<=physical;matrix=np.zeros((physical,physical),dtype=np.int16);matrix[:len(q),:len(q)]=q;q=matrix;out=Path(out);out.mkdir(parents=True,exist_ok=True)
 for matrix,name in [(q>0,'positive.mem'),(q<0,'negative.mem')]:
  (out/name).write_text('\n'.join(''.join(str(int(v)) for v in row[::-1]) for row in matrix)+'\n')
 (out/'degrees.mem').write_text('\n'.join(f'{int(v)&1023:04x}' for v in q.sum(axis=1))+'\n')
 return meta
