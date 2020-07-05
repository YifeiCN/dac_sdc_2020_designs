############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project HLS
set_top SkyNet
add_files ./src/SkyNet.cpp
add_files ./src/SkyNet.h
add_files ./src/transform.cpp
add_files ./src/utils.cpp
add_files -tb ./src/main.cpp
open_solution "solution1"
set_part {xczu3eg-sbva484-1-e} -tool vivado
create_clock -period 3 -name default
config_sdx -target sds
config_interface -m_axi_addr64
config_rtl -reset_level low
config_rtl -prefix a0_
#csim_design -O
csynth_design
export_design -format ip_catalog
