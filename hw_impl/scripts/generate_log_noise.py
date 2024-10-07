import os 
import numpy as np
import matplotlib.pyplot as plt
from utils import *

NOISE_SRC_BITS = 6
TOTAL_VALS = 1 << NOISE_SRC_BITS
towrite = "log_noise_LUT.mif"

THLD_MAX = 8e4
MULT = 2.5e4
epsilon = 1e-6
log_mult = 2.5

alpha = MULT / THLD_MAX
values = []

with open(towrite, "w") as f:
    for i in range(TOTAL_VALS):    
        rand = i / (TOTAL_VALS -1 )
        x_val = alpha * np.log(log_mult * rand + 1e-6)
        
        f.write(fp16_view(x_val))
        if i != TOTAL_VALS - 1:
            f.write("\n")

        values.append(x_val)
        

title = "$\\frac{" + str(MULT) + "}{" + str(THLD_MAX) + "} \\cdot log(" + str(log_mult) + "U[0,1] + \\epsilon)$" 
plt.title(title)
plt.plot(np.arange(len(values)), values)
plt.show()