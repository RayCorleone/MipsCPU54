`timescale 1ns / 1ps

module CNW(
    input [1:0] bit_type,
    input [2:0] DM_otype,
    input [31:0] idata,
    output [31:0] odata
    );
    // 0-LH, 1-LB, 2-LHU, 3-LBU, default-LW
    assign odata =  (DM_otype==3'b000)?((bit_type==0)?{{16{idata[15]}}, idata[15:0]}:(bit_type==2)?{{16{idata[31]}}, idata[31:16]}:0):
                    (DM_otype==3'b001)?((bit_type==0)?{{24{idata[7]}}, idata[7:0]}:(bit_type==1)?{{24{idata[15]}}, idata[15:8]}:
                                        (bit_type==2)?{{24{idata[23]}}, idata[23:16]}:(bit_type==3)?{{24{idata[31]}}, idata[31:24]}:0):
                    (DM_otype==3'b010)?((bit_type==0)?{{16{1'b0}}, idata[15:0]}:(bit_type==2)?{{16{1'b0}}, idata[31:16]}:0):
                    (DM_otype==3'b011)?((bit_type==0)?{{24{1'b0}}, idata[7:0]}:(bit_type==1)?{{24{1'b0}}, idata[15:8]}:
                                        (bit_type==2)?{{24{1'b0}}, idata[23:16]}:(bit_type==3)?{{24{1'b0}}, idata[31:24]}:0): idata;
endmodule