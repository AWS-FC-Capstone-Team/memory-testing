#!/bin/bash

stdbuf -o 0 ramsmp -b 1 2>&1 | tee baremetal/intmark_wr.log
stdbuf -o 0 ramsmp -b 2 2>&1 | tee baremetal/intmark_rd.log

stdbuf -o 0 ramsmp -b 4 2>&1 | tee baremetal/floatmark_wr.log
stdbuf -o 0 ramsmp -b 5 2>&1 | tee baremetal/floatmark_rd.log

stdbuf -o 0 ramsmp -b 3 -l 5 2>&1 | tee baremetal/intmem.log
stdbuf -o 0 ramsmp -b 6 -l 5 2>&1 | tee baremetal/floatmem.log

stdbuf -o 0 ramsmp -b 13 2>&1 | tee baremetal/mmxmark_nt_wr.log
stdbuf -o 0 ramsmp -b 14 2>&1 | tee baremetal/mmxmark_nt_rd.log

stdbuf -o 0 ramsmp -b 16 2>&1 | tee baremetal/ssemark_nt_wr.log
stdbuf -o 0 ramsmp -b 17 2>&1 | tee baremetal/ssemark_nt_rd.log

stdbuf -o 0 ramsmp -b 15 -l 5 2>&1 | tee baremetal/mmxmem.log
stdbuf -o 0 ramsmp -b 18 -l 5 2>&1 | tee baremetal/ssemem.log
