`timescale 1ns / 1ps

// 下板模块1：选择输出pc或inst
module cpu_onboard_test(
    input clk_in,
    input reset,
    input choose,
    output [7:0] o_seg,
    output [7:0] o_sel
    );
    wire [31:0] i_data;
    wire [31:0] pc,inst;
    wire clk_cpu;
    wire clk_seg;
    
    // 选择显示 inst 还是 pc
    assign i_data = (choose) ? inst : pc;
    divider #(100000) div_cpu(clk_in,reset,clk_cpu);
    divider #(4) div_seg(clk_in,reset,clk_seg);
    sccomp_dataflow2 sccomp_dataflow_1(clk_cpu,reset,inst,pc);
    seg7x16(clk_seg,reset,1'b1,i_data,o_seg,o_sel);
endmodule

// 下板模块2：可以修改测试data
module cpu_onboard(
    input clk_in,
    input reset,
    input [15:0] sw,
    output [7:0] o_seg,
    output [7:0] o_sel
    ); 

    wire DM_W;
    wire clk_cpu, clk_seg;
    wire seg7_cs, switch_cs;
	 
    wire [1:0] DM_type;
    wire [31:0] rdata;
    wire [31:0] wdata;
    wire [31:0] ip_in;
    wire [31:0] data_fmem;
    wire [31:0] inst, pc, addr;
    
    assign ip_in = pc - 32'h00400000;
    
    divider #(10000000) div_cpu(clk_in,reset,clk_cpu);
    divider #(4) div_seg(clk_in,reset,clk_seg);
    
    io_sel io_mem(addr,1'b1,DM_W,1'b1,seg7_cs,switch_cs);
    sw_mem_sel sw_mem(switch_cs, sw, data_fmem, rdata);
    seg7x16 seg7(clk_seg,reset,seg7_cs,wdata,o_seg,o_sel);
       
    imem scimem(ip_in[12:2],inst);
    //cpu sccpu(clk_in, reset, inst, rdata, DM_w, pc, DM_type, addr, wdata);
    cpu sccpu(clk_cpu, reset, inst, rdata, DM_W, pc, DM_type, addr, wdata);
    //dmem dmem_1(clk_in, reset, DM_w, DM_type, addr, wdata, rdata);
    dmem scdmem(clk_cpu, reset, DM_W, DM_type, addr, wdata, data_fmem);
endmodule