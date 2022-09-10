`timescale 1ns / 1ps
/////////////////////////////////////////////
// ��ע��
//   1.MULTָ�� ʵ�ʶ�Ӧ MIPS �е� MULָ��
//   2.JALRָ����� jalr rs ��ʽ��Ĭ�ϴ� $31
/////////////////////////////////////////////

module cpu(
    input clk_in,
    input reset,
    input [31:0] inst,
    input [31:0] DM_dt,
    output DM_w,
    output [31:0] pc,
    output [1:0] DM_itpye,
    output [31:0] alu_dt,
    output [31:0] rt_dt
    );

    // �����б��ź� ////////////////////////////////////////////////////
    wire ja;                // �Ƿ���JAL��JALR(����RF_waddr�ж�)
    wire jalr;              // �Ƿ���JALR(����PC��ȡ�ж�)
    wire sign;              // ext16���ű�־
    wire busy;              // ����æµ�ź�
    wire start;             // ���������ź�
    wire RF_w;              // regд�ź�
    wire lo_w, hi_w;        // HI��LOд�ź�
    wire mfc0;              // CP0��mfc0
    wire mtc0;              // CP0��mtc0
    wire eret;              // CP0��eret
    wire exception;         // CP0��exception
    wire [4:0] cause;       // CP0��cause
    wire div_busy,divu_busy;// ������æµ�ź�

    // ALU������� ////////////////////////////////////////////////////
    wire zero;              // ALU�����־λzero
    wire overflow;          // ALU�����־λoverflow
    wire negative;          // ALU�����־λnegative
    wire [3:0] aluc;        // ALU�����ź�
    wire [31:0] alua;       // ALU����������a
    wire [31:0] alub;       // ALU����������b

    // ��Ҫ����ͨ· ////////////////////////////////////////////////////
    wire [4:0] RF_waddr;    // regд���ַ
    wire [31:0] RF_wdata;   // regд������
    wire [31:0] clz_dt;     // CLZ�������
    wire [31:0] cp0_dt;     // CP0�������
    wire [31:0] cnw_dt;     // CNW�������
    wire [31:0] hi_dt;      // HI�������
    wire [31:0] lo_dt;      // LO�������
    wire [31:0] hi_in;      // HI����������
    wire [31:0] lo_in;      // LO����������
    wire [31:0] div_q;      // DIV��q
    wire [31:0] div_r;      // DIV��r
    wire [31:0] divu_q;     // DIVU��q
    wire [31:0] divu_r;     // DIVU��r
    wire [31:0] mult_h;     // MULT�ĸ�λ
    wire [31:0] mult_l;     // MULT�ĵ�λ
    wire [31:0] multu_h;    // MULT�ĸ�λ
    wire [31:0] multu_l;    // MULT�ĵ�λ
    wire [31:0] status;     // CP0��status
    wire [31:0] offset32;   // offset << 2 ��չ
    wire [31:0] sa32;       // sa ��չ
    wire [31:0] imm32;      // imme(offset) ��չ
    wire [31:0] epc;        // CP0���ص�ԭ��ַ
    wire [31:0] pc_add8;    // jal��д��reg������

    // PC�ź���Դ ////////////////////////////////////////////////////
    wire [31:0] next_pc;    // ѡ����������pc
    wire [31:0] npc_dt;     // ʼ����npc_dt=pc+4
    wire [31:0] pc_add;     // beq bne bgez: offset32 + npc
    wire [31:0] II_dt;      // j jal: pc[31:28]��index
    wire [31:0] rs_dt;      // jr: reg��rsλ�ô洢������
    wire [31:0] epc_dt;     // break syscall eret: CP0���صĵ�ַ

    // ��Ҫѡ���ź� ////////////////////////////////////////////////////
    wire alua_mux;          // 2��
    wire [1:0] alub_mux;    // 3��
    wire [1:0] RFwaddr_mux; // 3��
    wire [2:0] DM_otpye;    // 5��
    wire [2:0] hiin_mux;    // 5��
    wire [2:0] loin_mux;    // 5��
    wire [2:0] nextpc_mux;  // 5��
    wire [2:0] RFwdata_mux; // 8��

    // ��ֵ��ģ������ ////////////////////////////////////////////////////
    assign busy = div_busy|divu_busy;
    assign II_dt = {{pc[31:28]}, {inst[25:0]}, {2'b00}};
    assign epc_dt = epc + 32'h00400000;

    CLZ CLZ_1(rs_dt, clz_dt);
    MULT MULT_1(reset, rs_dt, rt_dt, {mult_h,mult_l});
    MULTU MULTU_1(reset, rs_dt, rt_dt, {multu_h,multu_l});
    ALU ALU_1(alua, alub, aluc, alu_dt, zero, negative, overflow);
    DIV DIV_1(rs_dt, rt_dt, start, clk_in, reset, div_q, div_r, div_busy);
    DIVU DIVU_1(rs_dt, rt_dt, start, clk_in, reset, divu_q, divu_r, divu_busy);
    control control_1(zero,negative,inst,RF_w,DM_w,lo_w,hi_w,exception,eret,mfc0,mtc0,ja,jalr,sign,start,
        alua_mux,aluc,cause,alub_mux,DM_itpye,RFwaddr_mux,DM_otpye,hiin_mux,loin_mux,nextpc_mux,RFwdata_mux);
    regfile cpu_ref(clk_in, reset, RF_w, overflow, inst[25:21], inst[20:16], RF_waddr, RF_wdata, rs_dt, rt_dt);
    CP0 CP0_1(clk_in, reset, mfc0, mtc0, pc-32'h00400000, inst[15:11], rt_dt, exception, eret, cause, cp0_dt, status, epc);
        
    add add_8(pc, 4, pc_add8);
    NPC NPC_1(reset, pc, npc_dt);
    add add_1(offset32, npc_dt, pc_add);

    ext5 ext5_1(inst[10:6], sa32);
    ext16 ext16_1(sign, inst[15:0], imm32);
    ext18 ext18_1(inst[15:0], offset32);

    HILO LO_1(clk_in, reset, lo_w, lo_in, lo_dt);
    HILO HI_1(clk_in, reset, hi_w, hi_in, hi_dt);
    PC PC_1(clk_in, reset, busy, jalr, next_pc, pc);

    CNW CNW_1(alu_dt[1:0],DM_otpye,DM_dt,cnw_dt);
    assign alua =   (alua_mux==1'b0) ? rs_dt: sa32;
    assign alub =   (alub_mux==2'b00) ? rt_dt:  (alub_mux==2'b01) ? imm32: 0;
    assign hi_in =  (hiin_mux==3'b000) ? div_r: (hiin_mux==3'b001) ? divu_r:
                    (hiin_mux==3'b010) ? mult_h:(hiin_mux==3'b011) ? multu_h: rs_dt;
    assign lo_in =  (loin_mux==3'b000) ? div_q: (loin_mux==3'b001) ? divu_q:
                    (loin_mux==3'b010) ? mult_l:(loin_mux==3'b011) ? multu_l: rs_dt;
    assign RF_waddr =   (RFwaddr_mux==2'b00) ? inst[15:11]: (RFwaddr_mux==2'b01) ? inst[20:16]: 5'b11111;
    assign next_pc =    (nextpc_mux==3'b000) ? npc_dt:  (nextpc_mux==3'b001) ? pc_add:
                        (nextpc_mux==3'b010) ? II_dt:   (nextpc_mux==3'b011) ? rs_dt: epc_dt;
    assign RF_wdata =   (RFwdata_mux==3'b000) ? alu_dt: (RFwdata_mux==3'b001) ? cnw_dt: (RFwdata_mux==3'b010) ? pc_add8:
                        (RFwdata_mux==3'b011) ? hi_dt:  (RFwdata_mux==3'b100) ? mult_l: (RFwdata_mux==3'b101) ? lo_dt:
                        (RFwdata_mux==3'b110) ? cp0_dt: clz_dt;
endmodule