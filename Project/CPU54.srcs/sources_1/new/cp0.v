`timescale 1ns / 1ps

module CP0(
    input clk,
    input rst,
    input mfc0,
    input mtc0,
    input [31:0] pc,
    input [4:0] Rd,
    input [31:0] wdata,
    input exception,
    input eret,
    input [4:0] cause,
    output [31:0] rdata,
    output[31:0] status,
    output reg [31:0] exc_addr
    );
    parameter istatus = 5'd12,      icause = 5'd13,     iepc = 5'd14;
    parameter SYSCALL = 5'b01000,   BREAK = 5'b01001,   TEQ = 5'b01101;
    
    reg [31:0] cp0_reg [31:0];
    assign rdata = (mfc0)?cp0_reg[Rd]:0;
    assign status = cp0_reg[istatus];

    always @(posedge clk or posedge rst) begin
        if(rst) begin
            cp0_reg[istatus] <= 32'h0000000f;
            cp0_reg[icause] <= 32'h0;
            cp0_reg[iepc] <= 32'h0;
            exc_addr <= 32'h0;
        end

        else if(mtc0) begin // MTC0：wdata写入对应寄存器
            cp0_reg[Rd] <= wdata; end
        
        else if(exception) begin    // 中断有效
            if(eret) begin  // ERET: status右移五位，epc为异常返回地址
                cp0_reg[istatus] <= cp0_reg[istatus] >> 5;
                exc_addr <= cp0_reg[iepc]; end
            else begin
                if(cp0_reg[istatus][1] || cp0_reg[istatus][2] || cp0_reg[istatus][3]) begin
                    exc_addr <= 32'h4;
                    cp0_reg[istatus] <= cp0_reg[istatus] << 5;
                    cp0_reg[iepc] <= pc;
                    cp0_reg[icause][6:2] <= cause; end                    
                else begin
                    exc_addr <= pc + 4; end
            end
        end
    end
endmodule