`timescale 1ns / 1ps

module DIVU(
    input [31:0] dividend,  //被除数
    input [31:0] divisor,   //除数
    input start,            //启动除法运算
    input clock,
    input reset,
    output [31:0] q,        //商
    output [31:0] r,        //余数    
    output reg busy        //除法器忙标志位
    );

    reg flag1=0;
    reg flag2=0;
    reg srt=0;
    reg [5:0] count=0;
    reg [63:0] reg_rq;  //高r,低q
    reg [63:0] reg_b;   //除数
    
    assign q = busy ? q:reg_rq[31:0];
    assign r = busy ? r:reg_rq[63:32];
    
    // 判断启动模块
    always @(negedge clock) begin   // 下降沿检验start信号
        if(start == 1)begin
            srt <= 1;
        end
    end
    
    // 主时序模块
    always @(posedge clock or posedge reset) begin
        if (reset == 1) begin
            count <= 6'b0;  busy <= 0;
            reg_rq <= 0;    reg_b <= 0;
            flag1 <= 0;     flag2 <= 0;
            srt <= 0;
            end
        else begin
            if (busy) begin
                reg_rq <= {reg_rq[62:0],1'b0};
                flag1 <= 1;
                count <= count + 1;
                flag2 <= 1; end
            else if (srt) begin
                if (divisor==0) begin
                    reg_rq <= 64'bx; busy <= 0; srt <= 0; end
                else begin
                    reg_rq <= {32'b0,dividend};
                    reg_b <= {divisor,32'b0};
                    count <= 6'b0;
                    busy <= 1'b1;
    end end end end
    
    // 运算模块
    always @(posedge flag1) begin
        if(reg_rq[63:32] >= reg_b[63:32]) begin
            reg_rq <= reg_rq - reg_b + 1'b1; end
        flag1 <= 0;
    end
    
    // 运算结束模块
    always @(posedge flag2) begin
        if (count == 6'b100000) begin
            srt <= 0; busy <= 0; count <= 0; end
        flag2 <= 0;
    end
endmodule