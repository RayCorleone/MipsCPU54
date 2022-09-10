set_property SRC_FILE_INFO {cfile:D:/Ray/Vivado/CPU54/CPU54.runs/synth_1/.Xil/Vivado-10516-RayBeast/dcp/imem_in_context.xdc rfile:../dcp/imem_in_context.xdc id:1 order:EARLY scoped_inst:sccomp_dataflow_1/imem_1} [current_design]
set_property SRC_FILE_INFO {cfile:D:/Ray/Vivado/CPU54/CPU54.srcs/constrs_1/new/cpu_onboard_test_xdc.xdc rfile:../../../../../CPU54.srcs/constrs_1/new/cpu_onboard_test_xdc.xdc id:2} [current_design]
set_property SRC_FILE_INFO {cfile:D:/Ray/Vivado/CPU54/CPU54.srcs/constrs_1/new/cpu_onboard_xdc.xdc rfile:../../../../../CPU54.srcs/constrs_1/new/cpu_onboard_xdc.xdc id:3} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:1 export:INPUT save:INPUT read:READ} [current_design]
set_property IS_IP_OOC_CELL true [get_cells sccomp_dataflow_1/imem_1]
set_property src_info {type:XDC file:2 line:25 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports choose]
set_property src_info {type:XDC file:2 line:27 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports {o_sel[7]}]
set_property src_info {type:XDC file:2 line:28 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports {o_sel[6]}]
set_property src_info {type:XDC file:2 line:29 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports {o_sel[5]}]
set_property src_info {type:XDC file:2 line:30 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports {o_sel[4]}]
set_property src_info {type:XDC file:2 line:31 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports {o_sel[3]}]
set_property src_info {type:XDC file:2 line:32 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports {o_sel[2]}]
set_property src_info {type:XDC file:2 line:33 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports {o_sel[1]}]
set_property src_info {type:XDC file:2 line:34 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports {o_sel[0]}]
set_property src_info {type:XDC file:2 line:36 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports {o_seg[7]}]
set_property src_info {type:XDC file:2 line:37 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports {o_seg[6]}]
set_property src_info {type:XDC file:2 line:38 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports {o_seg[5]}]
set_property src_info {type:XDC file:2 line:39 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports {o_seg[4]}]
set_property src_info {type:XDC file:2 line:40 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports {o_seg[3]}]
set_property src_info {type:XDC file:2 line:41 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports {o_seg[2]}]
set_property src_info {type:XDC file:2 line:42 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports {o_seg[1]}]
set_property src_info {type:XDC file:2 line:43 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports {o_seg[0]}]
set_property src_info {type:XDC file:2 line:45 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports reset]
set_property src_info {type:XDC file:2 line:46 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports clk_in]
set_property src_info {type:XDC file:3 line:78 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 100.000 -name clk_pin -waveform {0.000 50.000} [get_ports clk_in]
set_property src_info {type:XDC file:3 line:79 export:INPUT save:INPUT read:READ} [current_design]
set_input_delay -clock [get_clocks *] 1.000 [get_ports reset]
set_property src_info {type:XDC file:3 line:80 export:INPUT save:INPUT read:READ} [current_design]
set_output_delay -clock [get_clocks *] 0.000 [get_ports [list {o_seg[0]} {o_seg[1]} {o_seg[2]} {o_seg[3]} {o_seg[4]} {o_seg[5]} {o_seg[6]} {o_seg[7]} {o_sel[0]} {o_sel[1]} {o_sel[2]} {o_sel[3]} {o_sel[4]} {o_sel[5]} {o_sel[6]} {o_sel[7]}]]
set_property src_info {type:XDC file:2 line:48 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 100.000 -name clk_pin -waveform {0.000 50.000} [get_ports clk_in]
set_property src_info {type:XDC file:2 line:49 export:INPUT save:INPUT read:READ} [current_design]
set_input_delay -clock [get_clocks *] 1.000 [get_ports reset]
set_property src_info {type:XDC file:2 line:50 export:INPUT save:INPUT read:READ} [current_design]
set_output_delay -clock [get_clocks *] 0.000 [get_ports [list {o_seg[0]} {o_seg[1]} {o_seg[2]} {o_seg[3]} {o_seg[4]} {o_seg[5]} {o_seg[6]} {o_seg[7]} {o_sel[0]} {o_sel[1]} {o_sel[2]} {o_sel[3]} {o_sel[4]} {o_sel[5]} {o_sel[6]} {o_sel[7]}]]
