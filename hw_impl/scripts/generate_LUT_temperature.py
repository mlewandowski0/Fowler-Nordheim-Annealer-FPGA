from utils import *
from math import *
import numpy as np
import matplotlib.pyplot as plt 

N_BITS = 7
MAX = 1000.
CONT_VALUES = 1000

filepath = "temperature_LUT.mif"
THLD_MAX = 8e4
MAX_ITER = 1e8
THLD_DELTA = 2e-3


SHOW_PLOT = True

total_values = 2**N_BITS

x_quant = []
values_quant = []

x_continuous = []
values_continuous = []

f = open(filepath, "w")

for i in range(CONT_VALUES):
    
    if i == 0:
        el = 0
        val = MAX
    else:
        el = i / (CONT_VALUES-1) * MAX_ITER * THLD_DELTA / THLD_MAX
        val = 1.0 / np.log(1. + el)
    x_continuous.append(el)
    values_continuous.append(val)

x_continuous = np.array(x_continuous)

for i in range(total_values):
    
    if i == 0:
        el = 0 
        val = np.float16(MAX)    
    else:
        el = i / (total_values-1) * MAX_ITER * THLD_DELTA / THLD_MAX
    
        for j in range(len(x_continuous)):
            if x_continuous[j] < el and el <= x_continuous[j+1]:
                   el = x_continuous[j]
        
        val = 1.0 / np.log(1. + el)
        val = np.float16(val)
    
    x_quant.append(el)
    values_quant.append(val)    
    f.write(f"{fp16_view(val)}")
    if i != total_values -1:
        f.write("\n")
    


f.close()

if SHOW_PLOT:
    plt.stairs(values_quant[:-1], x_quant, color="blue", label="Quantized version")
    plt.plot(x_continuous, values_continuous, color='red', label="Continuous version")
    plt.legend()
    plt.show()