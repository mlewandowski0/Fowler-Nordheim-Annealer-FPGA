import numpy as np
import math
import random
import time
import os
from tqdm import tqdm
from utils import *
import json
import argparse


name_set_guard = set()


def get_with_default(config, key, default):
    if key not in config:
        print(f"key not found, setting {key} to {default}")
        return default
    print(f"setting {key} to {config[key]}")
    return config[key]


class CONFIG:
    def __init__(self, config_path):
        with open(config_path, 'r') as config_file:
            config = json.load(config_file)
        
        self.DTYPE = getattr(np, get_with_default(config,"DTYPE", "float32"))
        self.MAX_ITER = get_with_default(config,"MAX_ITER", 1e8)
        self.PROBLEM_PATH = get_with_default(config,"PROBLEM_PATH", os.path.join(".", "G15.npy"))
        
        self.THLD_MAX = get_with_default(config,"THLD_MAX", 8e4)
        self.THLD_DELTA = get_with_default(config,"THLD_DELTA", 2e-3)
    
        
        self.LOG_FILE = get_with_default(config, "LOG_FILE", os.path.join(".", "logs"))        
        self.EXTENSION = get_with_default(config, "EXTENSION", ".txt")

        self.RNG_APPROX_SELECTION = get_with_default(config, "RNG_APPROX_SELECTION", "LFSR")
        self.RNG_APPROX_CALC = get_with_default(config, "RNG_APPROX_CALC", "LFSR")
        
        self.LOG_APPROX = get_with_default(config, "LOG_APPROX", "software")

        self.RNG_APPROX_SELECTION_BITS = get_with_default(config, "RNG_APPROX_SELECTION_BITS", 10)
        self.RNG_APPROX_SELECTION_SEED = get_with_default(config, "RNG_APPROX_SELECTION_SEED", -1)        

        self.RNG_APPROX_CALC_BITS = get_with_default(config, "RNG_APPROX_CALC_BITS", 6)
        self.RNG_APPROX_CALC_SEED = get_with_default(config, "RNG_APPROX_CALC_SEED", -1)        

        self.UNITS = get_with_default(config, "UNITS", 1)        
        self.TAYLOR_ORDER = get_with_default(config, "TAYLOR_ORDER", None) 
        self.PADE_ORDER = get_with_default(config, "PADE_ORDER", None)
        self.DEBUG = get_with_default(config, "DEBUG", False)
        self.MEMORY_CLOSE = get_with_default(config, "MEMORY_CLOSE", False)
        self.COUNTER = get_with_default(config, "COUNTER", 1)
        
        self.LUT_NBITS = get_with_default(config, "LUT_NBITS", 7)
        self.LUT_THLD_MAX_MULTIPLES = get_with_default(config, "LUT_THLD_MAX_MULTIPLES", 3)
        
        self.LUT_APPROX_FILENAME = get_with_default(config, "LUT_APPROX_FILENAME", os.path.join("hardware","log_approximation_LUT.mem")) 

# create the approximations for the hardware-tricky parts (random number generation and 1/log(1 + thld/thld_max))

def get_RNG_approximation(approx, alpha, fixed_width, frac_bits, which="selection", seed=None, bits=None):
    global config, name_set_guard
    approx = approx.lower()
    
    if approx == "software":
        print(f"rng for {which} set to software approximation")
        if which not in name_set_guard:
            name_set_guard.add(which)
            config.LOG_FILE += f"_rng_{which}_software"        
        return software_generator()

    elif approx == "lfsr":
        if seed == -1:
            seed = np.random.randint(0, 2**bits)                    
        print(f"rng for {which} set to LFSR approximation, bits={bits}, seed={bin(seed)}")
        
        if which not in name_set_guard:
            name_set_guard.add(which)
            config.LOG_FILE += f"_rng_{which}_LFSR_b={bits}"        
        return LFSR(seed=seed, num_of_bits=bits, alpha=alpha, ID=which,
                    frac_bits=frac_bits, fixed_width=fixed_width)

    elif approx == "halon_software":
        print(f"rng for {which} set to halon software approximation")
        if which not in name_set_guard:
            name_set_guard.add(which)
            config.LOG_FILE += f"_rng_{which}_halon_software"        
        return halton_software()

    else:
        raise NotImplementedError("RNG approximation not implemented")

