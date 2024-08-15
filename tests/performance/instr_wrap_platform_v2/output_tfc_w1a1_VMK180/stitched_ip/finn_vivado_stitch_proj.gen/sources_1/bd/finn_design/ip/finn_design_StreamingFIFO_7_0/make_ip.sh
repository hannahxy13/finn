#!/bin/bash 
cd /scratch/hannayan/builds/code_gen_ipgen_StreamingFIFO_7_c7_lwaw_/project_StreamingFIFO_7/sol1/impl/verilog
vivado -mode batch -source package_ip.tcl
cd /scratch/hannayan/finn_instr_wrap_test/finn/tests/performance/instr_wrap_platform_v2
