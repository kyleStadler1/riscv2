#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2023.1 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Tue Jan 14 12:24:57 +0000 2025
# SW Build 3865809 on Sun May  7 15:04:56 MDT 2023
#
# IP Build 3864474 on Sun May  7 20:36:21 MDT 2023
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# simulate design
echo "xsim simpleRisc_wrapper_behav -key {Behavioral:sim_1:Functional:simpleRisc_wrapper} -tclbatch simpleRisc_wrapper.tcl -protoinst "protoinst_files/simpleRisc.protoinst" -log simulate.log"
xsim simpleRisc_wrapper_behav -key {Behavioral:sim_1:Functional:simpleRisc_wrapper} -tclbatch simpleRisc_wrapper.tcl -protoinst "protoinst_files/simpleRisc.protoinst" -log simulate.log

