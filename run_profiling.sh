#!/bin/bash

cd scripts
nohup ./instrumentation.sh &> instrumentation.log &
nohup ./perf_script.sh &> perf_script.log &
