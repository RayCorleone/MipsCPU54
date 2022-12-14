`timescale 1ns / 1ps

module CLZ(
    input [31:0] i,
    output [31:0] o
    );
    assign o=(i[31]==1)?0:(i[30]==1)?1:(i[29]==1)?2:(i[28]==1)?3:(i[27]==1)?4:(i[26]==1)?5:(i[25]==1)?6:(i[24]==1)?7:(i[23]==1)
        ?8:(i[22]==1)?9:(i[21]==1)?10:(i[20]==1)?11:(i[19]==1)?12:(i[18]==1)?13:(i[17]==1)?14:(i[16]==1)?15:(i[15]==1)
        ?16:(i[14]==1)?17:(i[13]==1)?18:(i[12]==1)?19:(i[11]==1)?20:(i[10]==1)?21:(i[9]==1)?22:(i[8]==1)?23:(i[7]==1)
        ?24:(i[6]==1)?25:(i[5]==1)?26:(i[4]==1)?27:(i[3]==1)?28:(i[2]==1)?29:(i[1]==1)?30:(i[0]==1)?31:32;
endmodule