def get_LOG_approximation(approx, frac_bits, fixed_width):
    global config
    approx = approx.lower()

    if approx == "software":
        print("log set to software approximation")
        config.LOG_FILE += f"_log_software"
        return software_exact(config.THLD_MAX)

    elif approx == "taylor":
        print("log set to taylor approximation")

        if config.TAYLOR_ORDER is None:
            raise ValueError("TAYLOR_ORDER not set in config")

        config.LOG_FILE += f"_log_taylor_order={config.TAYLOR_ORDER}"
        return log_taylor_approx(order= config.TAYLOR_ORDER,thld_max=config.THLD_MAX)

    elif approx == "pade":
        print("log set to pade approximation")

        if config.PADE_ORDER is None:
            raise ValueError("PADE_ORDER not set in config")

        config.LOG_FILE += f"_log_pade_order={config.PADE_ORDER}"
        return log_pade_approx(order=config.PADE_ORDER ,thld_max=config.THLD_MAX)

    elif approx == 'lut':
        print("log approximation set to LUT")

        config.LOG_FILE += f"_log_lut"
        approx = log_lut_approx(NBITS=config.LUT_NBITS,
                                multiplies_of_thld_max=config.LUT_THLD_MAX_MULTIPLES,
                                thld_delta=config.THLD_DELTA,
                                thld_max=config.THLD_MAX,
                                frac_bits=frac_bits,
                                fixed_width=fixed_width)
        approx.to_file(filename=f"temperature_fixed_width={fixed_width}_frac_bits={frac_bits}_nbits_of_lut={config.LUT_NBITS}.mif")
        return approx
    else:
        raise NotImplementedError("log approximation not implemented")


