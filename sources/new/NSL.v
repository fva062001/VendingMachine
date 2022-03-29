`timescale 1ns / 1ps
//Fernando Valerio
//10138798

module NSL( //Module Next State Logic
    //ST = Start, RST = Reset, CN = Coin, b = Current State, NS = Next State
input ST,RST,[1:0]CN,[3:0]b,
output [3:0]NS
    );
    //Assigning Bit[0]
    assign NS[0] = (ST & ~RST & CN[0] & ~b[0]);
    //Assigning Bit[1]
    assign NS[1] = (ST & ~RST & CN[0] & b[1] & ~b[0]) | (ST & ~RST & CN[1] & ~CN[0] & ~b[1]) | (ST & ~RST & CN[1] & ~CN[0] & b[3] & b[2]) | (ST & ~RST & CN[1] & b[3] & b[2] & ~b[0]) | (ST & ~RST & CN[0] & ~b[3] & ~b[1] & b[0]) | (ST & ~RST & CN[0] & ~b[2] & ~b[1] & b[0]) | (ST & ~RST & ~CN[1] & CN[0] & b[3] & b[2] & b[0]);
    //Assigning Bit[2]
    assign NS[2] = (ST & ~RST & ~CN[1] & CN[0] & ~b[2] & b[1] & b[0]) | (ST & ~RST & ~CN[1] & CN[0] & b[2] & ~b[1]) | (ST & ~RST & ~CN[1] & CN[0] & b[2] & ~b[0]) | (ST & ~RST & CN[1] & ~CN[0] & ~b[2] & b[1]) | (ST & ~RST & CN[1] & ~CN[0] & b[2] & ~b[1]) | (ST & ~RST & CN[1] & CN[0] & ~b[3] & b[2] & b[1] & b[0]) | (ST & ~RST & CN[1] & CN[0] & ~b[2] & ~b[1] & b[0]) | (ST & ~RST & ~CN[1] & CN[0] & b[3] & b[1] & b[0]) | (ST & ~RST & CN[1] & ~CN[0] & b[3] & b[1]) | (ST & ~RST & CN[1] & CN[0] & ~b[3] & ~b[2] & ~b[1]) | (ST & ~RST & CN[1] & ~b[2] & b[1] & ~b[0]) | (ST & ~RST & CN[0] & b[3] & b[2] & ~b[0]);
    //Assigning Bit[3]
    assign NS[3] = (ST & ~RST & ~CN[1] & CN[0] & b[3]) | (ST & ~RST & CN[1] & ~CN[0] & b[3]) | (ST & ~RST & CN[1] & CN[0] & ~b[3] & b[2]) | (ST & ~RST & ~CN[1] & CN[0] & b[2] & b[1] & b[0]) | (ST & ~RST & CN[1] & ~CN[0] & b[2] & b[1]) | (ST & ~RST & CN[0] & b[3] & ~b[2] & ~b[1] & b[0]) | (ST & ~RST & CN[0] & b[3] & b[1] & ~b[0]) | (ST & ~RST & CN[0] & b[3] & b[2] & ~b[0]);

endmodule

