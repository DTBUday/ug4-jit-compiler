#!/bin/sh

find ~/c-code-katas/ -type f | grep "\.c$" | while read line; do
  ./build/jit_program $line > jit.log
  if [ $? -eq 0 ]; then 
    gcc $line -lm -w > gcc.log
    time ./a.out > a.log
    echo Done $line
  else
    echo Failed $line
  fi
done 
