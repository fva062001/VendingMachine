`timescale 1ns / 1ps


module simOL();
wire FD;
reg FS;
reg [3:0]CS;
OL outputLogic(FS,CS,FD);
initial
begin
FS <=0;
CS[3]<=0;
CS[2]<=0;
CS[1]<=0;
CS[0]<=0;
$monitor($time,"FS = %b, Current State = %b%b%b%b, FD = %b",FS,CS[3],CS[2],CS[1],CS[0],FD);
#5  CS[3] = 1;
    CS[2] = 1;
    CS[1] = 1;
    CS[0] = 1;
    FS = 1;

#5 CS[3] = 1;
    CS[2] = 0;
    CS[1] = 0;
    CS[0] = 0;
    FS = 0;
end
endmodule
