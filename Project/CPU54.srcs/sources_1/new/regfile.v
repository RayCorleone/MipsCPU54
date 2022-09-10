`timescale 1ns / 1ps

module regfile(
    input clk,
    input rst,
    input write,
    input error,
    input [4:0] rna,
    input [4:0] rnb,
    input [4:0] waddr,
    input [31:0] idata,
    output [31:0] odata1,
    output [31:0] odata2
    );
    
    integer i;
    reg [31:0] array_reg[31:0];
     
    //�ӼĴ�����ȡ����
    assign odata1 = (rna)?(array_reg[rna]):0;
    assign odata2 = (rnb)?(array_reg[rnb]):0;
    
    //������д��Ĵ���
    always@(posedge clk or posedge rst) begin
        if(rst==1) begin
            for(i=0;i<32;i=i+1) begin
                array_reg[i]<=0; end end
        else if(waddr != 0 && write && error != 1) begin
            array_reg[waddr]<=idata; end
    end
endmodule