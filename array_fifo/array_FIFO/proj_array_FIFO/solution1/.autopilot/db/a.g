#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vkchcp0030/Documents/learn_hls/array_fifo/array_FIFO/proj_array_FIFO/solution1/.autopilot/db/a.g.bc ${1+"$@"}
