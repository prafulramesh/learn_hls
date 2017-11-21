############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project proj_pointer_arith
set_top pointer_arith
add_files pointer_arith.c
add_files -tb result.golden.dat
add_files -tb pointer_arith_test.c
open_solution "solution1"
set_part {xc7k160tfbg484-1}
create_clock -period 4 -name default
source "./proj_pointer_arith/solution1/directives.tcl"
csim_design -compiler gcc
csynth_design
cosim_design -tool xsim
export_design -format ip_catalog
