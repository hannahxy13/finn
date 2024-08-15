# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_ctrl {
cfg { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
status_i { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
status_o { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 32
	offset_end 39
}
latency { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 40
	offset_end 47
}
interval { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 56
	offset_end 63
}
checksum { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 72
	offset_end 79
}
}
dict set axilite_register_dict ctrl $port_ctrl


