#!/usr/bin/python3
import csv, sys

if len(sys.argv) == 2:
    avg = 0
    rawdata = []
    counter = 0
    for line in sys.stdin:
        if counter % 11 < 5:
            line = float(line)/1e6
            avg += line
            rawdata.append(line)
            if counter % 11 == 4:
                rawdata.append(avg/5.0)
                avg = 0
        elif counter % 11 < 10:
            line = float(line)/1e6
            avg += line
            rawdata.append(line)
            if counter % 11 == 9:
                rawdata.append(avg/5.0)
                avg = 0
        else:
            rawdata.append(line.rstrip().replace('_', '\\_'))

        counter += 1

    with open(sys.argv[-1], 'w', newline='') as csvfile:
        fieldnames = ['Benchmark File Name']
        for i in range(1, 6):
            fieldnames.append(f'TCC Runtime {i}')
        fieldnames.append('TCC Average Runtime')
        for i in range(1, 6):
            fieldnames.append(f'GCC Runtime {i}')
        fieldnames.append('GCC Average Runtime')
        writer = csv.writer(csvfile)

        writer.writerow(fieldnames)
        for i in range(0, int(len(rawdata)/13)):
            index = i*13
            data = []
            for offset in range(0, 13):
                if offset - 1 < 0:
                    offset += 13 
                data.append(rawdata[offset+index-1])
            writer.writerow(data)
else:
    print('Please provide CSV file to write')
