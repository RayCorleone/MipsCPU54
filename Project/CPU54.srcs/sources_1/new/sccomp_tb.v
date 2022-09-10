`timescale 1ns / 1ps

// 后仿真测试模块
module sccomp_post_tb;
    reg clk_in;
    reg reset;
    wire [31:0] inst;
    wire [31:0] pc;
    wire [31:0] addr;

    initial begin          
        clk_in = 0; reset = 1; #0.5 reset = 0; end
    
    // 分频分2000
    divider #(2000) div_cpu(clk_in,reset,clk_cpu);
    sccomp_dataflow sccomp_dataflow_2(.clk_in(clk_cpu),.reset(reset),.inst(inst),.pc(pc),.addr(addr));
endmodule

// 前仿真测试模块
module sccomp_tb;
    reg clk_in;
    reg reset;
    wire [31:0] inst;
    wire [31:0] pc;
    wire [31:0] addr;
    integer file_output;
    integer cnt = 0;
    integer div = 0;

    initial begin          
        file_output = $fopen("C:/Users/14065/Desktop/CPU54/result.txt");     
        clk_in = 0;
        reset = 1; #0.5 reset = 0;
    end
    
    sccomp_dataflow sccomp_dataflow_1(.clk_in(clk_cpu),.reset(reset),.inst(inst),.pc(pc),.addr(addr));
        
    always begin
        #20 clk_in = ~clk_in;
        if(cnt == 20000) begin $fclose(file_output); end
    end

    always @(posedge clk_in) begin
        // 除法32周期输出一次
        if(inst[31:26]==6'b000000 && (inst[5:0]==6'b011010 || inst[5:0]==6'b011011)) begin
            div <= div + 1;
            if (div == 32) begin
                div <= 0;
                cnt <= cnt + 1;
                $fdisplay(file_output,"pc: %h",pc);
                $fdisplay(file_output,"instr: %h",inst);
                $fdisplay(file_output,"regfiles0: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[0]);
                $fdisplay(file_output,"regfiles1: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[1]);
                $fdisplay(file_output,"regfiles2: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[2]);
                $fdisplay(file_output,"regfiles3: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[3]);
                $fdisplay(file_output,"regfiles4: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[4]);
                $fdisplay(file_output,"regfiles5: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[5]);
                $fdisplay(file_output,"regfiles6: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[6]);
                $fdisplay(file_output,"regfiles7: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[7]);
                $fdisplay(file_output,"regfiles8: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[8]);
                $fdisplay(file_output,"regfiles9: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[9]);
                $fdisplay(file_output,"regfiles10: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[10]);
                $fdisplay(file_output,"regfiles11: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[11]);
                $fdisplay(file_output,"regfiles12: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[12]);
                $fdisplay(file_output,"regfiles13: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[13]);
                $fdisplay(file_output,"regfiles14: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[14]);
                $fdisplay(file_output,"regfiles15: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[15]);
                $fdisplay(file_output,"regfiles16: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[16]);
                $fdisplay(file_output,"regfiles17: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[17]);
                $fdisplay(file_output,"regfiles18: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[18]);
                $fdisplay(file_output,"regfiles19: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[19]);
                $fdisplay(file_output,"regfiles20: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[20]);
                $fdisplay(file_output,"regfiles21: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[21]);
                $fdisplay(file_output,"regfiles22: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[22]);
                $fdisplay(file_output,"regfiles23: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[23]);
                $fdisplay(file_output,"regfiles24: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[24]);
                $fdisplay(file_output,"regfiles25: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[25]);
                $fdisplay(file_output,"regfiles26: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[26]);
                $fdisplay(file_output,"regfiles27: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[27]);
                $fdisplay(file_output,"regfiles28: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[28]);
                $fdisplay(file_output,"regfiles29: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[29]);
                $fdisplay(file_output,"regfiles30: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[30]);
                $fdisplay(file_output,"regfiles31: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[31]);
            end
        end
        // 其他一个周期输出一次
        else begin
            cnt <= cnt + 1;
            $fdisplay(file_output,"pc: %h",pc);
            $fdisplay(file_output,"instr: %h",inst);
            $fdisplay(file_output,"regfiles0: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[0]);
            $fdisplay(file_output,"regfiles1: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[1]);
            $fdisplay(file_output,"regfiles2: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[2]);
            $fdisplay(file_output,"regfiles3: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[3]);
            $fdisplay(file_output,"regfiles4: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[4]);
            $fdisplay(file_output,"regfiles5: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[5]);
            $fdisplay(file_output,"regfiles6: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[6]);
            $fdisplay(file_output,"regfiles7: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[7]);
            $fdisplay(file_output,"regfiles8: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[8]);
            $fdisplay(file_output,"regfiles9: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[9]);
            $fdisplay(file_output,"regfiles10: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[10]);
            $fdisplay(file_output,"regfiles11: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[11]);
            $fdisplay(file_output,"regfiles12: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[12]);
            $fdisplay(file_output,"regfiles13: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[13]);
            $fdisplay(file_output,"regfiles14: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[14]);
            $fdisplay(file_output,"regfiles15: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[15]);
            $fdisplay(file_output,"regfiles16: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[16]);
            $fdisplay(file_output,"regfiles17: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[17]);
            $fdisplay(file_output,"regfiles18: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[18]);
            $fdisplay(file_output,"regfiles19: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[19]);
            $fdisplay(file_output,"regfiles20: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[20]);
            $fdisplay(file_output,"regfiles21: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[21]);
            $fdisplay(file_output,"regfiles22: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[22]);
            $fdisplay(file_output,"regfiles23: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[23]);
            $fdisplay(file_output,"regfiles24: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[24]);
            $fdisplay(file_output,"regfiles25: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[25]);
            $fdisplay(file_output,"regfiles26: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[26]);
            $fdisplay(file_output,"regfiles27: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[27]);
            $fdisplay(file_output,"regfiles28: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[28]);
            $fdisplay(file_output,"regfiles29: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[29]);
            $fdisplay(file_output,"regfiles30: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[30]);
            $fdisplay(file_output,"regfiles31: %h",sccomp_tb.sccomp_dataflow_1.sccpu.cpu_ref.array_reg[31]);
        end
    end
endmodule