#!/usr/bin/sh


if [ $# -ne 1 ]; then
	echo "Usage ./runtime_comparison.sh [0|3]"
	exit
fi

rm gcc.log jit.log
find ~/c-code-katas/ -type f | grep "\.c$" | while read line; do
  tcc $line -lm -o a.out >> jit.log
  if [ $? -ne 0 ]; then
	  echo Failed $line
	  continue
  fi
  
  ./timer_func "./a.out >> jit.log"
  if [ $? -ne 0 ]; then
	  echo Failed $line
	  continue
  fi
  ./timer_func "./a.out >> jit.log"
  ./timer_func "./a.out >> jit.log"
  ./timer_func "./a.out >> jit.log"
  ./timer_func "./a.out >> jit.log"
  if [ $? -eq 0 ]; then 
    gcc $line -lm -w -O$1 >> gcc.log
    ./timer_func "./a.out >> gcc.log"
    ./timer_func "./a.out >> gcc.log"
    ./timer_func "./a.out >> gcc.log"
    ./timer_func "./a.out >> gcc.log"
    ./timer_func "./a.out >> gcc.log"
    echo Done $line
  else
    echo Failed $line
  fi
done


# cat comparison.log | grep real | sed -e 's/.*m//g' | sed -e 's/s$//g'
# cat comparison.log | grep Execution | sed -e 's/.*:\ //g' | sed -e 's/\ (.*//g'
# cat comparison.log | grep -v Failed | sed -e 's/Total execution time: //g' | sed -e 's/ (micro sec)//g' | sed -e 's/Done .*\///g' | ./log2csv.py
