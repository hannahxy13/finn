
set TopModule "instrumentation_wrapper"
set ClockPeriod 3.3
set ClockList ap_clk
set HasVivadoClockPeriod 0
set CombLogicFlag 0
set PipelineFlag 1
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 1
set FloatingPointFlag 0
set FftOrFirFlag 0
set NbRWValue 3
set intNbAccess 1
set NewDSPMapping 1
set HasDSPModule 0
set ResetLevelFlag 0
set ResetStyle control
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 1
set ResetRegisterNum 0
set FsmEncStyle onehot
set MaxFanout 0
set RtlPrefix {}
set RtlSubPrefix instrumentation_wrapper_
set ExtraCCFlags {}
set ExtraCLdFlags {}
set SynCheckOptions {}
set PresynOptions {}
set PreprocOptions {}
set SchedOptions {}
set BindOptions {}
set RtlGenOptions {}
set RtlWriterOptions {}
set CbcGenFlag {}
set CasGenFlag {}
set CasMonitorFlag {}
set AutoSimOptions {}
set ExportMCPathFlag 0
set SCTraceFileName mytrace
set SCTraceFileFormat vcd
set SCTraceOption all
set TargetInfo xcvm1802:-vsva2197:-2MP-e-S
set SourceFiles {sc {} c /scratch/hannayan/finn_instr_wrap_test/finn/tests/performance/instr_wrap_platform_v2/output_tfc_w1a1_VMK180/instrumentation_wrapper/top_instrumentation_wrapper.cpp}
set SourceFlags {sc {} c {{-std=c++14 -I/scratch/hannayan/finn_instr_wrap_test/finn/deps/finn-hlslib -I/scratch/hannayan/finn_instr_wrap_test/finn/custom_hls}}}
set DirectiveFile /scratch/hannayan/finn_instr_wrap_test/finn/tests/performance/instr_wrap_platform_v2/output_tfc_w1a1_VMK180/instrumentation_wrapper/project_instrwrap/sol1/sol1.directive
set TBFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {bc "" c "" sc "" cas "" vhdl "" verilog ""}
set TBInstNames {bc "" c "" sc "" cas "" vhdl "" verilog ""}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {}
set AppFile ../hls.app
set ApsFile sol1.aps
set AvePath ../..
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 1
set PlatformFiles {{DefaultPlatform {xilinx/versal/versal}}}
set HPFPO 0
