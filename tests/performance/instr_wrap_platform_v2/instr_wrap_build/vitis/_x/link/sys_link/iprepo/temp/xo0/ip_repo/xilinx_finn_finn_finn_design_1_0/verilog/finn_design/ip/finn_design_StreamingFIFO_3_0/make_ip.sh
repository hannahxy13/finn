#!/bin/bash 
cd /scratch/hannayan/builds/code_gen_ipgen_StreamingFIFO_3_ei894wkb/project_StreamingFIFO_3/sol1/impl/verilog
vivado -mode batch -source package_ip.tcl
cd /scratch/hannayan/finn_instr_wrap_test/finn/tests/performance/instr_wrap_platform_v2
