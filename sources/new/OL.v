`timescale 1ns / 1ps
//Fernando Valerio  
//10138798

module OL( //Module Output Logic
    //FS = Food Select, CS = Current State, FD = Food Delivery
     input FS,[3:0]CS,
     output FD   
    );
    assign FD = (~FS & CS[3]) | (CS[3] & CS[2] & CS[1] & CS[0]);
endmodule

