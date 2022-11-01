#!/bin/bash

stdbuf -o 0 ramsmp -b 1 2>&1 | tee docker/intmark_wr.log
stdbuf -o 0 ramsmp -b 2 2>&1 | tee docker/intmark_rd.log

stdbuf -o 0 ramsmp -b 4 2>&1 | tee docker/floatmark_wr.log
stdbuf -o 0 ramsmp -b 5 2>&1 | tee docker/floatmark_rd.log

stdbuf -o 0 ramsmp -b 3 -l 5 2>&1 | tee docker/intmem.log
stdbuf -o 0 ramsmp -b 6 -l 5 2>&1 | tee docker/floatmem.log

stdbuf -o 0 ramsmp -b 13 2>&1 | tee docker/mmxmark_nt_wr.log
stdbuf -o 0 ramsmp -b 14 2>&1 | tee docker/mmxmark_nt_rd.log

stdbuf -o 0 ramsmp -b 16 2>&1 | tee docker/ssemark_nt_wr.log
stdbuf -o 0 ramsmp -b 17 2>&1 | tee docker/ssemark_nt_rd.log

stdbuf -o 0 ramsmp -b 15 -l 5 2>&1 | tee docker/mmxmem.log
stdbuf -o 0 ramsmp -b 18 -l 5 2>&1 | tee docker/ssemem.log
