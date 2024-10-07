from utils import * 
import random
import numpy as np


save = "to_int_tb.txt"

MIN = -10000
MAX = 10000
number_of_random_tests = 20

tests = [1.5, 2.25, -1.5, -2.25, 2.0 , 100., 27., 42.55, 0.663, 844.23,] + [random.uniform(MIN, MAX) for _ in range(number_of_random_tests)]

pad = "\t\t\t"
prefix = pad + "fd = $fopen(\"float16_to_int_tb.txt\", \"w\");\n\n\n"
suffx = pad + "$fclose(fd);\n"
suffx += pad + "$finish;\n"

if save is not None:
    fd = open(save, "w")
    fd.write(prefix)


for i, val in enumerate(tests):
    #b = random.uniform(MIN, MAX)
    a = np.float16(val)
    expected_bin_str = int_to_signed_binary_string(int(a), 16)
            
    if save is None:
        print(f"""
               // TC {i+1} : 
               inp = {fp16_view(a)}; // {a}
               #1;
               utils.display_float16_to_int(inp, out, fd); // should be {int(a)}, 
               #1;""")
    else:
        fd.write(pad + f"// TC {i+1} :\n")
        fd.write(pad + f"inp = 16'b{fp16_view(a)}; // {a} \n")
        fd.write(pad + f"expected = 16'b{expected_bin_str}; // {int(a)} \n")
        fd.write(pad + f"#1;\n")
        fd.write(pad + f"utils.display_float16_to_int(inp, out, fd); // should be {int(a)}, as binary = {expected_bin_str} \n")
        fd.write(pad + "#1;\n")                
            
if save is not None:
    fd.write("\n\n"+suffx)
    
    fd.close()