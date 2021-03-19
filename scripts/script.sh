#!/bin/bash

# Remove temp file
mkdir report
rm report/* temp.data

# Generate the GCC report file
ls ~/AnghaBench | while read line; do
	LOC=$(find ~/AnghaBench/$line -type f -exec wc -l {} + | tail -n1 | sed -e 's/total//g' -e 's/\ //g')

	# Gets the benchmark files -> run GCC/TCC -> compiles timing to a *.{gcc,tcc}.report file -> remove object files
	find ~/AnghaBench/$line -type f | xargs /usr/bin/time -f "real %e" -o report/$line.tcc.report ../build/jit_program
	if [ $? -eq 0 ]
	then
		find ~/AnghaBench/$line -type f | xargs /usr/bin/time -f "real %e" -o report/$line.gcc.report gcc -O0 -c -w
		rm *.o

		# Collect some data
		echo $line $LOC >> temp.data
		echo Done $line
	else
		rm report/$line.tcc.report
		echo Failed $line
	fi
done

# Compile data files to CSV files
python3 data_processing.py < temp.data
