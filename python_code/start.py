import numpy as np
import math
import random
import torch
DTYPE = torch.float32
# Load benchmark
G = np.load('./toy.npy')
Q = torch.tensor(G, dtype=DTYPE)
(N, M) = Q.shape
# Hyperparameter
thld_max = 8e4
thld = 1
thld_delta = 2e-3
MAX_ITER = 1e8
# Neuron model structs
ds_p = torch.zeros((N,), dtype=DTYPE)
ds_n = torch.zeros_like(ds_p, dtype=DTYPE)
#s_p = torch.ones_like(ds_p, dtype=DTYPE)
#s_n = torch.zeros_like(ds_p, dtype=DTYPE)
s_p = torch.Tensor([0, 0, 0,  1 , 1, 1, 0,  1,  1, 0])
s_n = torch.Tensor([1, 1, 1,  0,  0, 0, 1,  0,  0, 1])

vmem = torch.matmul(Q, (s_p-s_n))
# Records
num_spikes = 0
best_maxcuts = -1
# for this intialization, we can set it to 0
curr_cuts = np.sum(np.sum(np.multiply(Q.numpy(), 1-np.outer((s_p-s_n).numpy(), (s_p-s_n).numpy()))))/4
iter = 0
num_bad_flip = 0

best_sol_s_p = torch.zeros_like(ds_p)
best_sol_s_n = torch.zeros_like(ds_n)


# True if emulating distributed system
distributed = 0
print("Current cuts : ", curr_cuts)
while iter < MAX_ITER:
    if distributed:
        # Generate noise threshold for every neuron
        noisethld = 2.5e4*torch.log(2.5*torch.rand_like(vmem)+1e-6)/(thld_max*math.log(1+thld/thld_max))
        spike = 1 if torch.any((noisethld*(s_p-s_n)-vmem)*(s_p-s_n) < 0) else 0
        if spike:
            # Asynchronous firing criteria
            spike_ids = torch.nonzero((noisethld*(s_p-s_n)-vmem)*(s_p-s_n) < 0, as_tuple=False)
            p = spike_ids[torch.randint(0, spike_ids.size(0), (1,)).item()].item()
        pass
    else:
        # Pick random neuron
        p = np.random.randint(0, N)
        # Generate noisy threshold
        noisethld = 2.5e4*math.log(2.5*random.random()+1e-6)/(thld_max*math.log(1+thld/thld_max))
        spike = 1 if (noisethld*(s_p[p]-s_n[p])-vmem[p])*(s_p[p]-s_n[p]) < 0 else 0
    if spike:
        ds_p[p] = s_n[p] > 0
        ds_n[p] = s_p[p] > 0
        # Update Neuron states
        s_p[p] = torch.logical_not(s_p[p])
        s_n[p] = torch.logical_not(s_n[p])
        # Update Neuron Membrane Potential
        vmem += 2*(ds_p[p]-ds_n[p])*Q[p,:]
        # Update best cuts
        d_cuts = (ds_p[p]-ds_n[p])*vmem[p]
        if d_cuts.item() > 0:
            num_bad_flip += 1
        curr_cuts -= d_cuts
        if curr_cuts.item() > best_maxcuts:
            best_maxcuts = curr_cuts.item()
            best_sol_s_p = s_p.clone()
            best_sol_s_n = s_n.clone()

        num_spikes += 1
    if iter > 0 and iter%1e4 == 0:
        # v_tmp = (s_p-s_n).numpy()
        # Q_tmp = Q.numpy()
        # maxcuts  = np.sum(np.sum(np.multiply(Q_tmp, 1-np.outer(v_tmp, v_tmp))))/4
        # if maxcuts > best_maxcuts:
        #     best_maxcuts = maxcuts

        print(f'#spikes:{num_spikes}, best:{best_maxcuts}, bad flip rate:{num_bad_flip/num_spikes}, sol={best_sol_s_p - best_sol_s_n}')
        num_bad_flip  = 0
        num_spikes = 0
    thld += thld_delta
    iter += 1
print(f'#spikes:{num_spikes}, best:{best_maxcuts}, bad flip rate:{num_bad_flip/num_spikes}')