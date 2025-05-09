import random

UNITS = 2
NEURON_SEL_LFSR_WIDTH = 5
LOG_NOISE_SOURCE_WIDTH = 16

def generate_mif_file(filename, units, width):
    with open(filename, "w") as f:
        for i in range(units):
            # Generate a random seed for each unit
            seed = random.getrandbits(width) + (1 << width)
            # Write the seed to the file
            f.write(f"{bin(seed)[3:]}")
            
            if i < units - 1:
                f.write("\n")
        

generate_mif_file("ensemble_seeds.mif", units=UNITS, width=NEURON_SEL_LFSR_WIDTH)
generate_mif_file("noise_seeds.mif", units=UNITS, width=LOG_NOISE_SOURCE_WIDTH)