#!/usr/bin/python3

import sys, csv
import numpy as np
import matplotlib.pyplot as plt

if len(sys.argv) != 2:
    print('Please specify CSV file to read from')
    exit(1)

temp = 0
a_pair = (0,0)
runtime_pairs = []
old_runtime = []
new_runtime = []

with open('runtime_upgrade.csv') as csvfile:
    filereader = csv.reader(csvfile, delimiter = ',')
    for row in filereader:
        if temp == 0:
            temp = 1
            continue
        
        name, _,_,_,_,_, tcctime, oldtcctime = row
        old_runtime.append(float(oldtcctime))
        new_runtime.append(float(tcctime))

# Log-log scaling
x = np.linspace(0, 5, 1000)
plt.plot(x, x, 'r-')
plt.scatter(old_runtime, new_runtime)

plt.title('Runtime comparison between TCC & TCC with optimizations implemented')
plt.xlabel('Old runtime execution, seconds')
plt.ylabel('New runtime execution, seconds')
plt.show()
