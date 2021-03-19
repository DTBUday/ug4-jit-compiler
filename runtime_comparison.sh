#!/usr/bin/sh

find ~/c-code-katas/ -type f | grep "\.c$" | while read line; do
  ./timer_func "./build/jit_program $line > jit.log"
  if [ $? -eq 0 ]; then 
    gcc $line -lm -w -O3 > gcc.log
    ./timer_func "./a.out > gcc.log"
    echo Done $line
  else
    echo Failed $line
  fi
done

rm gcc.log jit.log

# cat comparison.log | grep real | sed -e 's/.*m//g' | sed -e 's/s$//g'
# cat comparison.log | grep Execution | sed -e 's/.*:\ //g' | sed -e 's/\ (.*//g'
cat comparison.log | grep -v Failed | sed -e 's/Total execution time: //g' | sed -e 's/ (micro sec)//g' | sed -e 's/Done .*\///g' | ./log2csv.py
