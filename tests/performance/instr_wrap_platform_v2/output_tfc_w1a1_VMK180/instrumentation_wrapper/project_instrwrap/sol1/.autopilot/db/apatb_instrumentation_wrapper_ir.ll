; ModuleID = '/scratch/hannayan/finn_instr_wrap_test/finn/tests/performance/instr_wrap_platform_v2/output_tfc_w1a1_VMK180/instrumentation_wrapper/project_instrwrap/sol1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<ap_uint<392>, 0>" = type { %"struct.ap_uint<392>" }
%"struct.ap_uint<392>" = type { %"struct.ap_int_base<392, false>" }
%"struct.ap_int_base<392, false>" = type { %"struct.ssdm_int<392, false>" }
%"struct.ssdm_int<392, false>" = type { i392 }
%"class.hls::stream<ap_uint<8>, 0>" = type { %"struct.ap_uint<8>" }
%"struct.ap_uint<8>" = type { %"struct.ap_int_base<8, false>" }
%"struct.ap_int_base<8, false>" = type { %"struct.ssdm_int<8, false>" }
%"struct.ssdm_int<8, false>" = type { i8 }
%"struct.ap_uint<32>" = type { %"struct.ap_int_base<32, false>" }
%"struct.ap_int_base<32, false>" = type { %"struct.ssdm_int<32, false>" }
%"struct.ssdm_int<32, false>" = type { i32 }

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_instrumentation_wrapper_ir(%"class.hls::stream<ap_uint<392>, 0>"* noalias nocapture nonnull dereferenceable(64) %finnix, %"class.hls::stream<ap_uint<8>, 0>"* noalias nocapture nonnull dereferenceable(1) %finnox, %"struct.ap_uint<32>"* nocapture readonly %cfg, %"struct.ap_uint<32>"* noalias nonnull dereferenceable(4) %status, %"struct.ap_uint<32>"* noalias nocapture nonnull dereferenceable(4) %latency, %"struct.ap_uint<32>"* noalias nocapture nonnull dereferenceable(4) %interval, %"struct.ap_uint<32>"* noalias nocapture nonnull dereferenceable(4) %checksum) local_unnamed_addr #1 {
entry:
  %finnix_copy = alloca %"class.hls::stream<ap_uint<392>, 0>", align 512
  call void @llvm.sideeffect() #8 [ "stream_interface"(%"class.hls::stream<ap_uint<392>, 0>"* %finnix_copy, i32 0) ]
  %finnox_copy = alloca %"class.hls::stream<ap_uint<8>, 0>", align 512
  call void @llvm.sideeffect() #9 [ "stream_interface"(%"class.hls::stream<ap_uint<8>, 0>"* %finnox_copy, i32 0) ]
  %status_copy = alloca i32, align 512
  %latency_copy = alloca i32, align 512
  %interval_copy = alloca i32, align 512
  %checksum_copy = alloca i32, align 512
  call fastcc void @copy_in(%"class.hls::stream<ap_uint<392>, 0>"* nonnull %finnix, %"class.hls::stream<ap_uint<392>, 0>"* nonnull align 512 %finnix_copy, %"class.hls::stream<ap_uint<8>, 0>"* nonnull %finnox, %"class.hls::stream<ap_uint<8>, 0>"* nonnull align 512 %finnox_copy, %"struct.ap_uint<32>"* nonnull %status, i32* nonnull align 512 %status_copy, %"struct.ap_uint<32>"* nonnull %latency, i32* nonnull align 512 %latency_copy, %"struct.ap_uint<32>"* nonnull %interval, i32* nonnull align 512 %interval_copy, %"struct.ap_uint<32>"* nonnull %checksum, i32* nonnull align 512 %checksum_copy)
  call void @apatb_instrumentation_wrapper_hw(%"class.hls::stream<ap_uint<392>, 0>"* %finnix_copy, %"class.hls::stream<ap_uint<8>, 0>"* %finnox_copy, %"struct.ap_uint<32>"* %cfg, i32* %status_copy, i32* %latency_copy, i32* %interval_copy, i32* %checksum_copy)
  call void @copy_back(%"class.hls::stream<ap_uint<392>, 0>"* %finnix, %"class.hls::stream<ap_uint<392>, 0>"* %finnix_copy, %"class.hls::stream<ap_uint<8>, 0>"* %finnox, %"class.hls::stream<ap_uint<8>, 0>"* %finnox_copy, %"struct.ap_uint<32>"* %status, i32* %status_copy, %"struct.ap_uint<32>"* %latency, i32* %latency_copy, %"struct.ap_uint<32>"* %interval, i32* %interval_copy, %"struct.ap_uint<32>"* %checksum, i32* %checksum_copy)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in(%"class.hls::stream<ap_uint<392>, 0>"* noalias "unpacked"="0", %"class.hls::stream<ap_uint<392>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "unpacked"="1", %"class.hls::stream<ap_uint<8>, 0>"* noalias "unpacked"="2", %"class.hls::stream<ap_uint<8>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "unpacked"="3", %"struct.ap_uint<32>"* noalias readonly "unpacked"="4", i32* noalias nocapture align 512 "unpacked"="5.0.0.0", %"struct.ap_uint<32>"* noalias readonly "unpacked"="6", i32* noalias nocapture align 512 "unpacked"="7.0.0.0", %"struct.ap_uint<32>"* noalias readonly "unpacked"="8", i32* noalias nocapture align 512 "unpacked"="9.0.0.0", %"struct.ap_uint<32>"* noalias readonly "unpacked"="10", i32* noalias nocapture align 512 "unpacked"="11.0.0.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<392>, 0>"(%"class.hls::stream<ap_uint<392>, 0>"* align 512 %1, %"class.hls::stream<ap_uint<392>, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<8>, 0>"(%"class.hls::stream<ap_uint<8>, 0>"* align 512 %3, %"class.hls::stream<ap_uint<8>, 0>"* %2)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>.46.50.76.88"(i32* align 512 %5, %"struct.ap_uint<32>"* %4)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>.46.50.76.88"(i32* align 512 %7, %"struct.ap_uint<32>"* %6)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>.46.50.76.88"(i32* align 512 %9, %"struct.ap_uint<32>"* %8)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>.46.50.76.88"(i32* align 512 %11, %"struct.ap_uint<32>"* %10)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<392>, 0>"(%"class.hls::stream<ap_uint<392>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<392>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq %"class.hls::stream<ap_uint<392>, 0>"* %0, null
  %3 = icmp eq %"class.hls::stream<ap_uint<392>, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<392>, 0>"(%"class.hls::stream<ap_uint<392>, 0>"* nonnull align 512 %0, %"class.hls::stream<ap_uint<392>, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<392>, 0>"(%"class.hls::stream<ap_uint<392>, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<392>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<ap_uint<392>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<ap_uint<392>, 0>"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_64(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<ap_uint<392>, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<ap_uint<392>, 0>"* %1 to i8*
  call void @fpga_fifo_pop_64(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<ap_uint<392>, 0>", %"class.hls::stream<ap_uint<392>, 0>"* %2
  %8 = bitcast %"class.hls::stream<ap_uint<392>, 0>"* %2 to i8*
  %9 = bitcast %"class.hls::stream<ap_uint<392>, 0>"* %0 to i8*
  call void @fpga_fifo_push_64(i8* %8, i8* %9)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<8>, 0>"(%"class.hls::stream<ap_uint<8>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<8>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq %"class.hls::stream<ap_uint<8>, 0>"* %0, null
  %3 = icmp eq %"class.hls::stream<ap_uint<8>, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<8>, 0>"(%"class.hls::stream<ap_uint<8>, 0>"* nonnull align 512 %0, %"class.hls::stream<ap_uint<8>, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<8>, 0>"(%"class.hls::stream<ap_uint<8>, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<8>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<ap_uint<8>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<ap_uint<8>, 0>"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<ap_uint<8>, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<ap_uint<8>, 0>"* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<ap_uint<8>, 0>", %"class.hls::stream<ap_uint<8>, 0>"* %2
  %8 = bitcast %"class.hls::stream<ap_uint<8>, 0>"* %2 to i8*
  %9 = bitcast %"class.hls::stream<ap_uint<8>, 0>"* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out(%"class.hls::stream<ap_uint<392>, 0>"* noalias "unpacked"="0", %"class.hls::stream<ap_uint<392>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "unpacked"="1", %"class.hls::stream<ap_uint<8>, 0>"* noalias "unpacked"="2", %"class.hls::stream<ap_uint<8>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "unpacked"="3", %"struct.ap_uint<32>"* noalias "unpacked"="4", i32* noalias nocapture readonly align 512 "unpacked"="5.0.0.0", %"struct.ap_uint<32>"* noalias "unpacked"="6", i32* noalias nocapture readonly align 512 "unpacked"="7.0.0.0", %"struct.ap_uint<32>"* noalias "unpacked"="8", i32* noalias nocapture readonly align 512 "unpacked"="9.0.0.0", %"struct.ap_uint<32>"* noalias "unpacked"="10", i32* noalias nocapture readonly align 512 "unpacked"="11.0.0.0") unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<392>, 0>"(%"class.hls::stream<ap_uint<392>, 0>"* %0, %"class.hls::stream<ap_uint<392>, 0>"* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<8>, 0>"(%"class.hls::stream<ap_uint<8>, 0>"* %2, %"class.hls::stream<ap_uint<8>, 0>"* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>"(%"struct.ap_uint<32>"* %4, i32* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>"(%"struct.ap_uint<32>"* %6, i32* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>"(%"struct.ap_uint<32>"* %8, i32* align 512 %9)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>"(%"struct.ap_uint<32>"* %10, i32* align 512 %11)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>"(%"struct.ap_uint<32>"* noalias "unpacked"="0", i32* noalias nocapture readonly align 512 "unpacked"="1.0.0.0") unnamed_addr #6 {
entry:
  %2 = icmp eq %"struct.ap_uint<32>"* %0, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %.01.0.05 = getelementptr %"struct.ap_uint<32>", %"struct.ap_uint<32>"* %0, i32 0, i32 0, i32 0, i32 0
  %3 = load i32, i32* %1, align 512
  store i32 %3, i32* %.01.0.05, align 4
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>.46.50.76.88"(i32* noalias nocapture align 512 "unpacked"="0.0.0.0", %"struct.ap_uint<32>"* noalias readonly "unpacked"="1") unnamed_addr #6 {
entry:
  %2 = icmp eq %"struct.ap_uint<32>"* %1, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %.0.0.04 = getelementptr %"struct.ap_uint<32>", %"struct.ap_uint<32>"* %1, i32 0, i32 0, i32 0, i32 0
  %3 = load i32, i32* %.0.0.04, align 4
  store i32 %3, i32* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

declare void @apatb_instrumentation_wrapper_hw(%"class.hls::stream<ap_uint<392>, 0>"*, %"class.hls::stream<ap_uint<8>, 0>"*, %"struct.ap_uint<32>"*, i32*, i32*, i32*, i32*)

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_back(%"class.hls::stream<ap_uint<392>, 0>"* noalias "unpacked"="0", %"class.hls::stream<ap_uint<392>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "unpacked"="1", %"class.hls::stream<ap_uint<8>, 0>"* noalias "unpacked"="2", %"class.hls::stream<ap_uint<8>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "unpacked"="3", %"struct.ap_uint<32>"* noalias "unpacked"="4", i32* noalias nocapture readonly align 512 "unpacked"="5.0.0.0", %"struct.ap_uint<32>"* noalias "unpacked"="6", i32* noalias nocapture readonly align 512 "unpacked"="7.0.0.0", %"struct.ap_uint<32>"* noalias "unpacked"="8", i32* noalias nocapture readonly align 512 "unpacked"="9.0.0.0", %"struct.ap_uint<32>"* noalias "unpacked"="10", i32* noalias nocapture readonly align 512 "unpacked"="11.0.0.0") unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<392>, 0>"(%"class.hls::stream<ap_uint<392>, 0>"* %0, %"class.hls::stream<ap_uint<392>, 0>"* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<8>, 0>"(%"class.hls::stream<ap_uint<8>, 0>"* %2, %"class.hls::stream<ap_uint<8>, 0>"* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>"(%"struct.ap_uint<32>"* %4, i32* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>"(%"struct.ap_uint<32>"* %6, i32* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>"(%"struct.ap_uint<32>"* %8, i32* align 512 %9)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>"(%"struct.ap_uint<32>"* %10, i32* align 512 %11)
  ret void
}

define void @instrumentation_wrapper_hw_stub_wrapper(%"class.hls::stream<ap_uint<392>, 0>"*, %"class.hls::stream<ap_uint<8>, 0>"*, %"struct.ap_uint<32>"*, i32*, i32*, i32*, i32*) #7 {
entry:
  %7 = alloca %"struct.ap_uint<32>"
  %8 = alloca %"struct.ap_uint<32>"
  %9 = alloca %"struct.ap_uint<32>"
  %10 = alloca %"struct.ap_uint<32>"
  call void @copy_out(%"class.hls::stream<ap_uint<392>, 0>"* null, %"class.hls::stream<ap_uint<392>, 0>"* %0, %"class.hls::stream<ap_uint<8>, 0>"* null, %"class.hls::stream<ap_uint<8>, 0>"* %1, %"struct.ap_uint<32>"* %7, i32* %3, %"struct.ap_uint<32>"* %8, i32* %4, %"struct.ap_uint<32>"* %9, i32* %5, %"struct.ap_uint<32>"* %10, i32* %6)
  call void @instrumentation_wrapper_hw_stub(%"class.hls::stream<ap_uint<392>, 0>"* %0, %"class.hls::stream<ap_uint<8>, 0>"* %1, %"struct.ap_uint<32>"* %2, %"struct.ap_uint<32>"* %7, %"struct.ap_uint<32>"* %8, %"struct.ap_uint<32>"* %9, %"struct.ap_uint<32>"* %10)
  call void @copy_in(%"class.hls::stream<ap_uint<392>, 0>"* null, %"class.hls::stream<ap_uint<392>, 0>"* %0, %"class.hls::stream<ap_uint<8>, 0>"* null, %"class.hls::stream<ap_uint<8>, 0>"* %1, %"struct.ap_uint<32>"* %7, i32* %3, %"struct.ap_uint<32>"* %8, i32* %4, %"struct.ap_uint<32>"* %9, i32* %5, %"struct.ap_uint<32>"* %10, i32* %6)
  ret void
}

declare void @instrumentation_wrapper_hw_stub(%"class.hls::stream<ap_uint<392>, 0>"*, %"class.hls::stream<ap_uint<8>, 0>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*)

declare i1 @fpga_fifo_not_empty_64(i8*)

declare i1 @fpga_fifo_not_empty_1(i8*)

declare void @fpga_fifo_pop_64(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_push_64(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

attributes #0 = { inaccessiblememonly nounwind }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #5 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #6 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #7 = { "fpga.wrapper.func"="stub" }
attributes #8 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="512" "xlx.source"="user" }
attributes #9 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="8" "xlx.source"="user" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
!7 = distinct !{!7, !6}
