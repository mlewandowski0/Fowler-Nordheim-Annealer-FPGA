from utils import *
from math import *
import numpy as np
import matplotlib.pyplot as plt 

# minima=-4.3173470493638355, maxima=0.28634097871064845

random_gen_val = max(abs(-4.3173470493638355), abs(0.28634097871064845))

offset = 32
FRAC_TOTAL_BITS = 18
FRAC_WIDTH      = 8
MAX = (2**(FRAC_TOTAL_BITS - FRAC_WIDTH - 1)  - offset)/ random_gen_val

frac_eps = 1 / (1 << FRAC_WIDTH)

N_BITS = 10
CONT_VALUES = 1000

filepath_float = f"temperature_LUT_float_N{N_BITS}.mif" 
filepath_fixed = f"temperature_LUT_fixed_N{N_BITS}.mif"

THLD_MAX = 8e4
MAX_ITER = 1e8
THLD_DELTA = 2e-3


SHOW_PLOT = False

total_values = 2**N_BITS

x_quant = []
values_quant = []

x_continuous = []
values_continuous = []

f = open(filepath_float, "w")
f_fixed = open(filepath_fixed, "w")

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
    
    if abs(val) <= frac_eps:
        val = val / abs(val) * frac_eps
    print(val)
    val_as_fixed_str = real_to_fixed_str(val, FRAC_TOTAL_BITS, FRAC_WIDTH)
    val_as_int = binary_to_unsigned_int(val_as_fixed_str)
    print(f"fixed conversion of {val_as_fixed_str} : {val} -> {val_as_int} -> {fixed_to_real(val_as_int, TOTAL_BITS, FRAC_BITS)}")

    f.write(f"{fp16_view(val)}")
    f_fixed.write(f"{val_as_fixed_str}")
    
    if i != total_values -1:
        f.write("\n")
        f_fixed.write("\n")
    


f.close()
f_fixed.close()

if SHOW_PLOT:
    plt.stairs(values_quant[:-1], x_quant, color="blue", label="Quantized version")
    plt.plot(x_continuous, values_continuous, color='red', label="Continuous version")
    plt.legend()
    plt.show()