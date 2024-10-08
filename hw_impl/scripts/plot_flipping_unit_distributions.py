import numpy as np
import seaborn as sns 
import matplotlib.pyplot as plt
import os 
from ipywidgets import interact, IntSlider
import ipywidgets as widgets
from collections import defaultdict
from matplotlib.widgets import Slider

# Load the data
path = os.path.join("..","hw_impl.sim","sim_1","behav","xsim", "FUN_distribution.txt")
d = defaultdict(list)

with open(path,"r") as f:
    data = f.readlines()
    
    for line in data:
        l = line.strip()
        
        els = l.split(",")

        if len(els) != 2:
            print("Skipping line: ", l)
            continue
        
        try:
            it, val = int(els[0]), int(els[1])
            d[it].append(val)


        except Exception as e:
            print("Skipping line: ", l)
            continue



data = []
for i in range(len(d.keys())):
    data.append(d[i])

M = float("-inf")
m = float("inf")

for row in data:
    for el in row:
        m = min(m, el)
        M = max(M, el)

# Initial time step
time_step = 0

# Create the initial plot
fig, ax = plt.subplots()
plt.subplots_adjust(bottom=0.25)  # Make space for the slider
# Plot the histogram for the initial time step
hist_data = data[time_step]
n, bins, patches = ax.hist(hist_data, bins=30, color='skyblue', edgecolor='black', alpha=0.7)
ax.set_title(f'Distribution at Time Step {time_step}', fontsize=16)
ax.set_xlabel('Value', fontsize=14)
ax.set_ylabel('Frequency', fontsize=14)
ax.grid(True)
ax.set_xlim(m, M)

# Create the slider axis and the Slider
ax_time = plt.axes([0.25, 0.1, 0.65, 0.03])  # [left, bottom, width, height]
time_slider = Slider(
    ax=ax_time,
    label='Time Step',
    valmin=0,
    valmax=len(data) - 1,
    valinit=time_step,
    valfmt='%0.0f',
    valstep=1  # Ensures the slider moves in integer steps
)
# Update function to redraw the histogram when the slider is moved
def update(val):
    current_time_step = int(time_slider.val)
    ax.clear()
    hist_data = data[current_time_step]
    ax.hist(hist_data, bins=30, color='skyblue', edgecolor='black', alpha=0.7)
    ax.set_title(f'Distribution at Time Step {current_time_step}', fontsize=16)
    ax.set_xlabel('Value', fontsize=14)
    ax.set_ylabel('Frequency', fontsize=14)
    ax.grid(True)
    ax.set_xlim(m, M)

    fig.canvas.draw_idle()
# Connect the update function to the slider
time_slider.on_changed(update)
# Display the plot
plt.show()