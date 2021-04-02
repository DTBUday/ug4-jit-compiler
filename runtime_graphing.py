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
gcc_runtime = []
jit_runtime = []

with open(sys.argv[-1]) as csvfile:
    filereader = csv.reader(csvfile, delimiter = ',')
    for row in filereader:
        if temp == 0:
            temp = 1
            continue
        
        name, _,_,_,_,_, tcctime, _,_,_,_,_, gcctime = row
        gcc_runtime.append(gcctime)
        jit_runtime.append(tcctime)

# Log-log scaling
x = np.linspace(0, 5, 1000)
plt.plot(x, x, 'r-')
plt.scatter(gcc_runtime, jit_runtime)
plt.gca().set_xscale('log')
plt.gca().set_yscale('log')

plt.title('Runtime comparison between GCC & JIT compiler')
plt.xlabel('GCC runtime execution, seconds')
plt.ylabel('JIT runtime execution, seconds')
plt.show()
