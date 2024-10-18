import numpy as np
import math
import random
import time
import os
from tqdm import tqdm
from utils import *

class CONFIG:
    DTYPE = np.float32
    MAX_ITER = 1e8
    PROBLEM_PATH = os.path.join(".", "G15.npy")

    THLD_MAX = 8e4
    THLD_DELTA = 2e-3
    
    LOG_FILE = os.path.join(".", "logs", "approximations")
    
    EXTENSION = ".txt"
    RNG_APPROX_SELECTION = "software"
    RNG_APPROX_CALC = "LFSR"
    LOG_APPROX = "software"

    RNG_APPROX_SELECTION_BITS = 10
    RNG_APPROX_SELECTION_SEED = 0b11010101

    RNG_APPROX_CALC_BITS = 8
    RNG_APPROX_CALC_SEED = 0b11010101    

# create the approximations for the hardware-tricky parts (random number generation and 1/log(1 + thld/thld_max))
def get_RNG_approximation(approx, which="selection", seed=None, bits=None):
    if approx == "software":
        print("rng set to software approximation")
        CONFIG.LOG_FILE += f"_rng_{which}_software"
        return software_generator()
    elif approx == "LFSR":
        print("rng set to LFSR approximation")
        CONFIG.LOG_FILE += f"_rng_{which}_LFSR_b={bits}"
        return LFSR(seed=seed, num_of_bits=bits)

    else:
        raise NotImplementedError("RNG approximation not implemented")

def get_LOG_approximation(approx):
    if approx == "software":
        print("log set to software approximation")
        CONFIG.LOG_FILE += f"_log_software"
        return software_approx(CONFIG.THLD_MAX)
    else:
        raise NotImplementedError("log approximation not implemented")

rng_approximation_selection = get_RNG_approximation(CONFIG.RNG_APPROX_SELECTION, which="selection", seed=CONFIG.RNG_APPROX_SELECTION_SEED, bits=CONFIG.RNG_APPROX_SELECTION_BITS)
rng_approximation_calc = get_RNG_approximation(CONFIG.RNG_APPROX_CALC, which="calculation", seed=CONFIG.RNG_APPROX_CALC_SEED, bits=CONFIG.RNG_APPROX_CALC_BITS)
log_approximation = get_LOG_approximation(CONFIG.LOG_APPROX)

Q = np.load(CONFIG.PROBLEM_PATH)
(N, M) = Q.shape
thld = 1

# Neuron model structs
ds_p = np.zeros((N,), dtype=CONFIG.DTYPE)
ds_n = np.zeros_like(ds_p, dtype=CONFIG.DTYPE)
s_p = np.ones_like(ds_p, dtype=CONFIG.DTYPE)
s_n = np.zeros_like(ds_p, dtype=CONFIG.DTYPE)
vmem = np.matmul(Q, (s_p-s_n))

# statistics
num_spikes = 0
best_maxcuts = 0
maxcuts = 0

distributed = 0
quantize = 0

v = (s_p-s_n)
curr_cuts = np.sum(np.sum(np.multiply(Q, 1-np.outer(v, v))))/4

t_update_vmem = 0
t_spike = 0
t_sim = 0
t_rand = 0
s_sim = 0
e_sim = 0
s_update = 0
e_update = 0
s_rand = 0
e_rand = 0
s_spike = 0
e_spike = 0
    
alpha = 2.5e4/ CONFIG.THLD_MAX

# log file
i = 0
log_file_name = CONFIG.LOG_FILE + f"_run={i}" + CONFIG.EXTENSION
while os.path.exists(log_file_name):
    i += 1
    log_file_name = CONFIG.LOG_FILE + f"_run={i}" + CONFIG.EXTENSION

print(f"saving to {log_file_name + CONFIG.EXTENSION}")
           
