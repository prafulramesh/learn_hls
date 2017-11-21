#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vkchcp0030/Documents/learn_hls/apint_arith/apint_arith/proj_apint_arith/solution1/.autopilot/db/a.g.bc ${1+"$@"}
