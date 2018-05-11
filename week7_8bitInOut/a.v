`timescale 1ns / 1ps
module Drive_74595(Clock, Data_In, Shift, Latch, Data_Out);
//----------------------------CONTROL SIGNALS-----------------------------------
input Clock;
input [7:0] Data_In; // 8-bit input data
output Shift; // Shift -> Register CLK in FIFO Buffer
output Latch; // Latch --> Shift Register CLK
output Data_Out; // The serial data output
reg [7:0] Clk_Count; // Maximum 256 Input_Clock
reg R_Shift, R_Latch, R_DataO;
parameter nBit = 8; // Using (2*nBit+4) Input_Clock
//=================================================
always @ ( posedge Clock ) begin
 Clk_Count <= Clk_Count + 1;
 if( Clk_Count > (2*nBit + 4)) begin
 Clk_Count <= 0;
 end
 //--- Shift Process ----------------------------------------
 if((Clk_Count < 2*nBit) && ((Clk_Count%2) == 0)) begin
 R_Shift <= 0;
 R_Latch <= 0;
 R_DataO <= Data_In[Clk_Count/2];
 end
 if((Clk_Count < 2*nBit) && ((Clk_Count%2) == 1)) begin
 R_Shift <= 1;
 R_Latch <= 0;
 R_DataO <= Data_In[Clk_Count/2];
 end
 //--- Latch Process ----------------------------------------
 if(Clk_Count == (2*nBit)) begin
 R_Shift <= 0;
 R_Latch <= 0;
 R_DataO <= 0;
 end
 if(Clk_Count == (2*nBit+1)) begin
 R_Shift <= 0;
 R_Latch <= 1;
 R_DataO <= 0;
 end
 //------------------------------------------------------
end

assign Shift = R_Shift;
assign Latch = R_Latch;
assign Data_Out = R_DataO;
endmodule