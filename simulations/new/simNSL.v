`timescale 1ns / 1ps

module simNSL();
wire [3:0]NS;
reg RST;
reg [0:1]CN;
reg ST;
reg [3:0]CS;
NSL NextStateLogic(ST,RST,CN,CS,NS);
initial
begin
RST <=0;
CS[3]<=0;
CS[2]<=0;
CS[1]<=0;
CS[0]<=0;
ST <= 0;
CN[1]<=0;
CN[0]<=0;
$monitor($time,"Next State = %b%b%b%b, Current State = %b%b%b%b, ST = %b,RST = %b, Coin %b%b =",NS[3],NS[2],NS[1],NS[0],CS[3],CS[2],CS[1],CS[0],ST,RST,CN[1],CN[0]);
#5  CS[3] = 1;
    CS[2] = 0;
    CS[1] = 1;
    CS[0] = 0;
    CN[1] = 1;
    CN [0] = 0;
    ST = 1;

#5 CS[3] = 1;
    CS[2] = 0;
    CS[1] = 1;
    CS[0] = 0;
    CN[1]= 1;
    CN[0] = 1;
    ST = 1;
end
endmodule
