`timescale 1ns / 1ps


module simSM();
reg [3:0]NS;
reg CLK;
reg RST;
wire [3:0]CS;
SM StateMemory(NS,CLK,RST,CS);
initial
begin
CLK <=0;
RST <=0;
NS[3]<=0;
NS[2]<=0;
NS[1]<=0;
NS[0]<=0;
$monitor($time,"Next State = %b%b%b%b, Current State = %b%b%b%b, RST = %b, Clock = %b",NS[3],NS[2],NS[1],NS[0],CS[3],CS[2],CS[1],CS[0],RST,CLK);

#5  NS[3] = 1;
    NS[2] = 1;
    NS[1] = 0;
    NS[0] = 1;
    CLK = 1;

#5 NS[3] = 1;
    NS[2] = 1;
    NS[1] = 0;
    NS[0] = 1;
    CLK = 0;
end
endmodule
