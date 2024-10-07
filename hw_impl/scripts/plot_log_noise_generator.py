import os
import matplotlib.pyplot as plt
import numpy as np
import seaborn as sns

# Load data from file
path = os.path.join("..", "hw_impl.sim", "sim_1", "behav", "xsim", "log_noise_generator.txt")

with open(path) as f:
    lines = f.readlines()

# Parse the data to extract 'y' float values
y_values = [float(line) for line in lines]

# Convert to numpy array
y_values = np.array(y_values)

# Create a figure
plt.figure(figsize=(10, 6))

# Plot a histogram and KDE (density plot)
sns.histplot(y_values, bins=50, kde=True, stat="density", color='skyblue', edgecolor='black')

# Add labels and title for clarity
plt.title('Density Plot with Histogram of Simulation Data', fontsize=16)
plt.xlabel('Values', fontsize=14)
plt.ylabel('Density', fontsize=14)

# Display the plot
plt.show()

plt.plot(sorted(np.unique(y_values)))
plt.show()