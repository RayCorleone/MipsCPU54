`timescale 1ns / 1ps

module control(
    input zero,
    input negative,
    input [31:0] inst,

    output RF_w,DM_w,lo_w,hi_w,
    output exception,eret,mfc0,mtc0,
    output ja,jalr,sign,start,

    output alua_mux,
    output [3:0] aluc,
    output [4:0] cause,
    output [1:0] alub_mux,
    output [1:0] DM_itpye,
    output [1:0] RFwaddr_mux,
    output [2:0] DM_otpye,
    output [2:0] hiin_mux,
    output [2:0] loin_mux,
    output [2:0] nextpc_mux,
    output [2:0] RFwdata_mux
    );

    wire [5:0] op;
    wire [5:0] func; 
    wire [4:0] rs,rt,rd,sa;

    assign op = inst[31:26];
    assign func = inst[5:0];
    assign rs = inst[25:21];
    assign rt = inst[20:16];
    assign rd = inst[15:11];
    assign sa = inst[10:6];

    wire r_type = ~(op[5]|op[4]|op[3]|op[2]|op[1]|op[0]);
    wire ADD = r_type&func[5]&~func[4]&~func[3]&~func[2]&~func[1]&~func[0];
    wire ADDU = r_type&func[5]&~func[4]&~func[3]&~func[2]&~func[1]&func[0];
    wire SUB = r_type&func[5]&~func[4]&~func[3]&~func[2]&func[1]&~func[0];
    wire SUBU = r_type&func[5]&~func[4]&~func[3]&~func[2]&func[1]&func[0];
    wire AND = r_type&func[5]&~func[4]&~func[3]&func[2]&~func[1]&~func[0];
    wire OR = r_type&func[5]&~func[4]&~func[3]&func[2]&~func[1]&func[0];
    wire XOR = r_type&func[5]&~func[4]&~func[3]&func[2]&func[1]&~func[0];
    wire NOR = r_type&func[5]&~func[4]&~func[3]&func[2]&func[1]&func[0];
    wire SLT = r_type&func[5]&~func[4]&func[3]&~func[2]&func[1]&~func[0];
    wire SLTU = r_type&func[5]&~func[4]&func[3]&~func[2]&func[1]&func[0];
    wire SLL = r_type&~func[5]&~func[4]&~func[3]&~func[2]&~func[1]&~func[0];
    wire SRL = r_type&~func[5]&~func[4]&~func[3]&~func[2]&func[1]&~func[0];
    wire SRA = r_type&~func[5]&~func[4]&~func[3]&~func[2]&func[1]&func[0];
    wire SLLV = r_type&~func[5]&~func[4]&~func[3]&func[2]&~func[1]&~func[0];
    wire SRLV = r_type&~func[5]&~func[4]&~func[3]&func[2]&func[1]&~func[0];
    wire SRAV = r_type&~func[5]&~func[4]&~func[3]&func[2]&func[1]&func[0];
    wire JR = r_type&~func[5]&~func[4]&func[3]&~func[2]&~func[1]&~func[0];
    wire ADDI = ~op[5]&~op[4]&op[3]&~op[2]&~op[1]&~op[0];
    wire ADDIU = ~op[5]&~op[4]&op[3]&~op[2]&~op[1]&op[0];
    wire ANDI = ~op[5]&~op[4]&op[3]&op[2]&~op[1]&~op[0];
    wire ORI = ~op[5]&~op[4]&op[3]&op[2]&~op[1]&op[0];
    wire XORI = ~op[5]&~op[4]&op[3]&op[2]&op[1]&~op[0];
    wire LUI = ~op[5]&~op[4]&op[3]&op[2]&op[1]&op[0];
    wire LW = op[5]&~op[4]&~op[3]&~op[2]&op[1]&op[0];
    wire SW = op[5]&~op[4]&op[3]&~op[2]&op[1]&op[0];
    wire BEQ = ~op[5]&~op[4]&~op[3]&op[2]&~op[1]&~op[0];
    wire BNE = ~op[5]&~op[4]&~op[3]&op[2]&~op[1]&op[0];
    wire SLTI = ~op[5]&~op[4]&op[3]&~op[2]&op[1]&~op[0];
    wire SLTIU = ~op[5]&~op[4]&op[3]&~op[2]&op[1]&op[0];
    wire J = ~op[5]&~op[4]&~op[3]&~op[2]&op[1]&~op[0];
    wire JAL = ~op[5]&~op[4]&~op[3]&~op[2]&op[1]&op[0];
    wire LBU = (op==6'b100100);
    wire LHU = (op==6'b100101);
    wire LB = (op==6'b100000);
    wire LH = (op==6'b100001);
    wire SB = (op==6'b101000);
    wire SH = (op==6'b101001);
    wire BGEZ = (op==6'b000001 && rt==5'b00001);
    wire TEQ = (op==6'b000000 && func==6'b110100);
    wire MULT = (op==6'b011100 && func==6'b000010); 
    wire BREAK = (op==6'b000000 && func==6'b001101);
    wire SYSCALL = (op==6'b000000 && func==6'b001100);
    wire CLZ = (op==6'b011100 && sa==5'b00000 && func==6'b100000);
    wire DIVU = (op==6'b000000 && rd==5'b00000 && func==6'b011011); 
    wire JALR = (op==6'b000000 && rt==5'b00000 && func==6'b001001);
    wire MULTU = (op==6'b000000 && rd==5'b00000 && func==6'b011001); 
    wire DIV = (op==6'b000000 && rd==5'b00000 && sa==5'b00000 && func==6'b011010); 
    wire MFC0 = (op==6'b010000 && rs==5'b00000 && sa==5'b00000 && func==6'b000000);
    wire MTC0 = (op==6'b010000 && rs==5'b00100 && sa==5'b00000 && func==6'b000000);
    wire MFHI = (op==6'b000000 && rs==5'b00000 && rt==5'b00000 && sa==5'b00000 && func==6'b010000);
    wire MFLO = (op==6'b000000 && rs==5'b00000 && rt==5'b00000 && sa==5'b00000 && func==6'b010010);
    wire MTHI = (op==6'b000000 && rd==5'b00000 && rt==5'b00000 && sa==5'b00000 && func==6'b010001);
    wire MTLO = (op==6'b000000 && rd==5'b00000 && rt==5'b00000 && sa==5'b00000 && func==6'b010011);
    wire ERET = (op==6'b010000 && rs==5'b10000 && rt==5'b00000 && rd==5'b00000 && sa==5'b00000 && func==6'b011000);

    ///////////////////////////// 控制信号
    assign jalr = JALR;
    assign eret = ERET;
    assign mfc0 = MFC0;
    assign mtc0 = MTC0;
    assign ja = JAL|JALR;
    assign DM_w = SW|SB|SH;
    assign start = DIV|DIVU;
    assign lo_w = MTLO|MULT|MULTU|DIV|DIVU;
    assign hi_w = MTHI|MULT|MULTU|DIV|DIVU;
    assign exception = SYSCALL|BREAK|ERET|(TEQ&zero);
    assign sign = ADDI|ADDIU|SLTI|SLTIU|LW|SW|LB|LH|LBU|LHU|SB|SH;
    assign cause = (SYSCALL)?5'b01000:(BREAK)?5'b01001:(TEQ)?5'b01101:5'b00000;
    assign RF_w = ~(BEQ|BNE|J|JR|SW|DIV|DIVU|MULTU|BGEZ|SB|SH|BREAK|SYSCALL|ERET|MTHI|MTLO|TEQ|MTC0);

    ///////////////////////////// 选择信号
    assign DM_itpye[1] = SB;
    assign DM_itpye[0] = SH;
    assign DM_otpye[2] = LW;
    assign DM_otpye[1] = LBU|LHU;
    assign DM_otpye[0] = LB|LBU;
    assign aluc[3] = LUI|SLL|SLLV|SLT|SLTI|SLTIU|SLTU|SRA|SRAV|SRL|SRLV;
    assign aluc[2] = AND|ANDI|NOR|OR|ORI|SLL|SLLV|SRA|SRAV|SRL|SRLV|XOR|XORI;
    assign aluc[1] = ADD|ADDI|BEQ|BNE|LW|NOR|SLL|SLLV|SLT|SLTI|SLTIU|SLTU|SUB|SW|XOR|XORI|BGEZ|TEQ|LBU|LHU|LB|LH|SB|SH;
    assign aluc[0] = BEQ|BNE|NOR|OR|ORI|SLT|SLTI|SRL|SRLV|SUB|SUBU|BGEZ|TEQ;
    assign alua_mux = SLL|SRA|SRL;
    assign alub_mux[1] = BGEZ;
    assign alub_mux[0] = ADDI|ADDIU|SLTI|SLTIU|ANDI|ORI|XORI|LUI|LW|SW|LBU|LHU|LB|LH|SB|SH;
    assign RFwaddr_mux[1] = JAL|JALR;
    assign RFwaddr_mux[0] = ADDI|ADDIU|ANDI|LUI|LW|ORI|SLTI|SLTIU|SW|XORI|LBU|LHU|LB|LH|MFC0;
    assign hiin_mux[2] = MTHI;
    assign hiin_mux[1] = MULT|MULTU;
    assign hiin_mux[0] = DIVU|MULTU;
    assign loin_mux[2] = MTLO;
    assign loin_mux[1] = MULT|MULTU;
    assign loin_mux[0] = DIVU|MULTU;
    assign nextpc_mux[2] = BREAK|SYSCALL|ERET|TEQ;
    assign nextpc_mux[1] = J|JR|JAL|JALR;
    assign nextpc_mux[0] = (BEQ&zero)|(BNE&~zero)|(BGEZ&~negative)|JR|JALR;
    assign RFwdata_mux[2] = MULT|MFLO|MFC0|CLZ;
    assign RFwdata_mux[1] = JAL|JALR|MFHI|MFC0|CLZ;
    assign RFwdata_mux[0] = CLZ|MFLO|MFHI|LW|LBU|LHU|LB|LH;
endmodule