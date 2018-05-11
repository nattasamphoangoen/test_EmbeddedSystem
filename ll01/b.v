`timescale 1ns / 1ps
module Clk_1Hz(
 input Clk_In,
 output Clk_Out
 );
reg Clk_Out = 1'b0;
reg [27:0] Counter;
always@(posedge Clk_In) begin
 Counter <= Counter + 1;
 if ( Counter == 25_000_000) begin
 Counter <= 0;
 Clk_Out <= ~Clk_Out;
 end
end
endmodule 