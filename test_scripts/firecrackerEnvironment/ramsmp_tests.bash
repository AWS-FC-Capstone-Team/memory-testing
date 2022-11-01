#!/bin/bash

stdbuf -o 0 taskset -c 0-1 ramsmp -b 1 2>&1 | tee firecracker/intmark_wr.log
stdbuf -o 0 taskset -c 0-1 ramsmp -b 2 2>&1 | tee firecracker/intmark_rd.log

stdbuf -o 0 taskset -c 0-1 ramsmp -b 4 2>&1 | tee firecracker/floatmark_wr.log
stdbuf -o 0 taskset -c 0-1 ramsmp -b 5 2>&1 | tee firecracker/floatmark_rd.log

stdbuf -o 0 taskset -c 0-1 ramsmp -b 3 -l 5 2>&1 | tee firecracker/intmem.log
stdbuf -o 0 taskset -c 0-1 ramsmp -b 6 -l 5 2>&1 | tee firecracker/floatmem.log

stdbuf -o 0 taskset -c 0-1 ramsmp -b 13 2>&1 | tee firecracker/mmxmark_nt_wr.log
stdbuf -o 0 taskset -c 0-1 ramsmp -b 14 2>&1 | tee firecracker/mmxmark_nt_rd.log

stdbuf -o 0 taskset -c 0-1 ramsmp -b 16 2>&1 | tee firecracker/ssemark_nt_wr.log
stdbuf -o 0 taskset -c 0-1 ramsmp -b 17 2>&1 | tee firecracker/ssemark_nt_rd.log

stdbuf -o 0 taskset -c 0-1 ramsmp -b 15 -l 5 2>&1 | tee firecracker/mmxmem.log
stdbuf -o 0 taskset -c 0-1 ramsmp -b 18 -l 5 2>&1 | tee firecracker/ssemem.log
