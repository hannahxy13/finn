
set config_proj_name project_instrwrap
puts "HLS project: $config_proj_name"
set config_hwsrcdir "/scratch/hannayan/finn_instr_wrap_test/finn/tests/performance/instr_wrap_platform_v2/output_tfc_w1a1_VMK180/instrumentation_wrapper"
puts "HW source dir: $config_hwsrcdir"
set config_proj_part "xcvm1802-vsva2197-2MP-e-S"
set config_bnnlibdir "$::env(FINN_ROOT)/deps/finn-hlslib"
puts "finn-hlslib dir: $config_bnnlibdir"
set config_customhlsdir "$::env(FINN_ROOT)/custom_hls"
puts "custom HLS dir: $config_customhlsdir"
set config_toplevelfxn "instrumentation_wrapper"
set config_clkperiod 3.3

open_project $config_proj_name
add_files $config_hwsrcdir/top_instrumentation_wrapper.cpp -cflags "-std=c++14 -I$config_bnnlibdir -I$config_customhlsdir"

set_top $config_toplevelfxn
open_solution sol1
set_part $config_proj_part


config_export -format xo

create_clock -period $config_clkperiod -name default
csynth_design
export_design -format xo
exit 0
