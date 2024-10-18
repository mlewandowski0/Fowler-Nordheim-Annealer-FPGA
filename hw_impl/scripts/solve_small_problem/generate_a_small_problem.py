import numpy as np
import itertools
import networkx as nx
import matplotlib.pyplot as plt
import os
from generate_utils import *


print(nx.__version__)

np.random.seed(42)  
n_vertices = 12
adj_matrix = np.random.randint(0, 2, size=(n_vertices, n_vertices))

# No self-loops
np.fill_diagonal(adj_matrix, 0) 

 # Make symmetric
adj_matrix = np.triu(adj_matrix) + np.triu(adj_matrix, 1).T  

def max_cut_value(adj_matrix, cut):
    cut_value = 0
    for i in range(len(cut)):
        for j in range(i + 1, len(cut)):
            if adj_matrix[i][j] == 1 and cut[i] != cut[j]:
                cut_value += 1
    return cut_value

# Brute force to find the best cut (maximize the cut value)
n = len(adj_matrix)
all_possible_cuts = list(itertools.product([0, 1], repeat=n))
best_cut = None
best_cut_value = -np.inf

for cut in all_possible_cuts:
    cut_value = max_cut_value(adj_matrix, cut)
    if cut_value > best_cut_value:
        best_cut_value = cut_value
        best_cut = cut

G = nx.from_numpy_array(adj_matrix)
color_map = ['red' if best_cut[i] == 0 else 'blue' for i in range(n_vertices)]

plt.figure(figsize=(16, 8))
plt.subplot(1, 2, 1)
plt.imshow(adj_matrix, cmap="gray")
plt.title("Interaction matrix for the original problem")
plt.xticks(np.arange(n_vertices), np.arange(n_vertices) )
plt.yticks(np.arange(n_vertices), np.arange(n_vertices) )

plt.subplot(1, 2, 2)
nx.draw(G, node_color=color_map, with_labels=True, node_size=500, font_color='white')
plt.title(f"MAX-CUT Solution (Cut Value: {best_cut_value})")
serialize_matrix(adj_matrix, "adj_matrix.mif")
serialize_matrix_distributed(adj_matrix, "adj_matrix_distributed{}.mif", 4)

np.save(os.path.join(".","toy_problem.npy"), adj_matrix)
plt.savefig("problem.png")
plt.show()
