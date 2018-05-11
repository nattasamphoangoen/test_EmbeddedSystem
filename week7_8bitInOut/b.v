`timescale 1ns / 1ps
module Read_8SIPO(Ser_I, Clk_I, Clk_O, SH_LD, Parl_O);
input Clk_I, Ser_I;
output Clk_O, SH_LD;
output [7:0] Parl_O;
reg [7:0] Clk_Count; // Maximum 256 Input_Clockreg [7:0] tmp;
parameter nBit = 8; // Using (nBit+4) Input_Clock
reg [nBit-1:0] R_Parl_O, temp_Parl_O;
reg R_ShiftLoad;
always @(posedge Clk_I) begin
 Clk_Count <= Clk_Count + 1;
 if( Clk_Count > (nBit+4)) begin // Over Reset Counter
 Clk_Count <= 0;
 R_ShiftLoad <= 0;
 end
 if(Clk_Count==0) R_ShiftLoad <= 0; // Load
 if(Clk_Count==1) R_ShiftLoad <= 1; // no Load
 if((Clk_Count>=2)&&(Clk_Count<=(nBit+1))) begin // Shift
 temp_Parl_O <= temp_Parl_O << 1;
 temp_Parl_O[0] <= Ser_I;
 end
 if(Clk_Count==(nBit+2)) R_Parl_O <= temp_Parl_O; // Save
end
assign Parl_O = R_Parl_O;
assign Clk_O = Clk_I;
assign SH_LD = R_ShiftLoad;

endmodule 