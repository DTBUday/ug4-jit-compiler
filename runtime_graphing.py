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
for line in sys.stdin:
	line = int(line)
	if flag == True:
		gcc_runtime.append(line)
		runtime_pairs.append((temp, line))
	else:
		temp = line
		jit_runtime.append(line)

	flag = not flag

x = np.linspace(0, 500000, 1000)
plt.plot(x, x, 'r-')
plt.scatter(gcc_runtime, jit_runtime)
plt.gca().set_xscale('log')
plt.gca().set_yscale('log')

i = 0
for x,y in zip(gcc_runtime, jit_runtime):
    label = "{:.2f}".format(i)
    plt.annotate(label, (x,y), textcoords="offset points", xytext=(0,10), ha='center')
    i+=1

plt.show()
