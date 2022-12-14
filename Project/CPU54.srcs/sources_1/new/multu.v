`timescale 1ns / 1ps

// 非下板乘法器
module MULTU(   //无符号乘法器
    input reset,    //复位信号，高电平有效
    input [31:0] a, //输入数 a(被乘数)
    input [31:0] b, //输入数 b（乘数）
    output [63:0] z //乘积输出 z
    );
    
    reg [63:0] stored00=0, stored01=0, stored02=0, stored03=0;
    reg [63:0] stored04=0, stored05=0, stored06=0, stored07=0;
    reg [63:0] stored08=0, stored09=0, stored10=0, stored11=0;
    reg [63:0] stored12=0, stored13=0, stored14=0, stored15=0;
    reg [63:0] stored16=0, stored17=0, stored18=0, stored19=0;
    reg [63:0] stored20=0, stored21=0, stored22=0, stored23=0;
    reg [63:0] stored24=0, stored25=0, stored26=0, stored27=0;
    reg [63:0] stored28=0, stored29=0, stored30=0, stored31=0;
    reg flag1=0;
    reg [63:0] add00_01, add02_03, add04_05, add06_07;
    reg [63:0] add08_09, add10_11, add12_13, add14_15;
    reg [63:0] add16_17, add18_19, add20_21, add22_23;
    reg [63:0] add24_25, add26_27, add28_29, add30_31;
    reg flag2=0;
    reg [63:0] add00_03, add04_07, add08_11, add12_15;
    reg [63:0] add16_19, add20_23, add24_27, add28_31;
    reg flag3=0;
    reg [63:0] add00_07, add08_15, add16_23, add24_31;
    reg flag4=0;
    reg [63:0] add00_15, add16_31;
    reg flag5=0;
    reg [63:0] temp;
    
    assign z = temp;
    always @(*) begin
        if(reset) begin
            temp <= 0; flag1 <= 0; flag2 <= 0; flag3 <= 0; flag4 <= 0; flag5 <= 0;
            stored00 <= 0; stored01 <= 0; stored02 <= 0; stored03 <= 0;
            stored04 <= 0; stored05 <= 0; stored06 <= 0; stored07 <= 0;
            stored08 <= 0; stored09 <= 0; stored10 <= 0; stored11 <= 0;
            stored12 <= 0; stored13 <= 0; stored14 <= 0; stored15 <= 0;
            stored16 <= 0; stored17 <= 0; stored18 <= 0; stored19 <= 0;
            stored20 <= 0; stored21 <= 0; stored22 <= 0; stored23 <= 0;
            stored24 <= 0; stored25 <= 0; stored26 <= 0; stored27 <= 0;
            stored28 <= 0; stored29 <= 0; stored30 <= 0; stored31 <= 0;
            
            add00_01 <= 0; add02_03 <= 0; add04_05 <= 0; add06_07 <= 0;
            add08_09 <= 0; add10_11 <= 0; add12_13 <= 0; add14_15 <= 0;
            add16_17 <= 0; add18_19 <= 0; add20_21 <= 0; add22_23 <= 0;
            add24_25 <= 0; add26_27 <= 0; add28_29 <= 0; add30_31 <= 0;
            add00_03 <= 0; add04_07 <= 0; add08_11 <= 0; add12_15 <= 0;
            add16_19 <= 0; add20_23 <= 0; add24_27 <= 0; add28_31 <= 0;
            add00_07 <= 0; add08_15 <= 0; add16_23 <= 0; add24_31 <= 0;
            add00_15 <= 0; add16_31 <= 0;
            end
        else begin
            stored00 <= b[0]? {32'b0, a} :64'b0;            stored01 <= b[1]? {31'b0, a, 1'b0} :64'b0;
            stored02 <= b[2]? {30'b0, a, 2'b0} :64'b0;      stored03 <= b[3]? {29'b0, a, 3'b0} :64'b0;
            stored04 <= b[4]? {28'b0, a, 4'b0} :64'b0;      stored05 <= b[5]? {27'b0, a, 5'b0} :64'b0;
            stored06 <= b[6]? {26'b0, a, 6'b0} :64'b0;      stored07 <= b[7]? {25'b0, a, 7'b0} :64'b0;
            stored08 <= b[8]? {24'b0, a, 8'b0} :64'b0;      stored09 <= b[9]? {23'b0, a, 9'b0} :64'b0;
            stored10 <= b[10]? {22'b0, a, 10'b0} :64'b0;    stored11 <= b[11]? {21'b0, a, 11'b0} :64'b0;
            stored12 <= b[12]? {20'b0, a, 12'b0} :64'b0;    stored13 <= b[13]? {19'b0, a, 13'b0} :64'b0;
            stored14 <= b[14]? {18'b0, a, 14'b0} :64'b0;    stored15 <= b[15]? {17'b0, a, 15'b0} :64'b0;
            stored16 <= b[16]? {16'b0, a, 16'b0} :64'b0;    stored17 <= b[17]? {15'b0, a, 17'b0} :64'b0;
            stored18 <= b[18]? {14'b0, a, 18'b0} :64'b0;    stored19 <= b[19]? {13'b0, a, 19'b0} :64'b0;
            stored20 <= b[20]? {12'b0, a, 20'b0} :64'b0;    stored21 <= b[21]? {11'b0, a, 21'b0} :64'b0;
            stored22 <= b[22]? {10'b0, a, 22'b0} :64'b0;    stored23 <= b[23]? {9'b0, a, 23'b0} :64'b0;
            stored24 <= b[24]? {8'b0, a, 24'b0} :64'b0;     stored25 <= b[25]? {7'b0, a, 25'b0} :64'b0;
            stored26 <= b[26]? {6'b0, a, 26'b0} :64'b0;     stored27 <= b[27]? {5'b0, a, 27'b0} :64'b0;
            stored28 <= b[28]? {4'b0, a, 28'b0} :64'b0;     stored29 <= b[29]? {3'b0, a, 29'b0} :64'b0;
            stored30 <= b[30]? {2'b0, a, 30'b0} :64'b0;     stored31 <= b[31]? {1'b0, a, 31'b0} :64'b0;
            flag1 <= 1;
        end
    end
    
    always @(posedge flag1) begin
        if (flag1==1) begin
            add00_01 <= stored00+stored01;   add02_03 <= stored02+stored03;
            add04_05 <= stored04+stored05;   add06_07 <= stored06+stored07;
            add08_09 <= stored08+stored09;   add10_11 <= stored10+stored11;
            add12_13 <= stored12+stored13;   add14_15 <= stored14+stored15;
            add16_17 <= stored16+stored17;   add18_19 <= stored18+stored19;
            add20_21 <= stored20+stored21;   add22_23 <= stored22+stored23;
            add24_25 <= stored24+stored25;   add26_27 <= stored26+stored27;
            add28_29 <= stored28+stored29;   add30_31 <= stored30+stored31;
            flag2 <= 1; flag1 <= 0;
        end
    end
    
    always @(posedge flag2) begin
        if (flag2==1) begin
            add00_03 <= add00_01+add02_03;   add04_07 <= add04_05+add06_07;
            add08_11 <= add08_09+add10_11;   add12_15 <= add12_13+add14_15;
            add16_19 <= add16_17+add18_19;   add20_23 <= add20_21+add22_23;
            add24_27 <= add24_25+add26_27;   add28_31 <= add28_29+add30_31;
            flag3 <= 1; flag2 <= 0;
        end
    end
    
    always @(posedge flag3) begin
        if (flag3==1) begin
            add00_07 <= add00_03+add04_07;   add08_15 <= add08_11+add12_15;
            add16_23 <= add16_19+add20_23;   add24_31 <= add24_27+add28_31;
            flag4 <= 1; flag3 <= 0;
        end
    end
    
    always @(posedge flag4) begin
        if (flag4==1) begin
            add00_15 <= add00_07+add08_15;   add16_31 <= add16_23+add24_31;
            flag5 <= 1; flag4 <= 0;
        end
    end
    
    always @(posedge flag5) begin
        if (flag5==1) begin
            temp <= add00_15+add16_31;
            flag5 <= 0;
        end
    end
endmodule

// 下板乘法器
/*module MULTU(   //无符号乘法器
    input reset,    //复位信号，高电平有效
    input [31:0] a, //输入数 a(被乘数)
    input [31:0] b, //输入数 b（乘数）
    output [63:0] z //乘积输出 z
    );
    
    reg [2:0] state;
    reg [63:0] stored00=0, stored01=0, stored02=0, stored03=0;
    reg [63:0] stored04=0, stored05=0, stored06=0, stored07=0;
    reg [63:0] stored08=0, stored09=0, stored10=0, stored11=0;
    reg [63:0] stored12=0, stored13=0, stored14=0, stored15=0;
    reg [63:0] stored16=0, stored17=0, stored18=0, stored19=0;
    reg [63:0] stored20=0, stored21=0, stored22=0, stored23=0;
    reg [63:0] stored24=0, stored25=0, stored26=0, stored27=0;
    reg [63:0] stored28=0, stored29=0, stored30=0, stored31=0;
    reg [63:0] add00_01, add02_03, add04_05, add06_07;
    reg [63:0] add08_09, add10_11, add12_13, add14_15;
    reg [63:0] add16_17, add18_19, add20_21, add22_23;
    reg [63:0] add24_25, add26_27, add28_29, add30_31;
    reg [63:0] add00_03, add04_07, add08_11, add12_15;
    reg [63:0] add16_19, add20_23, add24_27, add28_31;
    reg [63:0] add00_07, add08_15, add16_23, add24_31;
    reg [63:0] add00_15, add16_31;
    reg [63:0] temp;
    
    assign z = temp;
    always @(*) begin
        if(reset) begin
            temp <= 0; state <= 0;
            stored00 <= 0; stored01 <= 0; stored02 <= 0; stored03 <= 0;
            stored04 <= 0; stored05 <= 0; stored06 <= 0; stored07 <= 0;
            stored08 <= 0; stored09 <= 0; stored10 <= 0; stored11 <= 0;
            stored12 <= 0; stored13 <= 0; stored14 <= 0; stored15 <= 0;
            stored16 <= 0; stored17 <= 0; stored18 <= 0; stored19 <= 0;
            stored20 <= 0; stored21 <= 0; stored22 <= 0; stored23 <= 0;
            stored24 <= 0; stored25 <= 0; stored26 <= 0; stored27 <= 0;
            stored28 <= 0; stored29 <= 0; stored30 <= 0; stored31 <= 0;
            
            add00_01 <= 0; add02_03 <= 0; add04_05 <= 0; add06_07 <= 0;
            add08_09 <= 0; add10_11 <= 0; add12_13 <= 0; add14_15 <= 0;
            add16_17 <= 0; add18_19 <= 0; add20_21 <= 0; add22_23 <= 0;
            add24_25 <= 0; add26_27 <= 0; add28_29 <= 0; add30_31 <= 0;
            add00_03 <= 0; add04_07 <= 0; add08_11 <= 0; add12_15 <= 0;
            add16_19 <= 0; add20_23 <= 0; add24_27 <= 0; add28_31 <= 0;
            add00_07 <= 0; add08_15 <= 0; add16_23 <= 0; add24_31 <= 0;
            add00_15 <= 0; add16_31 <= 0;
            end
        else begin
            case(state)
            3'b000:begin
                stored00 <= b[0]? {32'b0, a} :64'b0;            stored01 <= b[1]? {31'b0, a, 1'b0} :64'b0;
                stored02 <= b[2]? {30'b0, a, 2'b0} :64'b0;      stored03 <= b[3]? {29'b0, a, 3'b0} :64'b0;
                stored04 <= b[4]? {28'b0, a, 4'b0} :64'b0;      stored05 <= b[5]? {27'b0, a, 5'b0} :64'b0;
                stored06 <= b[6]? {26'b0, a, 6'b0} :64'b0;      stored07 <= b[7]? {25'b0, a, 7'b0} :64'b0;
                stored08 <= b[8]? {24'b0, a, 8'b0} :64'b0;      stored09 <= b[9]? {23'b0, a, 9'b0} :64'b0;
                stored10 <= b[10]? {22'b0, a, 10'b0} :64'b0;    stored11 <= b[11]? {21'b0, a, 11'b0} :64'b0;
                stored12 <= b[12]? {20'b0, a, 12'b0} :64'b0;    stored13 <= b[13]? {19'b0, a, 13'b0} :64'b0;
                stored14 <= b[14]? {18'b0, a, 14'b0} :64'b0;    stored15 <= b[15]? {17'b0, a, 15'b0} :64'b0;
                stored16 <= b[16]? {16'b0, a, 16'b0} :64'b0;    stored17 <= b[17]? {15'b0, a, 17'b0} :64'b0;
                stored18 <= b[18]? {14'b0, a, 18'b0} :64'b0;    stored19 <= b[19]? {13'b0, a, 19'b0} :64'b0;
                stored20 <= b[20]? {12'b0, a, 20'b0} :64'b0;    stored21 <= b[21]? {11'b0, a, 21'b0} :64'b0;
                stored22 <= b[22]? {10'b0, a, 22'b0} :64'b0;    stored23 <= b[23]? {9'b0, a, 23'b0} :64'b0;
                stored24 <= b[24]? {8'b0, a, 24'b0} :64'b0;     stored25 <= b[25]? {7'b0, a, 25'b0} :64'b0;
                stored26 <= b[26]? {6'b0, a, 26'b0} :64'b0;     stored27 <= b[27]? {5'b0, a, 27'b0} :64'b0;
                stored28 <= b[28]? {4'b0, a, 28'b0} :64'b0;     stored29 <= b[29]? {3'b0, a, 29'b0} :64'b0;
                stored30 <= b[30]? {2'b0, a, 30'b0} :64'b0;     stored31 <= b[31]? {1'b0, a, 31'b0} :64'b0;
                state <= 1; end
            3'b001:begin
                add00_01 <= stored00+stored01;   add02_03 <= stored02+stored03;
                add04_05 <= stored04+stored05;   add06_07 <= stored06+stored07;
                add08_09 <= stored08+stored09;   add10_11 <= stored10+stored11;
                add12_13 <= stored12+stored13;   add14_15 <= stored14+stored15;
                add16_17 <= stored16+stored17;   add18_19 <= stored18+stored19;
                add20_21 <= stored20+stored21;   add22_23 <= stored22+stored23;
                add24_25 <= stored24+stored25;   add26_27 <= stored26+stored27;
                add28_29 <= stored28+stored29;   add30_31 <= stored30+stored31;
                state <= 2; end
            3'b010:begin
                add00_03 <= add00_01+add02_03;   add04_07 <= add04_05+add06_07;
                add08_11 <= add08_09+add10_11;   add12_15 <= add12_13+add14_15;
                add16_19 <= add16_17+add18_19;   add20_23 <= add20_21+add22_23;
                add24_27 <= add24_25+add26_27;   add28_31 <= add28_29+add30_31;
                state <= 3; end
            3'b011:begin
                add00_07 <= add00_03+add04_07;   add08_15 <= add08_11+add12_15;
                add16_23 <= add16_19+add20_23;   add24_31 <= add24_27+add28_31;
                state <= 4; end
            3'b100:begin
                add00_15 <= add00_07+add08_15;   add16_31 <= add16_23+add24_31;
                state <= 5; end
            3'b101:begin
                temp <= add00_15+add16_31;
                state <= 0; end
            endcase
        end
    end
endmodule*/