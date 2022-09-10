`timescale 1ns / 1ps

module HILO(
    input clk,
    input rst,
    input write,
    input [31:0] i,
    output [31:0] o
    );
    reg [31:0] hilo_reg;
    assign o = hilo_reg;

    always @(negedge clk or posedge rst) begin
        if(rst) begin
            hilo_reg <= 0; end
        else if(write) begin
            hilo_reg <= i; end
    end
endmodule