set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME instrumentation_wrapper_entry_proc}
  {SRCNAME {move<ap_uint<8> >} MODELNAME move_ap_uint_8_s RTLNAME instrumentation_wrapper_move_ap_uint_8_s
    SUBMODULES {
      {MODELNAME instrumentation_wrapper_regslice_both RTLNAME instrumentation_wrapper_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME instrumentation_wrapper_regslice_both_U}
    }
  }
  {SRCNAME {instrument<34u, 16u, 1u, 1u, ap_uint<392>, ap_uint<8> >} MODELNAME instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_s RTLNAME instrumentation_wrapper_instrument_34u_16u_1u_1u_ap_uint_392_ap_uint_8_s
    SUBMODULES {
      {MODELNAME instrumentation_wrapper_fifo_w32_d34_A RTLNAME instrumentation_wrapper_fifo_w32_d34_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME timestamps_U}
    }
  }
  {SRCNAME {move<ap_uint<392> >} MODELNAME move_ap_uint_392_s RTLNAME instrumentation_wrapper_move_ap_uint_392_s}
  {SRCNAME instrumentation_wrapper MODELNAME instrumentation_wrapper RTLNAME instrumentation_wrapper IS_TOP 1
    SUBMODULES {
      {MODELNAME instrumentation_wrapper_fifo_w32_d3_S RTLNAME instrumentation_wrapper_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cfg_c_U}
      {MODELNAME instrumentation_wrapper_fifo_w8_d2_S RTLNAME instrumentation_wrapper_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME finnox0_U}
      {MODELNAME instrumentation_wrapper_fifo_w392_d2_S RTLNAME instrumentation_wrapper_fifo_w392_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME finnix0_U}
      {MODELNAME instrumentation_wrapper_ctrl_s_axi RTLNAME instrumentation_wrapper_ctrl_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
