`timescale 1ns / 1ps
//Fernando Valerio
//10138798

module Flip_Flop_TypeD( // Module Flip Flop Type D
    //NS = Next State, CLK = Clock, RST = Reset, CS = Current State
    input NS,CLK,RST,
    output CS
    );
    

    wire s, sbar, r, rbar,cbar, outbar;

    assign cbar = ~RST;

    assign  sbar = ~(rbar & s),
            s = ~(sbar & cbar & CLK),
            r = ~(rbar & CLK & s),
            rbar = ~(r & cbar & NS);

    assign CS = ~(s & outbar ),
           outbar = ~(CS & r & cbar);

endmodule
