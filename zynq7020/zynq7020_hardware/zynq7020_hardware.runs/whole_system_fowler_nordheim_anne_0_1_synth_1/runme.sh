#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/home/mlewand/tools/Vitis/2024.2/bin:/home/mlewand/tools/Vivado/2024.2/ids_lite/ISE/bin/lin64:/home/mlewand/tools/Vivado/2024.2/bin
else
  PATH=/home/mlewand/tools/Vitis/2024.2/bin:/home/mlewand/tools/Vivado/2024.2/ids_lite/ISE/bin/lin64:/home/mlewand/tools/Vivado/2024.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/mlewand/Desktop/PROJS/Fowler-Nordheim-Annealer-FPGA/zynq7020/zynq7020_hardware/zynq7020_hardware.runs/whole_system_fowler_nordheim_anne_0_1_synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log whole_system_fowler_nordheim_anne_0_1.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source whole_system_fowler_nordheim_anne_0_1.tcl
