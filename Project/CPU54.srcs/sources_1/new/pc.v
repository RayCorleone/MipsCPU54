`timescale 1ns / 1ps

module PC(
    input clk,
    input rst,
    input busy,
    input jalr,
    input [31:0] PC_in,
    output reg [31:0] PC_out
    );

    reg [31:0] temp;
    always @(posedge clk) begin
        if(jalr) begin
            temp <= PC_in; end
    end

    always @(negedge clk or posedge rst) begin
        if(rst) begin
            PC_out <= 32'h00400000; end
        else if(jalr && busy == 0) begin
            PC_out <= temp; end
        else if (busy == 0) begin
            PC_out <= PC_in; end
    end   
endmodule