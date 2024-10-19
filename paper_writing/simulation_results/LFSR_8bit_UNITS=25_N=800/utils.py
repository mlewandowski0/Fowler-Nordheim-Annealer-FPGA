import random
from enum import Enum
import numpy as np
from scipy.stats import qmc
import math


#################################################################################################
# Random value approximations 

class random_generator(object):
    def __init__(self) -> None:
        pass
    
    def get(self) -> None:
        raise NotImplementedError("not implemented")
    
    def get_random_integer(self, max_int) -> None:
        raise NotImplementedError("not implemented")

    def get_random_log(self) -> None:
        raise NotImplementedError("not implemented")

class software_generator(random_generator):
    def __init__(self) -> None:
        super().__init__()
        
    def get(self) -> None:
        return random.random()

    def get_random_integer(self, max_int) -> None:
        return np.random.randint(0, max_int)

    def get_random_log(self) -> None:
        return math.log(2.5*self.get()+1e-6)

def get_bit(el, bit):
    return (el & (1 << bit)) >> bit

def XNOR_BITS3(val : int):
    return ~ ( get_bit(val, 2) ^ get_bit(val, 1) )

def XNOR_BITS4(val : int):
    return ~ ( get_bit(val, 3) ^ get_bit(val, 2) )

def XNOR_BITS5(val : int):
    return ~ ( get_bit(val, 4) ^ get_bit(val, 2) )

def XNOR_BITS6(val : int):
    return ~ ( get_bit(val, 5) ^ get_bit(val, 4) )

def XNOR_BITS7(val : int):
    return ~ ( get_bit(val, 6) ^ get_bit(val, 5) )

def XNOR_BITS8(val : int):
    return ~ ( get_bit(val, 7) ^ get_bit(val, 5) ^ get_bit(val, 4) ^ get_bit(val, 3))

def XNOR_BITS9(val : int):
    return ~ ( get_bit(val, 8) ^ get_bit(val, 4))

def XNOR_BITS10(val : int):
    return ~ ( get_bit(val, 9) ^ get_bit(val, 6))

def XNOR_BITS11(val : int):
    return ~ ( get_bit(val, 10) ^ get_bit(val, 8))

def XNOR_BITS12(val : int):
    return ~ ( get_bit(val, 11) ^ get_bit(val, 5) ^ get_bit(val, 3) ^ get_bit(val, 0))

def XNOR_BITS13(val : int):
    return ~ ( get_bit(val, 12) ^ get_bit(val, 3) ^ get_bit(val, 2) ^ get_bit(val, 0))

def XNOR_BITS14(val : int):
    return ~ ( get_bit(val, 13) ^ get_bit(val, 4) ^ get_bit(val, 2) ^ get_bit(val, 0))

def XNOR_BITS15(val : int):
    return ~ ( get_bit(val, 14) ^ get_bit(val, 13))

def XNOR_BITS16(val : int):
    return ~ ( get_bit(val, 15) ^ get_bit(val, 14) ^ get_bit(val, 12) ^ get_bit(val, 3))
 
class LFSR(random_generator):
    def __init__(self, seed : int, num_of_bits : int, eps=1e-6) -> None:
        
        if seed is None:
            raise ValueError("seed must be provided")
        
        if num_of_bits is None:
            raise ValueError("num_of_bits must be provided")
        
        super().__init__()
        self.curr_value = seed
        self.num_of_bits = num_of_bits
        self.mod = 2**num_of_bits   
        LUT_size = 2**num_of_bits
        
        self.XNOR_LUT = [XNOR_BITS3, XNOR_BITS4, XNOR_BITS5, XNOR_BITS6, XNOR_BITS7, XNOR_BITS8, XNOR_BITS9, XNOR_BITS10, XNOR_BITS11, XNOR_BITS12, XNOR_BITS13, XNOR_BITS14, XNOR_BITS15, XNOR_BITS16]

        # encoded as bfloat16 values
        self.LUT = [0]*LUT_size
        self.LOG_LUT = [0]*LUT_size
        
        for i, val in enumerate(range(LUT_size)):
            fp32_val = val / LUT_size
            fp16_val = np.array([fp32_val], dtype=np.float16)            
            
            log_fp32_val= np.log(2.5 * fp32_val + eps) 
            log_fp16_val = np.array([log_fp32_val], dtype=np.float16)
            
            self.LUT[i] = fp16_val.item()
            self.LOG_LUT[i] = log_fp16_val.item()

    def next(self) -> None:
        XNOR = self.XNOR_LUT[self.num_of_bits-3](self.curr_value) & 1

        self.curr_value = ( (self.curr_value << 1) | XNOR ) & (self.mod - 1)
        return self.curr_value
        
    def get_random_integer(self, max_int) -> None:
        val = self.next()
        # TODO: how to do this in hardware ?
        return int((val / self.mod) * (max_int))
    
    def get(self) -> None:
        val = self.next()
        return self.LUT[val]
    
    def get_random_log(self) -> None:
        val = self.next()
        return self.LOG_LUT[val]
                 
