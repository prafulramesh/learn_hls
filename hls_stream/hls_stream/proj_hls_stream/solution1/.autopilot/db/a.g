#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/praful/Documents/learn_hls/hls_stream/hls_stream/proj_hls_stream/solution1/.autopilot/db/a.g.bc ${1+"$@"}
