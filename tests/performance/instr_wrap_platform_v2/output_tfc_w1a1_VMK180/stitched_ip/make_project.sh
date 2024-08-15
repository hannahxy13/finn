#!/bin/bash 
cd /scratch/hannayan/builds/vivado_stitch_proj__ip5t25s
vivado -mode batch -source make_project.tcl
cd /scratch/hannayan/finn_instr_wrap_test/finn/tests/performance/instr_wrap_platform_v2
