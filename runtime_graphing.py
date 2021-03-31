#!/usr/bin/python3

import sys
import numpy as np
import matplotlib.pyplot as plt

temp = 0
a_pair = (0,0)
runtime_pairs = []
gcc_runtime = []
jit_runtime = []

flag = False
counter = 0
avg = 0
for line in sys.stdin:
        line = float(int(line)/1e6)
        avg += line

        '''
        if flag == True:
                gcc_runtime.append(line)
                runtime_pairs.append((temp, line))
        else:
                temp = line
                jit_runtime.append(line)
        '''

        counter += 1
        if counter % 5 == 0:
            flag = not flag
            avg = avg/5.0

            if flag == False:
                gcc_runtime.append(avg)
            else:
                jit_runtime.append(avg)

# Log-log scaling
x = np.linspace(0, 1, 1000)
plt.plot(x, x, 'r-')
plt.scatter(gcc_runtime, jit_runtime)
plt.gca().set_xscale('log')
plt.gca().set_yscale('log')

# DEBUGGING
#i = 0
#for x,y in zip(gcc_runtime, jit_runtime):
#    label = "{:.2f}".format(i)
#    plt.annotate(label, (x,y), textcoords="offset points", xytext=(0,10), ha='center')
#    i+=1

plt.title('Runtime comparison between GCC & JIT compiler')
plt.xlabel('GCC runtime execution, seconds')
plt.ylabel('JIT runtime execution, seconds')
plt.show()
