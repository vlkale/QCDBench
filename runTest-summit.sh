#!/bin/sh                                                                                                                                                                         

make clean;
make;
jsrun --nrs 1 --tasks_per_rs 1 --cpu_per_rs 42 --gpu_per_rs 1 --rs_per_host 1 --latency_priority CPU-CPU --launch_distribution packed --bind rs ./bench
