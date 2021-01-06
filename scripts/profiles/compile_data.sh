#!/usr/bin/bash

cat *.prof | grep '.*\..*\..*\..*' > profiled_data_compile.prof.dat
./simplify_data.py < profiled_data_compile.prof.dat
