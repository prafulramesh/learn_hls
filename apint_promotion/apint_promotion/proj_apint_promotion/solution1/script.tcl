############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project proj_apint_promotion
set_top apint_promotion
add_files apint_promotion.c
add_files -tb result.golden.dat
add_files -tb apint_promotion_test.c
open_solution "solution1"
set_part {xc7k160tfbg484-1}
create_clock -period 4 -name default
config_interface -expose_global
#source "./proj_apint_promotion/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
