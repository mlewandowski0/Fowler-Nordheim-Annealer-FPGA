import os 
import numpy as np
import matplotlib.pyplot as plt
import itertools
import numpy as np

Q = np.array([[1,0,1,1,1,0,1,0,0,0],
              [0,1,0,1,0,0,0,0,1,0],
              [1,0,1,1,1,1,1,1,0,0],
              [1,1,1,1,0,0,1,0,1,1],
              [1,0,1,0,1,0,1,1,0,1],
              [0,0,1,0,0,1,0,0,1,1],
              [1,0,1,1,1,0,1,0,1,0],
              [0,0,1,0,1,0,0,1,0,1],
              [0,1,0,1,0,1,1,0,1,1],
              [0,0,0,1,1,1,0,1,1,1]])


Q = np.ones_like(Q) - Q

plt.imshow(Q, cmap="gray")
plt.savefig("toy.png")

np.save(os.path.join("toy.npy"), Q)

# Define the set of possible values for each element
elements = [-1, 1]

# Generate all combinations of 10 elements using itertools.product
H_min = float("inf")
argmin = []

for comb in itertools.product(elements, repeat=10):
    comb = np.array(comb)
    H_energy = 0.5 * comb.T @ Q @ comb

    if H_min > H_energy:
        H_min = H_energy
        argmin = comb


print(f"energy_minima={H_min} for {argmin}")
