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
		if temp <= 1e6:
			gcc_runtime.append(line)
			runtime_pairs.append((temp, line))
	else:
		temp = line
		if temp <= 1e6:
			jit_runtime.append(line)

	flag = not flag

	if len(runtime_pairs) >= 30:
		break

x = np.linspace(0, 500000, 1000)
plt.plot(x, x, 'r-')
plt.scatter(gcc_runtime, jit_runtime)
plt.show()
