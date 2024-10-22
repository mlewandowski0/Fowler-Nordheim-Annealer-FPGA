import os 
import numpy as np
import matplotlib.pyplot as plt
from utils import *

FIXED_SIZE = 18
FRAC_BITS = 8

frac_eps = 1 / (1 << FRAC_BITS)

NOISE_SRC_BITS = 9
TOTAL_VALS = 1 << NOISE_SRC_BITS
towrite_float = f"log_noise_LUT_fixed_{NOISE_SRC_BITS}bit.mif"
towrite_fixed = f"log_noise_LUT_fixed_{NOISE_SRC_BITS}bit.mif"

THLD_MAX = 8e4
MULT = 2.5e4
epsilon = 1e-6
log_mult = 2.5

alpha = MULT / THLD_MAX
values = []

minima = float("inf")
maxima = float("-inf")

with open(towrite_float, "w") as f_float:
    with open(towrite_fixed, "w") as f_fixed:
        for i in range(TOTAL_VALS):    
            rand = i / (TOTAL_VALS -1 )
            x_val = alpha * np.log(log_mult * rand + 1e-6)

            #if abs(x_val) <= frac_eps:
            #    x_val = x_val / abs(x_val) * frac_eps
            x_val_as_fixed_str = real_to_fixed_str(x_val, FIXED_SIZE, FRAC_BITS)
            x_val_as_int = binary_to_unsigned_int(x_val_as_fixed_str)
            print(f"fixed conversion of {x_val_as_fixed_str} : {x_val} -> {x_val_as_int} -> {fixed_to_real(x_val_as_int, TOTAL_BITS, FRAC_BITS)}")

            minima = min(minima, x_val)
            maxima = max(maxima, x_val)

            f_float.write(fp16_view(x_val))
            f_fixed.write(x_val_as_fixed_str)
            
            if i != TOTAL_VALS - 1:
                f_float.write("\n")
                f_fixed.write("\n")
            
        values.append(x_val)
        
print(f"[minima={minima}, maxima={maxima}]")
title = "$\\frac{" + str(MULT) + "}{" + str(THLD_MAX) + "} \\cdot log(" + str(log_mult) + "U[0,1] + \\epsilon)$" 
plt.title(title)
plt.plot(np.arange(len(values)), values)
plt.show()