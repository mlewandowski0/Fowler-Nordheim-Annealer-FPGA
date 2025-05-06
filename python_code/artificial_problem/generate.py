import networkx as nx 
import numpy as np
import matplotlib.pyplot as plt
import glob 
import os

SIZE_OF_PROBLEM = 8
AVG_CONNECTIVITY = 0.5
seed = 42
UNITS = 2

def save_to_file(partition, i):
    N = partition.shape[0]
    M = partition.shape[1]
    A = N // M
    
    filename = f"adj_matrix_N{N}_A{A}_distributed{i}.mif" 
    with open(filename, "w") as f:
        for i in range(N):
            line = ""
            for j in range(M):
                line += f"{bin(partition[i][j])[2:]}"
            
            f.write(line[::-1])
            f.write("\n")
    
    return filename        
    

def partition_graph(adjacency_matrix, units):
    N = adjacency_matrix.shape[0]    
    neurons_per_unit = N // units

    for i in range(units):
        partition = adjacency_matrix[:, i * neurons_per_unit:(i + 1) * neurons_per_unit]
        save_to_file(partition=partition, i = i)
        print(f"Partition {i} saved to file.")
    

def compute_value_of_assignment(adjacent_matrix, assignment):
    n = adjacent_matrix.shape[0]
    sol = 0
    
    for i in range(0, n):
        for j in range(i + 1, n):
            if adjacent_matrix[i][j] == 1 and assignment[i] != assignment[j]:
                sol += 1
                
    return sol 

def brute_force2(adjacent_matrix): 
    
    PROBLEM_SIZE = adjacent_matrix.shape[0]    
    best = 0
    best_sol = None

    for i in range(0, 2**adjacent_matrix.shape[0]): 
        assignment = [1 if el == '1' else 0 for el in bin(i + 256)[3:]]

        curr_cut = compute_value_of_assignment(adjacent_matrix=adjacent_matrix, assignment=assignment)
        if curr_cut > best:
            best = curr_cut
            best_sol = assignment
    
    return best, best_sol            



def brute_force(adjacent_matrix):
    PROBLEM_SIZE = adjacent_matrix.shape[0]
    best = 0
    best_sol = None
    
    for i in range(0, 2**PROBLEM_SIZE):
        val = [1 if el == '1' else 0 for el in bin(i+ (2**PROBLEM_SIZE))[3:]]
        
        val_np = np.array(val).reshape(-1,1)        
        cut = ((1 - val_np).T @ (adjacent_matrix @ val_np))[0,0]

        if cut > best:
            best = cut
            best_sol = val_np
    
    return best, best_sol                   

def serialize_membranes(membrane_data):
    N = membrane_data.shape[0]

    with open(f"membrane_data_N{N}.mif", "w") as f:
        for el in membrane_data:    
            f.write(f"{hex(el)[2:]}\n")

    
for file in glob.glob("./*png"):
    os.remove(file)

for file in glob.glob("./*npy"):
    os.remove(file)

for file in glob.glob("./*mif"):
    os.remove(file)

for file in glob.glob("./*txt"):
    os.remove(file)


if seed == -1:
    seed = np.random.randint(0, 10000)
    
np.random.seed(seed)

g = nx.erdos_renyi_graph(SIZE_OF_PROBLEM, AVG_CONNECTIVITY, seed=seed)


adj_matrix = np.zeros((SIZE_OF_PROBLEM, SIZE_OF_PROBLEM), dtype=int)

for a,b in g.edges():
    adj_matrix[a][b] = 1
    adj_matrix[b][a] = 1
    
        
plt.imshow(adj_matrix, cmap='hot', interpolation='nearest')
plt.savefig(f"artificial_problem_seed={seed}_p={AVG_CONNECTIVITY}.png")
plt.close()

pos = nx.spring_layout(g, seed=seed)  # positions for all nodes
nx.draw(g, pos, node_size=700, with_labels=True)
plt.savefig(f"artificial_problem_graph_seed={seed}_p={AVG_CONNECTIVITY}.png")


# Neuron model structs
ds_p = np.zeros((SIZE_OF_PROBLEM,))
ds_n = np.zeros_like(ds_p)
s_p = np.ones_like(ds_p, dtype=int)
s_n = np.zeros_like(ds_p, dtype=int)
vmem = np.matmul(adj_matrix, (s_p-s_n))
partition_graph(adj_matrix, UNITS)
serialize_membranes(vmem)

print(adj_matrix)
print(vmem)
np.save(f"adjacency_matrix_seed={seed}_p={AVG_CONNECTIVITY}.npy", adj_matrix)
np.save(f"vmem_seed={seed}_p={AVG_CONNECTIVITY}.npy", vmem)

# save the config files for the neuron model

val, sol = brute_force2(adj_matrix)
print(f"Best cut: {val}")
print(f"Best assignment: {sol}")

with open(f"best_cut_N{SIZE_OF_PROBLEM}.mif", "w") as f:
    f.write(hex(val)[2:])

with open(f"best_assignment_N{SIZE_OF_PROBLEM}.mif", "w") as f:
    for el in sol:
        f.write(f"{hex(el)[2:]}\n")

