import os 
import matplotlib.pyplot as plt 

path = os.path.join("..","hw_impl.sim","sim_1","behav","xsim", "temperature_mapping_tb.txt")

with open(path) as f:
    lines = f.readlines()

    # Parsing the data to extract 'y' float values from each line
    y_values = []
    for line in lines:
        parts = line.split(',')
        y_part = parts[1].strip()  # Get the 'y=...' part
        y_value = float(y_part.split('=')[1])  # Extract and convert to float
        y_values.append(y_value)

plt.stairs(y_values)
plt.show()