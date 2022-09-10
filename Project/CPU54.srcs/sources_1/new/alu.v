`timescale 1ns / 1ps

module ALU(
   input [31:0] a,
   input [31:0] b,
   input [3:0] aluc,
   output reg [31:0] result,
   output zero,
   output negative,
   output overflow
   );

   wire flag1,flag2;
   assign zero = (result==0)?1'b1:1'b0;
   assign negative = (result[31]==1)?1'b1:1'b0;
   assign flag1 = (~a[31]&&~b[31]&&result[31])||(a[31]&&b[31]&&~result[31]);
   assign flag2 = (~a[31]&&b[31]&&result[31])||(a[31]&&~b[31]&&~result[31]);
   assign overflow = (aluc==4'b0010 && flag1)||(aluc==4'b0011 && flag2);

   always @(aluc or a or b) begin
      case(aluc)
         4'b0000: begin   // ADDU
            result <= a+b; end
         4'b0001: begin   // SUBU
            result <= a-b; end
         4'b0010: begin   // ADD
            result <= a+b; end
         4'b0011: begin   // SUB
            result <= a-b; end
         4'b0100: begin   // AND
            result <= a&b; end
         4'b0101: begin    // OR
            result <= a|b; end
         4'b0110: begin    // XOR
            result <= a^b; end
         4'b0111: begin    // NOR
            result <= ~(a|b); end   
         4'b1000: begin    // LUI
            result <= {b[15:0],16'b0}; end
         4'b1001: begin    // LUI
            result <= {b[15:0],16'b0}; end
         4'b1010: begin    // SLTU
            result <= (a<b)?1:0; end
         4'b1011: begin    // SLT
            result <= ($signed(a)<$signed(b))?1:0; end
         4'b1100: begin    // SRA
            result <= $signed(b)>>>a;  end
         4'b1101: begin    // SRL
            result <= b>>a;   end
         4'b1110: begin    // SLL/SLR
            result <= b<<a;   end
         4'b1111: begin    // SLL/SLR
            result <= b<<a;   end
      endcase     
   end
endmodule