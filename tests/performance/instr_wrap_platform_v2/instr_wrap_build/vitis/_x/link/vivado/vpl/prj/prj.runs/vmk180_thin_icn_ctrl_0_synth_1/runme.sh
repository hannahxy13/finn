#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/proj/xbuilds/SWIP/2022.2_1014_8888/installs/lin64/Vitis/2022.2/bin:/proj/xbuilds/SWIP/2022.2_1014_8888/installs/lin64/Vitis/2022.2/bin:/proj/xbuilds/SWIP/2022.2_1014_8888/installs/lin64/Vitis/2022.2/bin:/proj/xbuilds/SWIP/2022.2_1014_8888/installs/lin64/Vitis/2022.2/bin:/proj/xbuilds/SWIP/2022.2_1014_8888/installs/lin64/Vivado/2022.2/bin
else
  PATH=/proj/xbuilds/SWIP/2022.2_1014_8888/installs/lin64/Vitis/2022.2/bin:/proj/xbuilds/SWIP/2022.2_1014_8888/installs/lin64/Vitis/2022.2/bin:/proj/xbuilds/SWIP/2022.2_1014_8888/installs/lin64/Vitis/2022.2/bin:/proj/xbuilds/SWIP/2022.2_1014_8888/installs/lin64/Vitis/2022.2/bin:/proj/xbuilds/SWIP/2022.2_1014_8888/installs/lin64/Vivado/2022.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/scratch/hannayan/finn_instr_wrap_test/finn/tests/performance/instr_wrap_platform_v2/instr_wrap_build/vitis/_x/link/vivado/vpl/prj/prj.runs/vmk180_thin_icn_ctrl_0_synth_1'
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

EAStep vivado -log vmk180_thin_icn_ctrl_0.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source vmk180_thin_icn_ctrl_0.tcl
