`timescale 1ns / 1ps

module sccomp_dataflow2(
    input clk_in,
    input reset,
    output [31:0] inst,
    output [31:0] pc
    );

    wire DM_w;
    wire [1:0] DM_type;
    wire [31:0] a;
    wire [31:0] addr;
    wire [31:0] rdata;
    wire [31:0] wdata;

    assign a = pc - 32'h00400000;

    imem imem_1(a[12:2], inst);
    cpu sccpu(clk_in, reset, inst, rdata, DM_w, pc, DM_type, addr, wdata);
    dmem dmem_1(clk_in, reset, DM_w, DM_type, addr, wdata, rdata);
endmodule