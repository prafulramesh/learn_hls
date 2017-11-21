#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vkchcp0030/Documents/learn_hls/pointer_arith/pointer_arith/proj_pointer_arith/solution1/.autopilot/db/a.g.bc ${1+"$@"}
