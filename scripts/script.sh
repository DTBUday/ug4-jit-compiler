#!/bin/bash

# Remove temp file
rm report/* temp.data

# Generate the GCC report file
ls ~/AnghaBench | while read line; do
	LOC=$(find ~/AnghaBench/$line -type f -exec wc -l {} + | tail -n1 | sed -e 's/total//g' -e 's/\ //g')

	# Gets the benchmark files -> run GCC/TCC -> compiles timing to a *.{gcc,tcc}.report file -> remove object files
	find ~/AnghaBench/$line -type f | xargs gcc -ftime-report -c -w &>> report/$line.gcc.report && mv *.o trash 
	find ~/AnghaBench/$line -type f | xargs ../build/jit_program > report/$line.tcc.report

	# Collect some data
	echo $line $LOC >> temp.data
done

# Compile data files to CSV files
python3 data_processing.py < temp.data
