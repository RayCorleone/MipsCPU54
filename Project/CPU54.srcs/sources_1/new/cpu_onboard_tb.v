`timescale 1ns / 1ps

// �°�ģ�����1��ѡ�����pc��inst
module cpu_onboard_test_tb;
    reg clk_in;
    reg reset;
    reg choose;
    reg [7:0] o_seg;
    reg [7:0] o_sel;

    cpu_onboard_test cpu_onboard_test_1(.clk_in(clk_in),.reset(reset),.choose(choose),.o_seg(o_seg),.o_sel(o_sel));
    
    initial begin
        choose = 0;
        clk_in = 0; reset = 1; #0.5 reset = 0;
    end

    always begin
        #1 clk_in = ~clk_in;
    end
endmodule

// �°�ģ�����2�������޸Ĳ���data���°����ģ��
module cpu_onboard_tb;
    reg clk_in;
    reg reset;
    reg [15:0] sw;
    reg [7:0] o_seg;
    reg [7:0] o_sel;

    cpu_onboard cpu_onboard_1(.clk_in(clk_in),.reset(reset),.sw(sw),.o_seg(o_seg),.o_sel(o_sel));

    initial begin
        sw = 16'h0001;
        clk_in = 0; reset = 1; #0.5 reset = 0;
    end
        
    always begin
        #1 clk_in = ~clk_in;
    end
endmodule