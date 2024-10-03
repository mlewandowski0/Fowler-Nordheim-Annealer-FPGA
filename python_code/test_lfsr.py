from utils import LFSR
import matplotlib.pyplot as plt
from tqdm import tqdm
import numpy as np
from collections import defaultdict

samples_cnt = 1_000_000


if __name__ == "__main__":
    bits = 8
        
    seed = 0b01101010
    lfsr = LFSR(seed=seed, num_of_bits=bits)
    
    d = defaultdict(int)
    
    for i in tqdm(range(samples_cnt)):
        d[lfsr.next()] += 1

    plt.bar(d.keys(), d.values())
    plt.savefig(f"lfsr_bits={bits}.png")
    plt.show()    
    
    ds = []
    for i in tqdm(range(samples_cnt)):
        ds.append(lfsr.get_random_log())
        
    plt.hist(ds, bins=100, density=True, edgecolor='black', histtype='step')
    plt.savefig(f"lfsr_log_bits={bits}.png")
    plt.show()        
    
    
    bits = 10
    max_int = 800
    d = defaultdict(int)
    
    for i in tqdm(range(samples_cnt)):
        d[lfsr.get_random_integer(max_int)] += 1
    
    plt.bar(d.keys(), d.values())
    plt.savefig(f"lfsr_random_val={bits}_max_int={max_int}.png")
    plt.show()       