class halton_software(random_generator):
    def __init__(self, eps=1e-6) -> None:
        self.sampler = qmc.Halton(1)
        self.eps = eps

    def next(self) -> None:
        return self.sampler.random()
        
    def get_random_integer(self, max_int) -> None:
        val = self.next()
        # TODO: how to do this in hardware ?
        return int(val * max_int)
    
    def get(self) -> None:
        val = self.next()
        return val
    
    def get_random_log(self) -> None:
        return math.log(2.5*self.get()+self.eps)     
       
#################################################################################################
# approximation of the 1 / log (1 + thld / thld_max) function 

def approx_taylor(thld, thld_max, order = 1):
    if order == 1:
        return thld_max / thld + 0.5 - thld / (12 * thld_max)

    elif order == 2:
        return approx_taylor(thld=thld, thld_max=thld_max, order=1) + thld*thld / (24 * thld_max * thld_max)
    
    elif order == 3:
        return approx_taylor(thld=thld, thld_max=thld_max, order=2) - 19 * thld**3 / (720 * thld_max**3)
    
    return approx_taylor(thld=thld, thld_max=thld_max, order=order-1)

def approx_pade(thld, thld_max, order=2):
    if order == 2:
        return (thld_max + thld + thld**2 / (6 * thld_max)) / (thld + thld**2 / (2 * thld_max))
    else:
        num = (thld_max + 1.5 * thld + 3/5 * thld**2 / thld_max + thld**3 / (20 * thld_max**2))
        denom = thld + thld **2 / thld_max + 11/60 * thld**3 / (thld_max**2)
        return num / denom 

class scale_log_approximation(object):
     def __init__(self) -> None:
         pass
     
     def get(self, x : float) -> None:
         raise NotImplementedError("not implemented")
    
class software_exact(scale_log_approximation):
    def __init__(self, thld_max) -> None:
        super().__init__()
        self.thld_max = thld_max
        
    def get(self, thld : float) -> None:
        #print("DEBUG: EXACT")
        return 1. / math.log(1+thld/self.thld_max)
    
class log_taylor_approx(scale_log_approximation):
    def __init__(self, order, thld_max) -> None:
        super().__init__()
        self.thld_max = thld_max
        self.order = order
        
    def get(self, thld : float) -> None:
        #print("DEBUG: TAYLOR")
        return approx_taylor(thld, self.thld_max, self.order)
    
class log_pade_approx(scale_log_approximation):
    def __init__(self, order, thld_max) -> None:
        super().__init__()
        self.thld_max = thld_max
        self.order = order
        
    def get(self, thld : float) -> None:
        #print("DEBUG: PADE")
        return approx_pade(thld, self.thld_max, self.order)
        
def create_LUT_with_params(_range, MAX_THLD, thld_delta, NBITS = 7):
    LUT_SIZE = 1<<NBITS
    
    values = np.float16(np.zeros(LUT_SIZE))
    x_vals = np.float32(np.zeros(LUT_SIZE))
    print(f"size of ROM = {values.nbytes * 8} bits [{LUT_SIZE} elements]")
    
    for i in range(LUT_SIZE):
        x_val = _range * MAX_THLD * i / LUT_SIZE + thld_delta
        x_vals[i] = x_val
        values[i] = 1 / np.log(1 + x_val / MAX_THLD)
    
    return values, x_vals


# function to convert float to fp16 binary representation
def fp16_view(value):
    # use numpy to handle float16 conversion
    fp16 = np.float16(value)
    
    # get the binary representation
    bin_rep = np.binary_repr(fp16.view(np.uint16), width=16)
    return bin_rep

    
class log_lut_approx(scale_log_approximation):
    def __init__(self, NBITS, multiplies_of_thld_max, thld_delta, thld_max) -> None:
        super().__init__()
        self.lut, self.x_vals = create_LUT_with_params(multiplies_of_thld_max, thld_max, thld_delta, NBITS)
        self.curr_i = 0
        self.LUT_SIZE = (1 << NBITS) - 1 
        
    def get(self, thld : float) -> None:
        if self.curr_i != self.LUT_SIZE and thld >= self.x_vals[self.curr_i]:
            self.curr_i += 1   
            if self.curr_i == self.LUT_SIZE:
                print("last index of LUT")     
        return self.lut[self.curr_i]
    
    def to_file(self, filename="log_approximation_LUT.mem"):
        with open(filename, "w") as f:
            for i,el in enumerate(self.lut):
                f.write(f"{fp16_view(el)}")
                if i != self.LUT_SIZE:
                    f.write("\n")


# assuming that a and b are in fixed floating point representation    
def fixed_point_multiplication(a, b, fractional_bits, integer_bits):
    result = (a * b) >> fractional_bits
    whole_part = int(result)
    
    ff_result = (result - whole_part) + (whole_part % (1 << integer_bits))    
    return ff_result

def float_to_fixed_point(value, fractional_bits):
    # Convert the floating-point number to fixed-point representation
    fixed_point_value = int(round(value * (1 << fractional_bits)))
    
    return fixed_point_value

def fixed_point_to_float(fixed_value, fractional_bits):
    # Convert the fixed-point number to floating-point representation
    float_value = fixed_value / float(1 << fractional_bits)
    
    return float_value
