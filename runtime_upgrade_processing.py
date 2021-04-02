#!/usr/bin/python3
import csv, sys

if len(sys.argv) == 2:
    avg = 0
    counter = 0
    benchmark = []
    upgradetime = []
    for line in sys.stdin:
        if counter % 11 < 5:
            line = float(line)/1e6
            avg += line
            upgradetime.append(line)
            if counter % 11 == 4:
                upgradetime.append(avg/5.0)
                avg = 0
        elif counter % 11 < 10:
            counter += 1
            continue
        else:
            name = line.rstrip().replace('_', '\\_')
            benchmark.append(name)
        counter += 1

    oldtime = {}
    with open('runtime_comparison.csv') as csvfile:
        filereader = csv.reader(csvfile, delimiter = ',')
        for row in filereader:
            name, _,_,_,_,_, tcctime, _,_,_,_,_,_ = row
            oldtime[name] = tcctime

    with open(sys.argv[-1], 'w', newline='') as csvfile:
        fieldnames = ['Benchmark File Name']
        for i in range(1, 6):
            fieldnames.append(f'TCC Runtime {i}')
        fieldnames.append('TCC Average Runtime')
        fieldnames.append('Old TCC Average Runtime')
        writer = csv.writer(csvfile)

        writer.writerow(fieldnames)
        for i in range(0, len(benchmark)):
            index = i*13
            data = [benchmark[i]]
            for offset in range(0, 6):
                data.append(upgradetime[6*i+offset])
            data.append(oldtime[benchmark[i]])
            writer.writerow(data)
else:
    print('Please provide CSV file to write')
