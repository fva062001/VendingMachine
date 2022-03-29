`timescale 1ns / 100ps

module simSTM();
reg ST; //Reset 
reg CLK; //Clock       
reg[1:0]CN; //Bits Current State
reg RST;// Reset
reg FS;//Food Select
wire FD;//Food Delivery

STM K(ST,RST,CN,CLK,FS,FD);
always #5 CLK = ~CLK;
initial
begin
ST=1;
RST=0;
CN[0] =0;
CN[1] =0;
FS=0;
CLK=0;
//$monitor($time," Coin = %b%b, FS = %b, FD = %b", CN[0],CN[1], FS,FD);
        #12 ST = 1; CN[1]= 1; CN[0] = 0;FS =0; // FD =0
        #10 ST = 1; CN[1] = 1; CN[0] = 1;FS =0;
        #10 ST = 1; CN[1] = 0; CN[0] = 1;FS =0;//FD = 1

end
initial
begin
    #70 $finish;
end
endmodule