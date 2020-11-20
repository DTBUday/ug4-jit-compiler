import csv
import matplotlib.pyplot as plt

labels = []
gcc_runtime = []
tcc_runtime = []

with open('summary.csv') as csvfile:
	file = csv.reader(csvfile, delimiter = ',')
	for row in file:
		# 'benchmark', 'loc', 'gcc_usr', 'gcc_sys', 'gcc_wall', 'gcc_ggc', 'tcc'
		benchmark_name, loc, gcc_usr, gcc_sys, gcc_wall, gcc_ggc, tcc = row

		labels.append(benchmark_name)
		gcc_runtime.append(gcc)
		tcc_runtime.append(tcc)

fig, ax = plt.subplots()

ax.scatter(gcc, tcc)
ax.set_xlabel(gcc)
ax.set_ylabel(tcc)
