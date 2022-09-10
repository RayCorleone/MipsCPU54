`timescale 1ns / 1ps
/////////////////////////////////////////////
// 备注：
//   1.MULT指令 实际对应 MIPS 中的 MUL指令
//   2.JALR指令采用 jalr rs 格式，默认存 $31
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

    // 部分判别信号 ////////////////////////////////////////////////////
    wire ja;                // 是否是JAL或JALR(用于RF_waddr判断)
    wire jalr;              // 是否是JALR(用于PC读取判断)
    wire sign;              // ext16符号标志
    wire busy;              // 除法忙碌信号
    wire start;             // 除法启动信号
    wire RF_w;              // reg写信号
    wire lo_w, hi_w;        // HI、LO写信号
    wire mfc0;              // CP0的mfc0
    wire mtc0;              // CP0的mtc0
    wire eret;              // CP0的eret
    wire exception;         // CP0的exception
    wire [4:0] cause;       // CP0的cause
    wire div_busy,divu_busy;// 除法器忙碌信号

    // ALU相关数据 ////////////////////////////////////////////////////
    wire zero;              // ALU运算标志位zero
    wire overflow;          // ALU运算标志位overflow
    wire negative;          // ALU运算标志位negative
    wire [3:0] aluc;        // ALU控制信号
    wire [31:0] alua;       // ALU的输入数据a
    wire [31:0] alub;       // ALU的输入数据b

    // 主要数据通路 ////////////////////////////////////////////////////
    wire [4:0] RF_waddr;    // reg写入地址
    wire [31:0] RF_wdata;   // reg写入数据
    wire [31:0] clz_dt;     // CLZ输出数据
    wire [31:0] cp0_dt;     // CP0输出数据
    wire [31:0] cnw_dt;     // CNW输出数据
    wire [31:0] hi_dt;      // HI输出数据
    wire [31:0] lo_dt;      // LO输出数据
    wire [31:0] hi_in;      // HI的输入数据
    wire [31:0] lo_in;      // LO的输入数据
    wire [31:0] div_q;      // DIV的q
    wire [31:0] div_r;      // DIV的r
    wire [31:0] divu_q;     // DIVU的q
    wire [31:0] divu_r;     // DIVU的r
    wire [31:0] mult_h;     // MULT的高位
    wire [31:0] mult_l;     // MULT的低位
    wire [31:0] multu_h;    // MULT的高位
    wire [31:0] multu_l;    // MULT的低位
    wire [31:0] status;     // CP0的status
    wire [31:0] offset32;   // offset << 2 拓展
    wire [31:0] sa32;       // sa 拓展
    wire [31:0] imm32;      // imme(offset) 拓展
    wire [31:0] epc;        // CP0返回的原地址
    wire [31:0] pc_add8;    // jal的写入reg的数据

    // PC信号来源 ////////////////////////////////////////////////////
    wire [31:0] next_pc;    // 选择过后的最终pc
    wire [31:0] npc_dt;     // 始终是npc_dt=pc+4
    wire [31:0] pc_add;     // beq bne bgez: offset32 + npc
    wire [31:0] II_dt;      // j jal: pc[31:28]和index
    wire [31:0] rs_dt;      // jr: reg中rs位置存储的数据
    wire [31:0] epc_dt;     // break syscall eret: CP0返回的地址

    // 主要选择信号 ////////////////////////////////////////////////////
    wire alua_mux;          // 2种
    wire [1:0] alub_mux;    // 3种
    wire [1:0] RFwaddr_mux; // 3种
    wire [2:0] DM_otpye;    // 5种
    wire [2:0] hiin_mux;    // 5种
    wire [2:0] loin_mux;    // 5种
    wire [2:0] nextpc_mux;  // 5种
    wire [2:0] RFwdata_mux; // 8种

    // 赋值与模块链接 ////////////////////////////////////////////////////
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