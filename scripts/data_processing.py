#!/usr/bin/python3
import csv
import sys

csvfile = open('summary.csv', 'w', newline='')
writer = csv.writer(csvfile)

for line in sys.stdin: 
        benchmark_name = line.split()[0] 

        gcc_report_file = './report/' + benchmark_name + '.gcc.report'
        tcc_report_file = './report/' + benchmark_name + '.tcc.report'

        # Reading GCC file
        gcctiming = 0.0
        f = open(gcc_report_file, "r")
        content = f.read().split('\n')
        for line in content:
            temp = line.split(' ')
            if temp[0] == 'real':
                gcctiming = float(temp[-1])
        f.close()

        # Reading TCC file
        tcctiming = 0.0
        f = open(tcc_report_file, "r")
        content = f.read().split('\n')
        for line in content:
            temp = line.split(' ')
            if temp[0] == 'real':
                tcctiming = float(temp[-1])
        f.close()

        writer.writerow([benchmark_name, gcctiming, tcctiming])
