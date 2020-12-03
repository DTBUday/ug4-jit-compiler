#!/usr/bin/bash

mkdir perf_reports

perf record ../build/jit_program ../program/basic.c ~/trash/test.c
perf report > perf_reports/basic.dat

if [ $# -ne 0 ]
then
	echo doing extra
fi
