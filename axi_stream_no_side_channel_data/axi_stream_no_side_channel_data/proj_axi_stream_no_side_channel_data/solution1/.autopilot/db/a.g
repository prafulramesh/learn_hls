#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vkchcp0030/Documents/learn_hls/axi_stream_no_side_channel_data/axi_stream_no_side_channel_data/proj_axi_stream_no_side_channel_data/solution1/.autopilot/db/a.g.bc ${1+"$@"}