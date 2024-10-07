from utils import * 
import random
import numpy as np


save = "float16_mult.txt"

MIN = -50
MAX = 50
number_of_random_tests = 20

_as = [1.5,  2., -4., -1.5 -2.5, 0, 100.0, 42., 42., -100, 0.1] + [np.random.uniform(MIN, MAX) for _ in range(number_of_random_tests)]
_bs = [2.25, .2, 2.0, -1.25, 0, 27.0, 0.42, 0.042, 100, 0.1] + [np.random.uniform(MIN, MAX) for _ in range(number_of_random_tests)]

print(len(_as), len(_bs))

pad = "\t\t\t"
prefix = pad + "fd = $fopen(\"float16_mult_tb.txt\", \"w\");\n\n\n"
suffx = pad + "$fclose(fd);\n"
suffx += pad + "$finish;\n"

fd = open(save, "w")
fd.write(prefix)


for i, (a, b) in enumerate(zip(_as, _bs)):
    a = np.float16(a)
    b = np.float16(b)
    res = a * b
            
    
    fd.write(pad + f"// TC {i+1} : {a} * {b} \\approx {res}  \n")
    fd.write(pad + f"a = 16'b{fp16_view(a)}; // {a} \n")
    fd.write(pad + f"b = 16'b{fp16_view(b)}; // {b} \n")
    fd.write(pad + f"expected = 16'b{fp16_view(res)}; // {res} \n")
    fd.write(pad + f"#1;\n")
    fd.write(pad + f"utils.display_result_float16(a, b, product, fd); \n")
    fd.write(pad + "#1;\n")                
            
fd.write("\n\n"+suffx)
fd.close()