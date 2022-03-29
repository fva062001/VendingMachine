`timescale 1ns / 1ps
//Fernando Valerio 
//10138798

module SM( //Module State Memory
    //NS = Next State, CLK = Clock, RST = Reset, CS = Current State
    input [3:0]NS,CLK,RST,
    output [3:0]CS
    );
    //Assigning Flip Flops to go to Current State
    Flip_Flop_TypeD A(NS[0],CLK,RST,CS[0]);
    Flip_Flop_TypeD B(NS[1],CLK,RST,CS[1]);
    Flip_Flop_TypeD C(NS[2],CLK,RST,CS[2]);
    Flip_Flop_TypeD D(NS[3],CLK,RST,CS[3]);
endmodule
