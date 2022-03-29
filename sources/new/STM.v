`timescale 1ns / 1ps
//Fernando Valerio
//10138798

module STM( //Module State Machine
    // ST =  Start, RST =  Reset, CN = Coin, CLK = Clock, FS = Food Select, FD = Food Delivery
    input ST,RST,[1:0]CN,CLK,FS,
    output FD
    );
    wire [3:0] NS;  //Wire Next State
    wire [3:0] CS;  //Wire Current State
    //Creating Module Next State Logic (NSL)
    NSL A(ST,RST,CN,CS,NS);
    //Creating Module State Memory (SM)
    SM B(NS,CLK,RST,CS);
    //Creating Module Output Logic (OL)
    OL C(FS,CS,FD);
endmodule
