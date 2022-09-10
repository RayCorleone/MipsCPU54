`timescale 1ns / 1ps

module DIVU(
    input [31:0] dividend,  //������
    input [31:0] divisor,   //����
    input start,            //������������
    input clock,
    input reset,
    output [31:0] q,        //��
    output [31:0] r,        //����    
    output reg busy        //������æ��־λ
    );

    reg flag1=0;
    reg flag2=0;
    reg srt=0;
    reg [5:0] count=0;
    reg [63:0] reg_rq;  //��r,��q
    reg [63:0] reg_b;   //����
    
    assign q = busy ? q:reg_rq[31:0];
    assign r = busy ? r:reg_rq[63:32];
    
    // �ж�����ģ��
    always @(negedge clock) begin   // �½��ؼ���start�ź�
        if(start == 1)begin
            srt <= 1;
        end
    end
    
    // ��ʱ��ģ��
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
    
    // ����ģ��
    always @(posedge flag1) begin
        if(reg_rq[63:32] >= reg_b[63:32]) begin
            reg_rq <= reg_rq - reg_b + 1'b1; end
        flag1 <= 0;
    end
    
    // �������ģ��
    always @(posedge flag2) begin
        if (count == 6'b100000) begin
            srt <= 0; busy <= 0; count <= 0; end
        flag2 <= 0;
    end
endmodule