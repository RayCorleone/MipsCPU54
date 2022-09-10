`timescale 1ns / 1ps

module dmem(
    input clk,
    input reset,
    input write,
    input [1:0] data_type,
    input [31:0] addr,
    input [31:0] idata,
    output [31:0] odata
    );

    integer i;
    reg [31:0] memory [551:0];
    wire [1:0] offset;
    wire [31:0] Daddr;

    assign offset = addr[1:0];
    assign Daddr = (addr-32'h10010000)/4;
    assign odata = memory[Daddr];

    always @(posedge clk or posedge reset) begin
        if(reset == 1) begin
            for(i = 0; i < 552; i = i + 1) begin
                memory[i] <= 0; end end
        else if(write) begin
            case(data_type)
            2'b01: begin    // SH
                case(offset)
                2'b00:      // 存入低15位
                    memory[Daddr][15:0] <= idata[15:0];
                2'b10:      // 存入高15位
                    memory[Daddr][31:16] <= idata[15:0];
                endcase
            end

            2'b10: begin    // SB
                case(offset)
                2'b00:      // 存入7~0位
                    memory[Daddr][7:0] <= idata[7:0];
                2'b01:      // 存入15~8位
                    memory[Daddr][15:8] <= idata[7:0];
                2'b10:      // 存入23~16位
                    memory[Daddr][23:16] <= idata[7:0];
                2'b11:      // 存入1~24位
                    memory[Daddr][31:24] <= idata[7:0];
                endcase
            end

            default: // SW
                memory[Daddr] <= idata; // 直接存入
            endcase
        end
    end
endmodule