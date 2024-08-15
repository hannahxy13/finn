create_project finn_vivado_stitch_proj /scratch/hannayan/builds/vivado_stitch_proj__ip5t25s -part xcvm1802-vsva2197-2MP-e-S
file mkdir ./ip/verilog
file mkdir ./ip/verilog/rtl_ops
set_msg_config -id {[BD 41-1753]} -suppress
set_property ip_repo_paths [list $::env(FINN_ROOT)/finn-rtllib/memstream /scratch/hannayan/builds/code_gen_ipgen_StreamingFIFO_0_buqu9h_2/project_StreamingFIFO_0/sol1/impl/verilog /scratch/hannayan/builds/code_gen_ipgen_Thresholding_Batch_0_npg089mz/project_Thresholding_Batch_0/sol1/impl/ip /scratch/hannayan/builds/code_gen_ipgen_StreamingFIFO_1_q4b9_mnk/project_StreamingFIFO_1/sol1/impl/verilog /scratch/hannayan/builds/code_gen_ipgen_MatrixVectorActivation_0_aely7fp6/project_MatrixVectorActivation_0/sol1/impl/ip /scratch/hannayan/builds/code_gen_ipgen_StreamingFIFO_2_4vtn1d2y/project_StreamingFIFO_2/sol1/impl/verilog /scratch/hannayan/builds/code_gen_ipgen_StreamingDataWidthConverter_rtl_0_k34s90ip /scratch/hannayan/builds/code_gen_ipgen_StreamingFIFO_3_ei894wkb/project_StreamingFIFO_3/sol1/impl/verilog /scratch/hannayan/builds/code_gen_ipgen_Thresholding_Batch_1_f9oyhks6/project_Thresholding_Batch_1/sol1/impl/ip /scratch/hannayan/builds/code_gen_ipgen_StreamingFIFO_4_9f_4xwdd/project_StreamingFIFO_4/sol1/impl/verilog /scratch/hannayan/builds/code_gen_ipgen_StreamingDataWidthConverter_rtl_1_iuuolfip /scratch/hannayan/builds/code_gen_ipgen_StreamingFIFO_5_727wj43g/project_StreamingFIFO_5/sol1/impl/verilog /scratch/hannayan/builds/code_gen_ipgen_MatrixVectorActivation_1_le4cgmwg/project_MatrixVectorActivation_1/sol1/impl/ip /scratch/hannayan/builds/code_gen_ipgen_StreamingFIFO_6_bz0jbkok/project_StreamingFIFO_6/sol1/impl/verilog /scratch/hannayan/builds/code_gen_ipgen_StreamingDataWidthConverter_rtl_2_rair6og1 /scratch/hannayan/builds/code_gen_ipgen_StreamingFIFO_7_c7_lwaw_/project_StreamingFIFO_7/sol1/impl/verilog /scratch/hannayan/builds/code_gen_ipgen_Thresholding_Batch_2_psjzb_h5/project_Thresholding_Batch_2/sol1/impl/ip /scratch/hannayan/builds/code_gen_ipgen_StreamingFIFO_8_csl55ekc/project_StreamingFIFO_8/sol1/impl/verilog /scratch/hannayan/builds/code_gen_ipgen_StreamingDataWidthConverter_rtl_3_mgkupfek /scratch/hannayan/builds/code_gen_ipgen_StreamingFIFO_9_d_ubs8b3/project_StreamingFIFO_9/sol1/impl/verilog /scratch/hannayan/builds/code_gen_ipgen_MatrixVectorActivation_2__1uxyb8a/project_MatrixVectorActivation_2/sol1/impl/ip /scratch/hannayan/builds/code_gen_ipgen_StreamingFIFO_10_owj4cwcj/project_StreamingFIFO_10/sol1/impl/verilog /scratch/hannayan/builds/code_gen_ipgen_StreamingDataWidthConverter_rtl_4_jw4hmje4 /scratch/hannayan/builds/code_gen_ipgen_StreamingFIFO_11_xylskby0/project_StreamingFIFO_11/sol1/impl/verilog /scratch/hannayan/builds/code_gen_ipgen_Thresholding_Batch_3_orea6chv/project_Thresholding_Batch_3/sol1/impl/ip /scratch/hannayan/builds/code_gen_ipgen_StreamingFIFO_12_8unlx2li/project_StreamingFIFO_12/sol1/impl/verilog /scratch/hannayan/builds/code_gen_ipgen_StreamingDataWidthConverter_rtl_5_m5i5x4d3 /scratch/hannayan/builds/code_gen_ipgen_StreamingFIFO_13_mgn1btdi/project_StreamingFIFO_13/sol1/impl/verilog /scratch/hannayan/builds/code_gen_ipgen_MatrixVectorActivation_3_mp428r1g/project_MatrixVectorActivation_3/sol1/impl/ip /scratch/hannayan/builds/code_gen_ipgen_StreamingFIFO_14_ooia9w5h/project_StreamingFIFO_14/sol1/impl/verilog /scratch/hannayan/builds/code_gen_ipgen_StreamingDataWidthConverter_rtl_6_je0g_pae /scratch/hannayan/builds/code_gen_ipgen_StreamingFIFO_15_tdsz9hyf/project_StreamingFIFO_15/sol1/impl/verilog /scratch/hannayan/builds/code_gen_ipgen_LabelSelect_Batch_0_1frjc_34/project_LabelSelect_Batch_0/sol1/impl/ip /scratch/hannayan/builds/code_gen_ipgen_StreamingFIFO_16_r8ylu6tq/project_StreamingFIFO_16/sol1/impl/verilog /scratch/hannayan/builds/code_gen_ipgen_TLastMarker_0_zfhqtzk1/project_TLastMarker_0/sol1/impl/ip] [current_project]
update_ip_catalog
create_bd_design "finn_design"
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_0:1.0 StreamingFIFO_0
create_bd_cell -type ip -vlnv xilinx.com:hls:Thresholding_Batch_0:1.0 Thresholding_Batch_0
add_files -copy_to ./ip/verilog/rtl_ops/Thresholding_Batch_0 -norecurse /scratch/hannayan/builds/code_gen_ipgen_Thresholding_Batch_0_npg089mz/project_Thresholding_Batch_0/sol1/impl/verilog/Thresholding_Batch_0_Thresholding_Batch_p_ZL7threshs_0_ROM_2P_BRAM_1R.dat
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_1:1.0 StreamingFIFO_1
create_bd_cell -type hier MatrixVectorActivation_0
create_bd_pin -dir I -type clk /MatrixVectorActivation_0/ap_clk
create_bd_pin -dir I -type rst /MatrixVectorActivation_0/ap_rst_n
create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 /MatrixVectorActivation_0/out_V
create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 /MatrixVectorActivation_0/in0_V
create_bd_cell -type ip -vlnv xilinx.com:hls:MatrixVectorActivation_0:1.0 /MatrixVectorActivation_0/MatrixVectorActivation_0
create_bd_cell -type ip -vlnv amd.com:finn:memstream:1.0 /MatrixVectorActivation_0/MatrixVectorActivation_0_wstrm
set_property -dict [list CONFIG.DEPTH {64} CONFIG.WIDTH {784} CONFIG.INIT_FILE {./memblock_MatrixVectorActivation_0.dat} CONFIG.RAM_STYLE {block} CONFIG.PUMPED_MEMORY {0} ] [get_bd_cells /MatrixVectorActivation_0/MatrixVectorActivation_0_wstrm]
connect_bd_intf_net [get_bd_intf_pins MatrixVectorActivation_0/MatrixVectorActivation_0_wstrm/m_axis_0] [get_bd_intf_pins MatrixVectorActivation_0/MatrixVectorActivation_0/weights_V]
connect_bd_net [get_bd_pins MatrixVectorActivation_0/ap_rst_n] [get_bd_pins MatrixVectorActivation_0/MatrixVectorActivation_0_wstrm/ap_rst_n]
connect_bd_net [get_bd_pins MatrixVectorActivation_0/ap_clk] [get_bd_pins MatrixVectorActivation_0/MatrixVectorActivation_0_wstrm/ap_clk]
connect_bd_net [get_bd_pins MatrixVectorActivation_0/ap_clk] [get_bd_pins MatrixVectorActivation_0/MatrixVectorActivation_0_wstrm/ap_clk2x]
connect_bd_net [get_bd_pins MatrixVectorActivation_0/ap_rst_n] [get_bd_pins MatrixVectorActivation_0/MatrixVectorActivation_0/ap_rst_n]
connect_bd_net [get_bd_pins MatrixVectorActivation_0/ap_clk] [get_bd_pins MatrixVectorActivation_0/MatrixVectorActivation_0/ap_clk]
connect_bd_intf_net [get_bd_intf_pins MatrixVectorActivation_0/in0_V] [get_bd_intf_pins MatrixVectorActivation_0/MatrixVectorActivation_0/in0_V]
connect_bd_intf_net [get_bd_intf_pins MatrixVectorActivation_0/out_V] [get_bd_intf_pins MatrixVectorActivation_0/MatrixVectorActivation_0/out_V]
save_bd_design
add_files -copy_to ./ip/verilog/rtl_ops/MatrixVectorActivation_0 -norecurse /scratch/hannayan/builds/code_gen_ipgen_MatrixVectorActivation_0_aely7fp6/memblock_MatrixVectorActivation_0.dat
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_2:1.0 StreamingFIFO_2
add_files -copy_to ./ip/verilog/rtl_ops/StreamingDataWidthConverter_rtl_0 -norecurse /scratch/hannayan/builds/code_gen_ipgen_StreamingDataWidthConverter_rtl_0_k34s90ip/dwc_axi.sv
add_files -copy_to ./ip/verilog/rtl_ops/StreamingDataWidthConverter_rtl_0 -norecurse /scratch/hannayan/builds/code_gen_ipgen_StreamingDataWidthConverter_rtl_0_k34s90ip/dwc.sv
add_files -copy_to ./ip/verilog/rtl_ops/StreamingDataWidthConverter_rtl_0 -norecurse /scratch/hannayan/builds/code_gen_ipgen_StreamingDataWidthConverter_rtl_0_k34s90ip/StreamingDataWidthConverter_rtl_0.v
create_bd_cell -type module -reference StreamingDataWidthConverter_rtl_0 StreamingDataWidthConverter_rtl_0
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_3:1.0 StreamingFIFO_3
create_bd_cell -type ip -vlnv xilinx.com:hls:Thresholding_Batch_1:1.0 Thresholding_Batch_1
add_files -copy_to ./ip/verilog/rtl_ops/Thresholding_Batch_1 -norecurse /scratch/hannayan/builds/code_gen_ipgen_Thresholding_Batch_1_f9oyhks6/project_Thresholding_Batch_1/sol1/impl/verilog/Thresholding_Batch_1_threshs_ROM_2P_LUTRAM_1R.dat
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_4:1.0 StreamingFIFO_4
add_files -copy_to ./ip/verilog/rtl_ops/StreamingDataWidthConverter_rtl_1 -norecurse /scratch/hannayan/builds/code_gen_ipgen_StreamingDataWidthConverter_rtl_1_iuuolfip/dwc_axi.sv
add_files -copy_to ./ip/verilog/rtl_ops/StreamingDataWidthConverter_rtl_1 -norecurse /scratch/hannayan/builds/code_gen_ipgen_StreamingDataWidthConverter_rtl_1_iuuolfip/dwc.sv
add_files -copy_to ./ip/verilog/rtl_ops/StreamingDataWidthConverter_rtl_1 -norecurse /scratch/hannayan/builds/code_gen_ipgen_StreamingDataWidthConverter_rtl_1_iuuolfip/StreamingDataWidthConverter_rtl_1.v
create_bd_cell -type module -reference StreamingDataWidthConverter_rtl_1 StreamingDataWidthConverter_rtl_1
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_5:1.0 StreamingFIFO_5
create_bd_cell -type hier MatrixVectorActivation_1
create_bd_pin -dir I -type clk /MatrixVectorActivation_1/ap_clk
create_bd_pin -dir I -type rst /MatrixVectorActivation_1/ap_rst_n
create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 /MatrixVectorActivation_1/out_V
create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 /MatrixVectorActivation_1/in0_V
create_bd_cell -type ip -vlnv xilinx.com:hls:MatrixVectorActivation_1:1.0 /MatrixVectorActivation_1/MatrixVectorActivation_1
create_bd_cell -type ip -vlnv amd.com:finn:memstream:1.0 /MatrixVectorActivation_1/MatrixVectorActivation_1_wstrm
set_property -dict [list CONFIG.DEPTH {64} CONFIG.WIDTH {64} CONFIG.INIT_FILE {./memblock_MatrixVectorActivation_1.dat} CONFIG.RAM_STYLE {auto} CONFIG.PUMPED_MEMORY {0} ] [get_bd_cells /MatrixVectorActivation_1/MatrixVectorActivation_1_wstrm]
connect_bd_intf_net [get_bd_intf_pins MatrixVectorActivation_1/MatrixVectorActivation_1_wstrm/m_axis_0] [get_bd_intf_pins MatrixVectorActivation_1/MatrixVectorActivation_1/weights_V]
connect_bd_net [get_bd_pins MatrixVectorActivation_1/ap_rst_n] [get_bd_pins MatrixVectorActivation_1/MatrixVectorActivation_1_wstrm/ap_rst_n]
connect_bd_net [get_bd_pins MatrixVectorActivation_1/ap_clk] [get_bd_pins MatrixVectorActivation_1/MatrixVectorActivation_1_wstrm/ap_clk]
connect_bd_net [get_bd_pins MatrixVectorActivation_1/ap_clk] [get_bd_pins MatrixVectorActivation_1/MatrixVectorActivation_1_wstrm/ap_clk2x]
connect_bd_net [get_bd_pins MatrixVectorActivation_1/ap_rst_n] [get_bd_pins MatrixVectorActivation_1/MatrixVectorActivation_1/ap_rst_n]
connect_bd_net [get_bd_pins MatrixVectorActivation_1/ap_clk] [get_bd_pins MatrixVectorActivation_1/MatrixVectorActivation_1/ap_clk]
connect_bd_intf_net [get_bd_intf_pins MatrixVectorActivation_1/in0_V] [get_bd_intf_pins MatrixVectorActivation_1/MatrixVectorActivation_1/in0_V]
connect_bd_intf_net [get_bd_intf_pins MatrixVectorActivation_1/out_V] [get_bd_intf_pins MatrixVectorActivation_1/MatrixVectorActivation_1/out_V]
save_bd_design
add_files -copy_to ./ip/verilog/rtl_ops/MatrixVectorActivation_1 -norecurse /scratch/hannayan/builds/code_gen_ipgen_MatrixVectorActivation_1_le4cgmwg/memblock_MatrixVectorActivation_1.dat
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_6:1.0 StreamingFIFO_6
add_files -copy_to ./ip/verilog/rtl_ops/StreamingDataWidthConverter_rtl_2 -norecurse /scratch/hannayan/builds/code_gen_ipgen_StreamingDataWidthConverter_rtl_2_rair6og1/dwc_axi.sv
add_files -copy_to ./ip/verilog/rtl_ops/StreamingDataWidthConverter_rtl_2 -norecurse /scratch/hannayan/builds/code_gen_ipgen_StreamingDataWidthConverter_rtl_2_rair6og1/dwc.sv
add_files -copy_to ./ip/verilog/rtl_ops/StreamingDataWidthConverter_rtl_2 -norecurse /scratch/hannayan/builds/code_gen_ipgen_StreamingDataWidthConverter_rtl_2_rair6og1/StreamingDataWidthConverter_rtl_2.v
create_bd_cell -type module -reference StreamingDataWidthConverter_rtl_2 StreamingDataWidthConverter_rtl_2
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_7:1.0 StreamingFIFO_7
create_bd_cell -type ip -vlnv xilinx.com:hls:Thresholding_Batch_2:1.0 Thresholding_Batch_2
add_files -copy_to ./ip/verilog/rtl_ops/Thresholding_Batch_2 -norecurse /scratch/hannayan/builds/code_gen_ipgen_Thresholding_Batch_2_psjzb_h5/project_Thresholding_Batch_2/sol1/impl/verilog/Thresholding_Batch_2_threshs_ROM_2P_LUTRAM_1R.dat
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_8:1.0 StreamingFIFO_8
add_files -copy_to ./ip/verilog/rtl_ops/StreamingDataWidthConverter_rtl_3 -norecurse /scratch/hannayan/builds/code_gen_ipgen_StreamingDataWidthConverter_rtl_3_mgkupfek/dwc_axi.sv
add_files -copy_to ./ip/verilog/rtl_ops/StreamingDataWidthConverter_rtl_3 -norecurse /scratch/hannayan/builds/code_gen_ipgen_StreamingDataWidthConverter_rtl_3_mgkupfek/dwc.sv
add_files -copy_to ./ip/verilog/rtl_ops/StreamingDataWidthConverter_rtl_3 -norecurse /scratch/hannayan/builds/code_gen_ipgen_StreamingDataWidthConverter_rtl_3_mgkupfek/StreamingDataWidthConverter_rtl_3.v
create_bd_cell -type module -reference StreamingDataWidthConverter_rtl_3 StreamingDataWidthConverter_rtl_3
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_9:1.0 StreamingFIFO_9
create_bd_cell -type hier MatrixVectorActivation_2
create_bd_pin -dir I -type clk /MatrixVectorActivation_2/ap_clk
create_bd_pin -dir I -type rst /MatrixVectorActivation_2/ap_rst_n
create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 /MatrixVectorActivation_2/out_V
create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 /MatrixVectorActivation_2/in0_V
create_bd_cell -type ip -vlnv xilinx.com:hls:MatrixVectorActivation_2:1.0 /MatrixVectorActivation_2/MatrixVectorActivation_2
create_bd_cell -type ip -vlnv amd.com:finn:memstream:1.0 /MatrixVectorActivation_2/MatrixVectorActivation_2_wstrm
set_property -dict [list CONFIG.DEPTH {64} CONFIG.WIDTH {64} CONFIG.INIT_FILE {./memblock_MatrixVectorActivation_2.dat} CONFIG.RAM_STYLE {auto} CONFIG.PUMPED_MEMORY {0} ] [get_bd_cells /MatrixVectorActivation_2/MatrixVectorActivation_2_wstrm]
connect_bd_intf_net [get_bd_intf_pins MatrixVectorActivation_2/MatrixVectorActivation_2_wstrm/m_axis_0] [get_bd_intf_pins MatrixVectorActivation_2/MatrixVectorActivation_2/weights_V]
connect_bd_net [get_bd_pins MatrixVectorActivation_2/ap_rst_n] [get_bd_pins MatrixVectorActivation_2/MatrixVectorActivation_2_wstrm/ap_rst_n]
connect_bd_net [get_bd_pins MatrixVectorActivation_2/ap_clk] [get_bd_pins MatrixVectorActivation_2/MatrixVectorActivation_2_wstrm/ap_clk]
connect_bd_net [get_bd_pins MatrixVectorActivation_2/ap_clk] [get_bd_pins MatrixVectorActivation_2/MatrixVectorActivation_2_wstrm/ap_clk2x]
connect_bd_net [get_bd_pins MatrixVectorActivation_2/ap_rst_n] [get_bd_pins MatrixVectorActivation_2/MatrixVectorActivation_2/ap_rst_n]
connect_bd_net [get_bd_pins MatrixVectorActivation_2/ap_clk] [get_bd_pins MatrixVectorActivation_2/MatrixVectorActivation_2/ap_clk]
connect_bd_intf_net [get_bd_intf_pins MatrixVectorActivation_2/in0_V] [get_bd_intf_pins MatrixVectorActivation_2/MatrixVectorActivation_2/in0_V]
connect_bd_intf_net [get_bd_intf_pins MatrixVectorActivation_2/out_V] [get_bd_intf_pins MatrixVectorActivation_2/MatrixVectorActivation_2/out_V]
save_bd_design
add_files -copy_to ./ip/verilog/rtl_ops/MatrixVectorActivation_2 -norecurse /scratch/hannayan/builds/code_gen_ipgen_MatrixVectorActivation_2__1uxyb8a/memblock_MatrixVectorActivation_2.dat
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_10:1.0 StreamingFIFO_10
add_files -copy_to ./ip/verilog/rtl_ops/StreamingDataWidthConverter_rtl_4 -norecurse /scratch/hannayan/builds/code_gen_ipgen_StreamingDataWidthConverter_rtl_4_jw4hmje4/dwc_axi.sv
add_files -copy_to ./ip/verilog/rtl_ops/StreamingDataWidthConverter_rtl_4 -norecurse /scratch/hannayan/builds/code_gen_ipgen_StreamingDataWidthConverter_rtl_4_jw4hmje4/dwc.sv
add_files -copy_to ./ip/verilog/rtl_ops/StreamingDataWidthConverter_rtl_4 -norecurse /scratch/hannayan/builds/code_gen_ipgen_StreamingDataWidthConverter_rtl_4_jw4hmje4/StreamingDataWidthConverter_rtl_4.v
create_bd_cell -type module -reference StreamingDataWidthConverter_rtl_4 StreamingDataWidthConverter_rtl_4
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_11:1.0 StreamingFIFO_11
create_bd_cell -type ip -vlnv xilinx.com:hls:Thresholding_Batch_3:1.0 Thresholding_Batch_3
add_files -copy_to ./ip/verilog/rtl_ops/Thresholding_Batch_3 -norecurse /scratch/hannayan/builds/code_gen_ipgen_Thresholding_Batch_3_orea6chv/project_Thresholding_Batch_3/sol1/impl/verilog/Thresholding_Batch_3_threshs_ROM_2P_LUTRAM_1R.dat
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_12:1.0 StreamingFIFO_12
add_files -copy_to ./ip/verilog/rtl_ops/StreamingDataWidthConverter_rtl_5 -norecurse /scratch/hannayan/builds/code_gen_ipgen_StreamingDataWidthConverter_rtl_5_m5i5x4d3/dwc_axi.sv
add_files -copy_to ./ip/verilog/rtl_ops/StreamingDataWidthConverter_rtl_5 -norecurse /scratch/hannayan/builds/code_gen_ipgen_StreamingDataWidthConverter_rtl_5_m5i5x4d3/dwc.sv
add_files -copy_to ./ip/verilog/rtl_ops/StreamingDataWidthConverter_rtl_5 -norecurse /scratch/hannayan/builds/code_gen_ipgen_StreamingDataWidthConverter_rtl_5_m5i5x4d3/StreamingDataWidthConverter_rtl_5.v
create_bd_cell -type module -reference StreamingDataWidthConverter_rtl_5 StreamingDataWidthConverter_rtl_5
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_13:1.0 StreamingFIFO_13
create_bd_cell -type hier MatrixVectorActivation_3
create_bd_pin -dir I -type clk /MatrixVectorActivation_3/ap_clk
create_bd_pin -dir I -type rst /MatrixVectorActivation_3/ap_rst_n
create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 /MatrixVectorActivation_3/out_V
create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 /MatrixVectorActivation_3/in0_V
create_bd_cell -type ip -vlnv xilinx.com:hls:MatrixVectorActivation_3:1.0 /MatrixVectorActivation_3/MatrixVectorActivation_3
create_bd_cell -type ip -vlnv amd.com:finn:memstream:1.0 /MatrixVectorActivation_3/MatrixVectorActivation_3_wstrm
set_property -dict [list CONFIG.DEPTH {8} CONFIG.WIDTH {80} CONFIG.INIT_FILE {./memblock_MatrixVectorActivation_3.dat} CONFIG.RAM_STYLE {distributed} CONFIG.PUMPED_MEMORY {0} ] [get_bd_cells /MatrixVectorActivation_3/MatrixVectorActivation_3_wstrm]
connect_bd_intf_net [get_bd_intf_pins MatrixVectorActivation_3/MatrixVectorActivation_3_wstrm/m_axis_0] [get_bd_intf_pins MatrixVectorActivation_3/MatrixVectorActivation_3/weights_V]
connect_bd_net [get_bd_pins MatrixVectorActivation_3/ap_rst_n] [get_bd_pins MatrixVectorActivation_3/MatrixVectorActivation_3_wstrm/ap_rst_n]
connect_bd_net [get_bd_pins MatrixVectorActivation_3/ap_clk] [get_bd_pins MatrixVectorActivation_3/MatrixVectorActivation_3_wstrm/ap_clk]
connect_bd_net [get_bd_pins MatrixVectorActivation_3/ap_clk] [get_bd_pins MatrixVectorActivation_3/MatrixVectorActivation_3_wstrm/ap_clk2x]
connect_bd_net [get_bd_pins MatrixVectorActivation_3/ap_rst_n] [get_bd_pins MatrixVectorActivation_3/MatrixVectorActivation_3/ap_rst_n]
connect_bd_net [get_bd_pins MatrixVectorActivation_3/ap_clk] [get_bd_pins MatrixVectorActivation_3/MatrixVectorActivation_3/ap_clk]
connect_bd_intf_net [get_bd_intf_pins MatrixVectorActivation_3/in0_V] [get_bd_intf_pins MatrixVectorActivation_3/MatrixVectorActivation_3/in0_V]
connect_bd_intf_net [get_bd_intf_pins MatrixVectorActivation_3/out_V] [get_bd_intf_pins MatrixVectorActivation_3/MatrixVectorActivation_3/out_V]
save_bd_design
add_files -copy_to ./ip/verilog/rtl_ops/MatrixVectorActivation_3 -norecurse /scratch/hannayan/builds/code_gen_ipgen_MatrixVectorActivation_3_mp428r1g/memblock_MatrixVectorActivation_3.dat
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_14:1.0 StreamingFIFO_14
add_files -copy_to ./ip/verilog/rtl_ops/StreamingDataWidthConverter_rtl_6 -norecurse /scratch/hannayan/builds/code_gen_ipgen_StreamingDataWidthConverter_rtl_6_je0g_pae/dwc_axi.sv
add_files -copy_to ./ip/verilog/rtl_ops/StreamingDataWidthConverter_rtl_6 -norecurse /scratch/hannayan/builds/code_gen_ipgen_StreamingDataWidthConverter_rtl_6_je0g_pae/dwc.sv
add_files -copy_to ./ip/verilog/rtl_ops/StreamingDataWidthConverter_rtl_6 -norecurse /scratch/hannayan/builds/code_gen_ipgen_StreamingDataWidthConverter_rtl_6_je0g_pae/StreamingDataWidthConverter_rtl_6.v
create_bd_cell -type module -reference StreamingDataWidthConverter_rtl_6 StreamingDataWidthConverter_rtl_6
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_15:1.0 StreamingFIFO_15
create_bd_cell -type ip -vlnv xilinx.com:hls:LabelSelect_Batch_0:1.0 LabelSelect_Batch_0
create_bd_cell -type ip -vlnv xilinx.com:hls:StreamingFIFO_16:1.0 StreamingFIFO_16
create_bd_cell -type ip -vlnv xilinx.com:hls:TLastMarker_0:1.0 TLastMarker_0
make_bd_pins_external [get_bd_pins StreamingFIFO_0/ap_clk]
set_property name ap_clk [get_bd_ports ap_clk_0]
make_bd_pins_external [get_bd_pins StreamingFIFO_0/ap_rst_n]
set_property name ap_rst_n [get_bd_ports ap_rst_n_0]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins Thresholding_Batch_0/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins Thresholding_Batch_0/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_0/out_V] [get_bd_intf_pins Thresholding_Batch_0/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_1/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_1/ap_clk]
connect_bd_intf_net [get_bd_intf_pins Thresholding_Batch_0/out_V] [get_bd_intf_pins StreamingFIFO_1/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins MatrixVectorActivation_0/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins MatrixVectorActivation_0/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_1/out_V] [get_bd_intf_pins MatrixVectorActivation_0/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_2/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_2/ap_clk]
connect_bd_intf_net [get_bd_intf_pins MatrixVectorActivation_0/out_V] [get_bd_intf_pins StreamingFIFO_2/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingDataWidthConverter_rtl_0/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingDataWidthConverter_rtl_0/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_2/out_V] [get_bd_intf_pins StreamingDataWidthConverter_rtl_0/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_3/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_3/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingDataWidthConverter_rtl_0/out_V] [get_bd_intf_pins StreamingFIFO_3/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins Thresholding_Batch_1/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins Thresholding_Batch_1/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_3/out_V] [get_bd_intf_pins Thresholding_Batch_1/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_4/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_4/ap_clk]
connect_bd_intf_net [get_bd_intf_pins Thresholding_Batch_1/out_V] [get_bd_intf_pins StreamingFIFO_4/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingDataWidthConverter_rtl_1/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingDataWidthConverter_rtl_1/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_4/out_V] [get_bd_intf_pins StreamingDataWidthConverter_rtl_1/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_5/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_5/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingDataWidthConverter_rtl_1/out_V] [get_bd_intf_pins StreamingFIFO_5/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins MatrixVectorActivation_1/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins MatrixVectorActivation_1/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_5/out_V] [get_bd_intf_pins MatrixVectorActivation_1/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_6/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_6/ap_clk]
connect_bd_intf_net [get_bd_intf_pins MatrixVectorActivation_1/out_V] [get_bd_intf_pins StreamingFIFO_6/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingDataWidthConverter_rtl_2/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingDataWidthConverter_rtl_2/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_6/out_V] [get_bd_intf_pins StreamingDataWidthConverter_rtl_2/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_7/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_7/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingDataWidthConverter_rtl_2/out_V] [get_bd_intf_pins StreamingFIFO_7/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins Thresholding_Batch_2/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins Thresholding_Batch_2/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_7/out_V] [get_bd_intf_pins Thresholding_Batch_2/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_8/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_8/ap_clk]
connect_bd_intf_net [get_bd_intf_pins Thresholding_Batch_2/out_V] [get_bd_intf_pins StreamingFIFO_8/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingDataWidthConverter_rtl_3/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingDataWidthConverter_rtl_3/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_8/out_V] [get_bd_intf_pins StreamingDataWidthConverter_rtl_3/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_9/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_9/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingDataWidthConverter_rtl_3/out_V] [get_bd_intf_pins StreamingFIFO_9/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins MatrixVectorActivation_2/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins MatrixVectorActivation_2/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_9/out_V] [get_bd_intf_pins MatrixVectorActivation_2/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_10/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_10/ap_clk]
connect_bd_intf_net [get_bd_intf_pins MatrixVectorActivation_2/out_V] [get_bd_intf_pins StreamingFIFO_10/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingDataWidthConverter_rtl_4/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingDataWidthConverter_rtl_4/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_10/out_V] [get_bd_intf_pins StreamingDataWidthConverter_rtl_4/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_11/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_11/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingDataWidthConverter_rtl_4/out_V] [get_bd_intf_pins StreamingFIFO_11/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins Thresholding_Batch_3/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins Thresholding_Batch_3/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_11/out_V] [get_bd_intf_pins Thresholding_Batch_3/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_12/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_12/ap_clk]
connect_bd_intf_net [get_bd_intf_pins Thresholding_Batch_3/out_V] [get_bd_intf_pins StreamingFIFO_12/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingDataWidthConverter_rtl_5/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingDataWidthConverter_rtl_5/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_12/out_V] [get_bd_intf_pins StreamingDataWidthConverter_rtl_5/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_13/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_13/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingDataWidthConverter_rtl_5/out_V] [get_bd_intf_pins StreamingFIFO_13/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins MatrixVectorActivation_3/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins MatrixVectorActivation_3/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_13/out_V] [get_bd_intf_pins MatrixVectorActivation_3/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_14/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_14/ap_clk]
connect_bd_intf_net [get_bd_intf_pins MatrixVectorActivation_3/out_V] [get_bd_intf_pins StreamingFIFO_14/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingDataWidthConverter_rtl_6/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingDataWidthConverter_rtl_6/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_14/out_V] [get_bd_intf_pins StreamingDataWidthConverter_rtl_6/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_15/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_15/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingDataWidthConverter_rtl_6/out_V] [get_bd_intf_pins StreamingFIFO_15/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins LabelSelect_Batch_0/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins LabelSelect_Batch_0/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_15/out_V] [get_bd_intf_pins LabelSelect_Batch_0/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_16/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_16/ap_clk]
connect_bd_intf_net [get_bd_intf_pins LabelSelect_Batch_0/out_V] [get_bd_intf_pins StreamingFIFO_16/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins TLastMarker_0/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins TLastMarker_0/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_16/out_V] [get_bd_intf_pins TLastMarker_0/in0_V]
make_bd_intf_pins_external [get_bd_intf_pins StreamingFIFO_0/in0_V]
set_property name s_axis_0 [get_bd_intf_ports in0_V_0]
make_bd_intf_pins_external [get_bd_intf_pins TLastMarker_0/out_V]
set_property name m_axis_0 [get_bd_intf_ports out_V_0]
set_property CONFIG.FREQ_HZ 303030303 [get_bd_ports /ap_clk]
validate_bd_design
save_bd_design
make_wrapper -files [get_files /scratch/hannayan/builds/vivado_stitch_proj__ip5t25s/finn_vivado_stitch_proj.srcs/sources_1/bd/finn_design/finn_design.bd] -top
add_files -norecurse /scratch/hannayan/builds/vivado_stitch_proj__ip5t25s/finn_vivado_stitch_proj.srcs/sources_1/bd/finn_design/hdl/finn_design_wrapper.v
set_property top finn_design_wrapper [current_fileset]
ipx::package_project -root_dir /scratch/hannayan/builds/vivado_stitch_proj__ip5t25s/ip -vendor xilinx_finn -library finn -taxonomy /UserIP -module finn_design -import_files
set_property ipi_drc {ignore_freq_hz true} [ipx::current_core]
ipx::remove_segment -quiet m_axi_gmem0:APERTURE_0 [ipx::get_address_spaces m_axi_gmem0 -of_objects [ipx::current_core]]
set_property core_revision 2 [ipx::find_open_core xilinx_finn:finn:finn_design:1.0]
set_property value_resolve_type user [ipx::get_bus_parameters -of [ipx::get_bus_interfaces -of [ipx::current_core ]]]
set_property auto_family_support_level level_2 [ipx::find_open_core xilinx_finn:finn:finn_design:1.0]
ipx::remove_all_file_group [ipx::find_open_core xilinx_finn:finn:finn_design:1.0]
ipx::create_xgui_files [ipx::find_open_core xilinx_finn:finn:finn_design:1.0]
file delete -force /scratch/hannayan/builds/vivado_stitch_proj__ip5t25s/ip/sim
file delete -force /scratch/hannayan/builds/vivado_stitch_proj__ip5t25s/ip/src
ipx::add_file_group xilinx_verilogbehavioralsimulation [ipx::current_core]
set_property model_name finn_design_wrapper [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file_group xilinx_verilogsynthesis [ipx::current_core]
set_property model_name finn_design_wrapper [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
file copy ./finn_vivado_stitch_proj.gen/sources_1/bd/finn_design ./ip/verilog
set all_v_files [get_files -filter {USED_IN_SYNTHESIS == 1 && (FILE_TYPE == Verilog || FILE_TYPE == SystemVerilog || FILE_TYPE =="Verilog Header")}]
set fp [open /scratch/hannayan/builds/vivado_stitch_proj__ip5t25s/all_verilog_srcs.txt w]
foreach vf $all_v_files {puts $fp $vf}
close $fp
set fset_sim [ipx::get_file_groups xilinx_verilogbehavioralsimulation]
set fset_synth [ipx::get_file_groups xilinx_verilogsynthesis]
set current_file [ipx::add_file ./verilog/rtl_ops/Thresholding_Batch_0/Thresholding_Batch_0_Thresholding_Batch_p_ZL7threshs_0_ROM_2P_BRAM_1R.dat $fset_sim]
set_property type "mif" $current_file
set current_file [ipx::add_file ./verilog/rtl_ops/Thresholding_Batch_0/Thresholding_Batch_0_Thresholding_Batch_p_ZL7threshs_0_ROM_2P_BRAM_1R.dat $fset_synth]
set_property type "mif" $current_file
set current_file [ipx::add_file ./verilog/rtl_ops/MatrixVectorActivation_0/memblock_MatrixVectorActivation_0.dat $fset_sim]
set_property type "mif" $current_file
set current_file [ipx::add_file ./verilog/rtl_ops/MatrixVectorActivation_0/memblock_MatrixVectorActivation_0.dat $fset_synth]
set_property type "mif" $current_file
set current_file [ipx::add_file ./verilog/rtl_ops/Thresholding_Batch_1/Thresholding_Batch_1_threshs_ROM_2P_LUTRAM_1R.dat $fset_sim]
set_property type "mif" $current_file
set current_file [ipx::add_file ./verilog/rtl_ops/Thresholding_Batch_1/Thresholding_Batch_1_threshs_ROM_2P_LUTRAM_1R.dat $fset_synth]
set_property type "mif" $current_file
set current_file [ipx::add_file ./verilog/rtl_ops/MatrixVectorActivation_1/memblock_MatrixVectorActivation_1.dat $fset_sim]
set_property type "mif" $current_file
set current_file [ipx::add_file ./verilog/rtl_ops/MatrixVectorActivation_1/memblock_MatrixVectorActivation_1.dat $fset_synth]
set_property type "mif" $current_file
set current_file [ipx::add_file ./verilog/rtl_ops/Thresholding_Batch_2/Thresholding_Batch_2_threshs_ROM_2P_LUTRAM_1R.dat $fset_sim]
set_property type "mif" $current_file
set current_file [ipx::add_file ./verilog/rtl_ops/Thresholding_Batch_2/Thresholding_Batch_2_threshs_ROM_2P_LUTRAM_1R.dat $fset_synth]
set_property type "mif" $current_file
set current_file [ipx::add_file ./verilog/rtl_ops/MatrixVectorActivation_2/memblock_MatrixVectorActivation_2.dat $fset_sim]
set_property type "mif" $current_file
set current_file [ipx::add_file ./verilog/rtl_ops/MatrixVectorActivation_2/memblock_MatrixVectorActivation_2.dat $fset_synth]
set_property type "mif" $current_file
set current_file [ipx::add_file ./verilog/rtl_ops/Thresholding_Batch_3/Thresholding_Batch_3_threshs_ROM_2P_LUTRAM_1R.dat $fset_sim]
set_property type "mif" $current_file
set current_file [ipx::add_file ./verilog/rtl_ops/Thresholding_Batch_3/Thresholding_Batch_3_threshs_ROM_2P_LUTRAM_1R.dat $fset_synth]
set_property type "mif" $current_file
set current_file [ipx::add_file ./verilog/rtl_ops/MatrixVectorActivation_3/memblock_MatrixVectorActivation_3.dat $fset_sim]
set_property type "mif" $current_file
set current_file [ipx::add_file ./verilog/rtl_ops/MatrixVectorActivation_3/memblock_MatrixVectorActivation_3.dat $fset_synth]
set_property type "mif" $current_file
foreach vf $all_v_files {
    set updated_path [string map {/scratch/hannayan/builds/vivado_stitch_proj__ip5t25s/finn_vivado_stitch_proj.gen/sources_1/bd verilog} $vf]
    ipx::add_file $updated_path [ipx::get_file_groups xilinx_verilogbehavioralsimulation]
    ipx::add_file $updated_path [ipx::get_file_groups xilinx_verilogsynthesis]
}
set_property sdx_kernel true [ipx::find_open_core xilinx_finn:finn:finn_design:1.0]
set_property sdx_kernel_type rtl [ipx::find_open_core xilinx_finn:finn:finn_design:1.0]
set_property supported_families { } [ipx::find_open_core xilinx_finn:finn:finn_design:1.0]
set_property xpm_libraries {XPM_CDC XPM_MEMORY XPM_FIFO} [ipx::find_open_core xilinx_finn:finn:finn_design:1.0]

set core [ipx::current_core]

# Add rudimentary driver
file copy -force data ip/
set file_group [ipx::add_file_group -type software_driver {} $core]
set_property type mdd       [ipx::add_file data/finn_design.mdd $file_group]
set_property type tclSource [ipx::add_file data/finn_design.tcl $file_group]

# Remove all XCI references to subcores
set impl_files [ipx::get_file_groups xilinx_implementation -of $core]
foreach xci [ipx::get_files -of $impl_files {*.xci}] {
    ipx::remove_file [get_property NAME $xci] $impl_files
}

# Construct a single flat memory map for each AXI-lite interface port
foreach port [get_bd_intf_ports -filter {CONFIG.PROTOCOL==AXI4LITE}] {
    set pin $port
    set awidth ""
    while { $awidth == "" } {
        set pins [get_bd_intf_pins -of [get_bd_intf_nets -boundary_type lower -of $pin]]
        set kill [lsearch $pins $pin]
        if { $kill >= 0 } { set pins [lreplace $pins $kill $kill] }
        if { [llength $pins] != 1 } { break }
        set pin [lindex $pins 0]
        set awidth [get_property CONFIG.ADDR_WIDTH $pin]
    }
    if { $awidth == "" } {
       puts "CRITICAL WARNING: Unable to construct address map for $port."
    } {
       set range [expr 2**$awidth]
       set range [expr $range < 4096 ? 4096 : $range]
       puts "INFO: Building address map for $port: 0+:$range"
       set name [get_property NAME $port]
       set addr_block [ipx::add_address_block Reg0 [ipx::add_memory_map $name $core]]
       set_property range $range $addr_block
       set_property slave_memory_map_ref $name [ipx::get_bus_interfaces $name -of $core]
    }
}

# Finalize and Save
ipx::update_checksums $core
ipx::save_core $core

# Remove stale subcore references from component.xml
file rename -force ip/component.xml ip/component.bak
set ifile [open ip/component.bak r]
set ofile [open ip/component.xml w]
set buf [list]
set kill 0
while { [eof $ifile] != 1 } {
    gets $ifile line
    if { [string match {*<spirit:fileSet>*} $line] == 1 } {
        foreach l $buf { puts $ofile $l }
        set buf [list $line]
    } elseif { [llength $buf] > 0 } {
        lappend buf $line

        if { [string match {*</spirit:fileSet>*} $line] == 1 } {
            if { $kill == 0 } { foreach l $buf { puts $ofile $l } }
            set buf [list]
            set kill 0
        } elseif { [string match {*<xilinx:subCoreRef>*} $line] == 1 } {
            set kill 1
        }
    } else {
        puts $ofile $line
    }
}
close $ifile
close $ofile

ipx::check_integrity -quiet -xrt [ipx::find_open_core xilinx_finn:finn:finn_design:1.0]
ipx::archive_core finn_ip.zip [ipx::find_open_core xilinx_finn:finn:finn_design:1.0]

