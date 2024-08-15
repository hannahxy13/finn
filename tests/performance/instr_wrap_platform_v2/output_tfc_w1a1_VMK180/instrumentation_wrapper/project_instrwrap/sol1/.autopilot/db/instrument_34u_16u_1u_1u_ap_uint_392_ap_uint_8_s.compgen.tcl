# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler instrumentation_wrapper_fifo_w32_d34_A BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {timestamps_U}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name cfg \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cfg \
    op interface \
    ports { cfg_dout { I 32 vector } cfg_num_data_valid { I 3 vector } cfg_fifo_cap { I 3 vector } cfg_empty_n { I 1 bit } cfg_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name status \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_status \
    op interface \
    ports { status_i { I 32 vector } status_o { O 32 vector } status_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name latency \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_latency \
    op interface \
    ports { latency { O 32 vector } latency_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name interval \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_interval \
    op interface \
    ports { interval { O 32 vector } interval_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name checksum \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_checksum \
    op interface \
    ports { checksum { O 32 vector } checksum_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name finnix0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_finnix0 \
    op interface \
    ports { finnix0_din { O 392 vector } finnix0_num_data_valid { I 2 vector } finnix0_fifo_cap { I 2 vector } finnix0_full_n { I 1 bit } finnix0_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name finnox0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_finnox0 \
    op interface \
    ports { finnox0_dout { I 8 vector } finnox0_num_data_valid { I 2 vector } finnox0_fifo_cap { I 2 vector } finnox0_empty_n { I 1 bit } finnox0_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


