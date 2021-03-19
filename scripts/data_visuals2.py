#!/usr/bin/python3
import csv
import matplotlib.pyplot as plt

labels = []
gcc_runtime = []
tcc_runtime = []

with open('summary.csv') as csvfile:
    file = csv.reader(csvfile, delimiter = ',')
    for row in file:
        benchmark_name, loc, gcc, tcc = row

        if float(tcc) == 0.0:
            print(f"TCC FAILED: {benchmark_name}")
            continue

        labels.append(benchmark_name)
        gcc_runtime.append(float(gcc))
        tcc_runtime.append(float(tcc))

plt.plot(gcc_runtime, 'r--')
plt.plot(tcc_runtime, 'b.')
plt.show()

plt.scatter(gcc_runtime, tcc_runtime)
plt.show()
