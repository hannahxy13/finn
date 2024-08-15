set trace_signals(kernel_group) {
  finn_design_0 { \
    s_axis_0*TDATA \
    s_axis_0*TLAST \
    s_axis_0*TVALID \
    s_axis_0*TREADY \
    m_axis_0*TDATA \
    m_axis_0*TLAST \
    m_axis_0*TVALID \
    m_axis_0*TREADY \
  } {}

  instrumentation_wrapper_0 { \
    s_axi_ctrl*ARADDR \
    s_axi_ctrl*RDATA \
    s_axi_ctrl*RVALID \
    s_axi_ctrl*RREADY \
    s_axi_ctrl*AWADDR \
    s_axi_ctrl*WDATA \
    s_axi_ctrl*WVALID \
    s_axi_ctrl*WREADY \
    finnix*TDATA \
    finnix*TLAST \
    finnix*TVALID \
    finnix*TREADY \
    finnox*TDATA \
    finnox*TLAST \
    finnox*TVALID \
    finnox*TREADY \
  } {}

}

set trace_signals(kernel) {
  ap_start ap_ready ap_done
}

set trace_signals(adapter) {
  *axis_*tdata *axis_*tvalid *axis_*tready S*WADDR S*WDATA S*ARADDR S*RDATA
}

set trace_signals(datamover) {
  stream_t* reg_bus_awaddr reg_bus_wdata
}
