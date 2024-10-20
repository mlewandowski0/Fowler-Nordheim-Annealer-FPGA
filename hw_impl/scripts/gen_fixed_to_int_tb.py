from utils import *
from numpy import random

TESTCASES = 100
FRAC_TOTAL_BITS = 18
FRAC_WIDTH = 8
MAX_VALUE = 511

filename = "fixed_to_int_tb.txt" 


with open(filename, "w") as f_tb:
    for tc in range(TESTCASES):
        val = 2 * MAX_VALUE * (random.rand() - 0.5)
    
        f_tb.write(f"val = {FRAC_TOTAL_BITS}'b{real_to_fixed_repr(val, FRAC_TOTAL_BITS, FRAC_WIDTH)}; // is {val}, after conversion should be {int(val)}\n")
        f_tb.write("#CLK;\n\n")
