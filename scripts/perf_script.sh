#!/usr/bin/bash

mkdir perf_reports

perf record ../build/jit_program ../program/basic.c ~/trash/test.c
perf report > perf_reports/basic.dat

ls ~/AnghaBench | while read line; do
	find ~/AnghaBench/$line -type f | xargs perf record -o perf_reports/$line.data ../build/jit_program 
		# | xargs perf record ../build/jit_program
	if [ $? -eq 0 ]
        then
                echo Done $line
        else
		rm perf_reports/$line.data
                echo Failed $line
        fi
done

if [ $# -ne 0 ]
then
	echo doing extra
fi
