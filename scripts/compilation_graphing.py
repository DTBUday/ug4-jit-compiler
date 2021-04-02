#!/usr/bin/python3
import csv
import matplotlib.pyplot as plt

labels = []
gcc_runtime = []
tcc_runtime = []

with open('summary.csv') as csvfile:
    file = csv.reader(csvfile, delimiter = ',')
    for row in file:
        benchmark_name, gcc, tcc = row

        if float(tcc) == 0.0:
            print(f"TCC FAILED: {benchmark_name}")
            continue

        labels.append(benchmark_name)
        gcc_runtime.append(float(gcc))
        tcc_runtime.append(float(tcc))

plt.title('Compilation time comparison between GCC & TCC')
plt.scatter(gcc_runtime, tcc_runtime)
plt.xlabel('GCC compilation time, seconds')
plt.ylabel('TCC compilation time, seconds')
plt.show()