if __name__ == "__main__":
    global config
    
    parser = argparse.ArgumentParser(description='Run NeuroSA')
    parser.add_argument('config', type=str, help='path to the config file')
    args = parser.parse_args()
    
    config = CONFIG(args.config)

    fixed_width = 18
    frac_bits = 8

    # make sure the log folder exists
    os.makedirs(config.LOG_FILE, exist_ok=True)
    print(f"to save : {config.LOG_FILE}")
    alpha = 2.5e4/ config.THLD_MAX

    config.LOG_FILE += "approx"

    if "/" in config.PROBLEM_PATH:
        config.LOG_FILE += f"_problem={config.PROBLEM_PATH.split('/')[-1][:3]}"
    else:
        config.LOG_FILE += f"_problem={config.PROBLEM_PATH[:3]}"

    rng_approximation_selections = []
    for i in range(config.UNITS):
        rng_approximation_selections.append(get_RNG_approximation(config.RNG_APPROX_SELECTION,
                                                                  alpha=alpha,
                                                                  which="selection",
                                                                  seed=config.RNG_APPROX_SELECTION_SEED,
                                                                  bits=config.RNG_APPROX_SELECTION_BITS,
                                                                  fixed_width=fixed_width,
                                                                  frac_bits=frac_bits))

    rng_approximation_calcs = []
    for i in range(config.UNITS):
        rng_approximation_calcs.append(get_RNG_approximation(config.RNG_APPROX_CALC,
                                                             alpha=alpha,
                                                             which="calculation",
                                                             seed=config.RNG_APPROX_CALC_SEED,
                                                             bits=config.RNG_APPROX_CALC_BITS,
                                                             fixed_width=fixed_width,
                                                             frac_bits=frac_bits))

    log_approximation = get_LOG_approximation(config.LOG_APPROX, frac_bits=frac_bits, fixed_width=fixed_width)


    Q = np.load(config.PROBLEM_PATH)
    (N, M) = Q.shape
    thld = 1

    # Neuron model structs
    ds_p = np.zeros((N,), dtype=config.DTYPE)
    ds_n = np.zeros_like(ds_p, dtype=config.DTYPE)
    s_p = np.ones_like(ds_p, dtype=config.DTYPE)
    s_n = np.zeros_like(ds_p, dtype=config.DTYPE)
    vmem = np.matmul(Q, (s_p-s_n))

    argmin_s_p = np.zeros_like(s_p)
    argmin_s_n = np.zeros_like(s_n)

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


    offsets = [0] * config.UNITS
    ranges  = [N] * config.UNITS

    if config.MEMORY_CLOSE:
        R = math.ceil(N / config.UNITS) 
        left = N
        offset = 0
        for i in range(config.UNITS):
            offsets[i] = offset
            ranges[i] = min(left, R)            
            offset += R
            left -= R

        config.LOG_FILE += "_memory_close"

    # log file
    i = 0

    log_file_name = config.LOG_FILE + f"_UNITS={config.UNITS}" + f"_run={i}" + config.EXTENSION
    while os.path.exists(log_file_name):
        i += 1
        log_file_name = config.LOG_FILE + f"_UNITS={config.UNITS}" + f"_run={i}" + config.EXTENSION

        
    if config.DEBUG:
        log_file_name = "debug" + config.EXTENSION
        config.MAX_ITER = 1000       

    it = N / config.UNITS

    with open("vmems.txt", "w") as vmem_f:
        print("cfg = ", config.UNITS)
        for i in range(config.UNITS):
            sub = vmem[int(it*i):int(it*(i+1))]

            vmem_f.write("data_arrays[" + str(i) + "] = {")
            for i,el in enumerate(sub):
                vmem_f.write(f"{int(el)}")
                if i != len(sub)-1:
                    vmem_f.write(",")
            vmem_f.write("};\n")


    with open(log_file_name, 'w') as f:
        f.write("spikes,best_maxcuts,iter,thld,curr_cuts\n")
        pb = tqdm(range(int(config.MAX_ITER)))
        for iter in pb:
            spike_sel = 0
            p_sel = -1

            if distributed:
                # Generate noise threshold for every neuron            
                noisethld = 2.5e4*np.log(2.5*np.rand_like(vmem)+1e-6)/(config.THLD_MAX*math.log(1+thld/config.THLD_MAX))
                spike = 1 if np.any((noisethld*(s_p-s_n)-vmem)*(s_p-s_n) < 0) else 0
                if spike:
                    # Asynchronous firing criteria
                    spike_ids = np.nonzero((noisethld*(s_p-s_n)-vmem)*(s_p-s_n) < 0, as_tuple=False)
                    p = spike_ids[np.randint(0, spike_ids.size(0), (1,)).item()].item()

            else:

                for i, (rng_approximation_selection, rng_approximation_calc) in enumerate(zip(rng_approximation_selections, rng_approximation_calcs)):
                    # Pick random neuron
                    offset = offsets[i]
                    r = ranges[i]

                    p = rng_approximation_selection.get_random_integer(r) + offset
                    ds_p_p = ds_p[p].item()
                    ds_n_p = ds_n[p].item()
                    s_p_p = s_p[p].item()
                    s_n_p = s_n[p].item()
                    vmem_p = vmem[p].item()

                    # Generate noisy threshold
                    noisethld = rng_approximation_calc.get_random_log() * log_approximation.get(thld)

                    #
                    # spike = 1 if (noisethld*(s_p_p-s_n_p)-vmem_p)*(s_p_p-s_n_p) < 0 else 0
                    spike = 1 if noisethld < vmem_p*(s_p_p-s_n_p) else 0

                    if spike and not spike_sel:
                        spike_sel = spike
                        p_sel = p

            if spike_sel:
                # s_spike = time.time_ns()
                # ds_p[p] = s_n[p] > 0
                # ds_n[p] = s_p[p] > 0
                ds_p[p_sel] = s_n[p_sel] > 0
                ds_n[p_sel] = s_p[p_sel] > 0

                # Update Neuron states
                s_p[p_sel] = np.logical_not(s_p[p_sel])
                s_n[p_sel] = np.logical_not(s_n[p_sel])
                
                vmem += 2*(ds_p[p_sel]-ds_n[p_sel])*Q[p_sel,:]
                d_cuts = (ds_p[p_sel] - ds_n[p_sel]) * vmem[p_sel]

                curr_cuts -= d_cuts

                # e_update = time.time_ns()
                if curr_cuts.item() > best_maxcuts:

                    best_maxcuts = curr_cuts.item()

                    argmin_s_p = s_p.copy()
                    argmin_s_n = s_n.copy()

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

            if config.MAX_ITER <= 1e4 or (iter > 0 and iter%1e5 == 0):
                e_sim = time.time_ns()
                t_sim = e_sim - s_sim
                # v_tmp = (s_p-s_n).numpy()
                # Q_tmp = Q.numpy()
                # maxcuts  = np.sum(np.sum(np.multiply(Q_tmp, 1-np.outer(v_tmp, v_tmp))))/4
                # if maxcuts > best_maxcuts:
                #     best_maxcuts = maxcuts
                pb.set_description(f'#spikes:{num_spikes}, best{best_maxcuts} thld : {round(thld, 3)}')

                f.write(f"{num_spikes},{best_maxcuts},{iter},{thld},{curr_cuts.item()}\n")
                # print(f'time for update: {t_update_vmem/1e6}, time for sim: {t_sim/1e6}, time for rng: {t_rand/1e6}, t2 process spike: {t_spike/1e6}')
                # break
                
            iter += 1
            
            if iter % config.COUNTER == 0:
                thld += config.THLD_DELTA * config.COUNTER

        # print(f'#spikes:{num_spikes}, #maxcuts{maxcuts}, best{best_maxcuts}') 