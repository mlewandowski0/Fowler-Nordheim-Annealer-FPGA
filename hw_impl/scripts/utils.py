import math
import numpy as np

FRAC_BITS = 8
TOTAL_BITS = 16

def real_to_fixed(real, total_bits, fractional_bits):
    f = 1 << fractional_bits
    as_int = int(real * f)
    
    signed = as_int >> (total_bits-1)    
    if signed:
        return (1 << (total_bits-1)) +  as_int % (1 << (total_bits-1))
    return as_int % (1 << (total_bits-1))

def to_signed_bit_string(number, bit_width):
    if number >= 0:
        return format(number, f'0{bit_width}b')
    else:
        return format((1 << bit_width) + number, f'0{bit_width}b')

def real_to_fixed_repr(number, total_bits, frac_bits):
    ff = real_to_fixed(number, total_bits, frac_bits)
    formatted_number = to_signed_bit_string(ff, total_bits)
    return f"{formatted_number[:total_bits-frac_bits]}_{formatted_number[total_bits-frac_bits:]}"

def fixed_to_real(ival, total_bits, frac_bits):
    signed = ival >> (total_bits-1)    
    
    if not signed:
        return ival / (1 << frac_bits) 
    else:
        return (ival / (1 << frac_bits))- (1 << (total_bits-frac_bits))
            

# function to convert float to fp16 binary representation
def fp16_view(value):
    # use numpy to handle float16 conversion
    fp16 = np.float16(value)
    
    # get the binary representation
    bin_rep = np.binary_repr(fp16.view(np.uint16), width=16)
    return bin_rep

# function to convert binary fp16 to float
def fp16_from_bin(bin_value):
    # convert binary string to integer 
    int_value = int(bin_value, 2)
    
    # convert to numpy float16
    float_value = np.float16(np.uint16(int_value).view(np.float16))
    
    return float_value

def multiply_fp16_bin(bin_a, bin_b):
    # convert binary fp16 to float 
    a = fp16_from_bin(bin_a)
    b = fp16_from_bin(bin_b)
    
    return a * b

def multiply_fp16(a, b):
    a =  np.float16(a)
    b =  np.float16(b)
    
    return a * b

def add_fp16(a, b):
    a =  np.float16(a)
    b =  np.float16(b)
    
    return a + b


def int_to_signed_binary_string(value, width):
    if value < 0:
        value = (1 << width) + value  # Compute two's complement for negative values
    return f'{value:0{width}b}'

def serialize_matrix(matrix, filename):
    with open(filename, "w") as f:
        for i,el in enumerate(matrix):
            els = "".join([str(val) for val in el])
            f.write(els)
            if i != len(matrix) -1 :
                f.write("\n")
                
        


if __name__ == "__main__":
    while True:
        v = input(">")
        ival = real_to_fixed(float(v), TOTAL_BITS, FRAC_BITS)      
        print(f"binary representation : {real_to_fixed_repr(float(v), TOTAL_BITS, FRAC_BITS)}")
        if float(v) >= 0:
            print(f"real value quantized : {ival / (1 << FRAC_BITS)}")
        else:
            print(f"real value quantized : {(ival / (1 << FRAC_BITS))- (1 << (TOTAL_BITS-FRAC_BITS))}")    
