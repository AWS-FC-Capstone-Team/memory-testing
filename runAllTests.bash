#!/bin/bash

# Every experiment runs for 30s
# Global memory size = 1000GB (The total size of data to transfer)
# Buffer memory size = 5GB (Size of a memory block for the test)
# Number of threads can increase from 1 to #physical CPU cores

for i in {1..32..1}
do
  echo "Number of threads: $i"
  for k in seq rnd
  do
    for l in read write
    do
      for m in global local
      do
        echo -e "\tAccess mode: $k | Operation mode: $l | Memory scope: $m"
        sysbench memory --memory-total-size=1000G --threads="$i" --memory-block-size=4M --memory-access-mode="$k" --memory-oper="$l" --memory-scope="$m" --time=30  run >> "bareMetalOutputs/results_${i}_${k}_${l}_${m}.txt"
      done
    done
  done
done
