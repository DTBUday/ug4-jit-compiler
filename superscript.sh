#!/usr/bin/sh

if [ $# -ne 1 ]; then
	echo "Usage [1 (create logs) | 2 (log compilation) | 3 (graphing methods)]"
	exit
fi

if [ $1 -eq 1 ]; then
	# Set TCC version
	cd ~/tinycc
	git checkout f9c3b61
	make && sudo make install

	# Running the compilation comparison
	cd ~/ug4-jit-compiler/scripts
	nohup ./script.sh &> experiment.log &

	# Running the runtime comparison
	cd ~/ug4-jit-compiler
	./runtime_comparison.sh 0 > comparisonNoOpt.log

	cd ~/ug4-jit-compiler
	# Running the runtime comparison
	./runtime_comparison.sh 3 > comparison.log

	# Set TCC version
	cd ~/tinycc
	git checkout dev-oods
	make && sudo make install

	cd ~/ug4-jit-compiler
	# Running the runtime comparison
	./runtime_comparison.sh 3 > comparisonUpgrade.log
fi

if [ $1 -eq 2 ]; then
	# Compile data logs to CSV file
	cd ~/ug4-jit-compiler/scripts
	python3 data_processing.py < temp.data

	cd ~/ug4-jit-compiler
	cat comparisonNoOpt.log | grep -v Failed | sed -e 's/Total execution time: //g' | sed -e 's/ (micro sec)//g' | sed -e 's/Done .*\///g' | ./runtime_data_processing.py runtime_comparison_no_opt.csv
	cat comparison.log | grep -v Failed | sed -e 's/Total execution time: //g' | sed -e 's/ (micro sec)//g' | sed -e 's/Done .*\///g' | ./runtime_data_processing.py runtime_comparison.csv
	cat comparisonUpgrade.log | grep -v Failed | sed -e 's/Total execution time: //g' | sed -e 's/ (micro sec)//g' | sed -e 's/Done .*\///g' | ./runtime_upgrade_processing.py runtime_upgrade.csv 
fi

if [ $1 -eq 3 ]; then
	# Graphing the results
	cd scripts
	py compilation_graphing.py
	cd ..

	py runtime_graphing.py runtime_comparison.csv	
	py runtime_graphing.py runtime_comparison_no_opt.csv
	py runtime_graphing_upgrade.py runtime_upgrade.csv
fi