pb = tqdm(range(int(CONFIG.MAX_ITER)))
with open(log_file_name, 'w') as f:
    f.write("spikes,best_maxcuts,iter,thld,curr_cuts\n")
    for iter in pb:
        if distributed:
            # Generate noise threshold for every neuron            
            noisethld = 2.5e4*np.log(2.5*np.rand_like(vmem)+1e-6)/(CONFIG.THLD_MAX*math.log(1+thld/CONFIG.THLD_MAX))
            spike = 1 if np.any((noisethld*(s_p-s_n)-vmem)*(s_p-s_n) < 0) else 0
            if spike:
                 # Asynchronous firing criteria
                 spike_ids = np.nonzero((noisethld*(s_p-s_n)-vmem)*(s_p-s_n) < 0, as_tuple=False)
                 p = spike_ids[np.randint(0, spike_ids.size(0), (1,)).item()].item()

        else:
            # Pick random neuron
            
            p = rng_approximation_selection.get_random_integer(N)
            ds_p_p = ds_p[p].item()
            ds_n_p = ds_n[p].item()
            s_p_p = s_p[p].item()
            s_n_p = s_n[p].item()
            vmem_p = vmem[p].item()

            # Generate noisy threshold
            noisethld = alpha* rng_approximation_calc.get_random_log() * log_approximation.get(thld)
            spike = 1 if (noisethld*(s_p_p-s_n_p)-vmem_p)*(s_p_p-s_n_p) < 0 else 0

        if spike:
            # s_spike = time.time_ns()
            # ds_p[p] = s_n[p] > 0
            # ds_n[p] = s_p[p] > 0
            new_ds_p_p = s_n_p > 0
            new_ds_n_p = s_p_p > 0
            ds_p[p]=new_ds_p_p
            ds_n[p]=new_ds_n_p
            # Update Neuron states
            # s_p[p] = np.logical_not(s_p[p])
            # s_n[p] = np.logical_not(s_n[p])
            s_p[p] = 0 if s_p_p else 1
            s_n[p] = 0 if s_n_p else 1
            # e_spike = time.time_ns()
            # Update Neuron Membrane Potential
            # curr_cuts -= 1*(ds_p[p]-ds_n[p])*vmem[p]
            
            # (s_p > 0 - s_n > 0) 
            curr_cuts -= 1*(new_ds_p_p-new_ds_n_p)*vmem_p
            # s_update = time.time_ns()
            # vmem += 2*(ds_p[p]-ds_n[p])*Q[p,:]
            # 1, 0 | 0, 1
            vmem += 2*(new_ds_p_p-new_ds_n_p)*Q[p,:]
            # e_update = time.time_ns()
            if curr_cuts.item() > best_maxcuts:
                best_maxcuts = curr_cuts.item()
            # v_tmp = (s_p-s_n).numpy()
            # Q_tmp = Q.numpy()
            # maxcuts  = np.sum(np.sum(np.multiply(Q_tmp, 1-np.outer(v_tmp, v_tmp))))/4
            # if curr_cuts.item() != maxcuts:
            #     print(curr_cuts.item())
            #     print(maxcuts)
            #     break
            num_spikes += 1

            t_update_vmem += (e_update-s_update)
        t_spike += (e_spike - s_spike)
        t_rand += (e_rand-s_rand)

        if iter > 0 and iter%1e5 == 0:
            e_sim = time.time_ns()
            t_sim = e_sim - s_sim
            # v_tmp = (s_p-s_n).numpy()
            # Q_tmp = Q.numpy()
            # maxcuts  = np.sum(np.sum(np.multiply(Q_tmp, 1-np.outer(v_tmp, v_tmp))))/4
            # if maxcuts > best_maxcuts:
            #     best_maxcuts = maxcuts
            pb.set_description(f'#spikes:{num_spikes}, best{best_maxcuts}')

            f.write(f"{num_spikes},{best_maxcuts},{iter},{thld},{curr_cuts.item()}\n")
            # print(f'time for update: {t_update_vmem/1e6}, time for sim: {t_sim/1e6}, time for rng: {t_rand/1e6}, t2 process spike: {t_spike/1e6}')
            # break



        thld += CONFIG.THLD_DELTA
        iter += 1

    # print(f'#spikes:{num_spikes}, #maxcuts{maxcuts}, best{best_maxcuts}') 