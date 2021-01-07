#!/bin/bash

mkdir profiles

# Generate the report file
ls ~/AnghaBench | while read line; do
	find ~/AnghaBench/$line -type f | xargs ../build/profile_jit
	echo Done $line
	gprof -p -b ../build/profile_jit gmon.out > profiles/$line.prof
done
