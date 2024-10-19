import os 
import numpy as np
import matplotlib.pyplot as plt
from utils import *

NOISE_SRC_BITS = 7
TOTAL_VALS = 1 << NOISE_SRC_BITS
towrite_float = "log_noise_LUT_float.mif"
towrite_fixed = "log_noise_LUT_fixed.mif"

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

            print(x_val)

            minima = min(minima, x_val)
            maxima = max(maxima, x_val)

            f_float.write(fp16_view(x_val))
            if i != TOTAL_VALS - 1:
                f_float.write("\n")

        values.append(x_val)
        
print(f"[minima={minima}, maxima={maxima}]")
title = "$\\frac{" + str(MULT) + "}{" + str(THLD_MAX) + "} \\cdot log(" + str(log_mult) + "U[0,1] + \\epsilon)$" 
plt.title(title)
plt.plot(np.arange(len(values)), values)
plt.show()