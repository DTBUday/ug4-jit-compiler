#!/usr/bin/python3
import csv, sys

rawdata = []
for line in sys.stdin:
    rawdata.append(line.rstrip())

with open('runtime_comparison.csv', 'w', newline='') as csvfile:
    fieldnames = ['file', 'tcc_time', 'gcc_time']
    writer = csv.DictWriter(csvfile, fieldnames=fieldnames)

    writer.writeheader()
    for i in range(0, int(len(rawdata)/3)):
        index = i*3
        writer.writerow({'file': rawdata[index+2], 'tcc_time': rawdata[index+0], 'gcc_time': rawdata[index+1]})
