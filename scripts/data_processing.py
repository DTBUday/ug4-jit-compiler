#!/usr/bin/python3
import csv
import os
import sys

csvfile = open('summary.csv', 'w', newline='')
writer = csv.writer(csvfile)
writer.writerow(['benchmark', 'loc', 'gcc_usr', 'gcc_sys', 'gcc_wall', 'gcc_ggc', 'tcc']);
schema = ['usr', 'sys', 'wall', 'ggc']


for line in sys.stdin: 
	[benchmark_name, lines_of_code] = line.split() 

	gcc_report_file = './report/' + benchmark_name + '.gcc.report'
	tcc_report_file = './report/' + benchmark_name + '.tcc.report'

	output = {}
	for label in schema:
		output[label] = 0.0

	f = open(gcc_report_file, "r")
	content = f.read().split('\n')
	for line in content:
		if line.find('TOTAL') != -1:
			data = line.split(':')[1].split()[:-1]
			for label,dat in zip(schema, data):
				output[label] += float(dat)
	f.close()

	writer.writerow([benchmark_name, lines_of_code, output['usr'], output['sys'], output['wall'], output['ggc'], 0])
