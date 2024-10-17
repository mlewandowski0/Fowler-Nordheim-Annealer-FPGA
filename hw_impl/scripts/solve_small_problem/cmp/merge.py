import numpy as np 

a = "from_simulation"
b = "from_verilog"

with open(a) as f1:
    a_lines = f1.readlines()
    with open(b) as f2:
        b_lines = f2.readlines()
        
        for x,y in zip(a_lines, b_lines):
            print(f"current cuts from_numerical={x.strip()}, current cuts from_verilog={y.strip()}")            