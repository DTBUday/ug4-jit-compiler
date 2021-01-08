#!/usr/bin/sh

find ~/c-code-katas/ -type f | grep "\.c$" | while read line; do
  ./build/jit_program $line > jit.log
  if [ $? -eq 0 ]; then 
    gcc $line -lm -w -O3 > gcc.log
    time ./a.out > a.log
    echo Done $line
  else
    echo Failed $line
  fi
done 

# cat comparison.log | grep real | sed -e 's/.*m//g' | sed -e 's/s$//g'
# cat comparison.log | grep Execution | sed -e 's/.*:\ //g' | sed -e 's/\ (.*//g'
