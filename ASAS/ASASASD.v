`timescale 1ns / 1ps
module MainTest7Seg(Clk_50MHz, Rst_OnBoard, LED_Output);
 input Rst_OnBoard, Clk_50MHz;
 output [7:0] LED_Output;

 parameter Start_Case_0 = 6'b000000;
 parameter Start_Case_1 = 6'b100000;
 parameter StepRun_Case_0 = 13;
 parameter StepRun_Case_1 = 15;
 reg rMode = 1'b1;
 reg [5:0] rCounter = Start_Case_1;
 reg [5:0] rStart = Start_Case_1;
 reg [5:0] rStop = Start_Case_1 + StepRun_Case_1;
 reg [7:0] rLED_Output;
 reg [27:0] Dly_Counter;

 always@(posedge Clk_50MHz or negedge Rst_OnBoard) begin
 if(Rst_OnBoard == 0) begin
 if(rMode == 1) begin
 rMode <= 0;
 rCounter <= Start_Case_0;
 rStart <= Start_Case_0;
 rStop <= Start_Case_0 + StepRun_Case_0;
 end
 else begin
 rMode <= 1;
 rCounter <= Start_Case_1;
 rStart <= Start_Case_1;
 rStop <= Start_Case_1 + StepRun_Case_1;
 end
 end
 else begin
 Dly_Counter <= Dly_Counter + 1'b1;
 if(Dly_Counter >= 6_250_000) begin
 Dly_Counter <= 0;
 if (rCounter >= rStop) rCounter <= rStart;
 else rCounter <= rCounter + 1'b1;
 end
 end
 end

 always @(rCounter)
 case (rCounter)
 //----------Mode 0 = 000000 to 011111 ---------
 Start_Case_0+0: rLED_Output = 8'b10000000;
 Start_Case_0+1: rLED_Output = 8'b01000000;
 Start_Case_0+2: rLED_Output = 8'b00100000;
 Start_Case_0+3: rLED_Output = 8'b00010000;
 Start_Case_0+4: rLED_Output = 8'b00001000;
 Start_Case_0+5: rLED_Output = 8'b00000100;
 Start_Case_0+6: rLED_Output = 8'b00000010;
 Start_Case_0+7: rLED_Output = 8'b00000001;
 Start_Case_0+8: rLED_Output = 8'b00000000;
 Start_Case_0+9: rLED_Output = 8'b11111111;
 Start_Case_0+10: rLED_Output = 8'b00000000;
 Start_Case_0+11: rLED_Output = 8'b11111111;
 Start_Case_0+12: rLED_Output = 8'b00000000;
 //----------Mode 1 = 100000 to 111111 ---------
 Start_Case_1+0: rLED_Output = 8'b10000001;
 Start_Case_1+1: rLED_Output = 8'b01000010;
 Start_Case_1+2: rLED_Output = 8'b00100100;
 Start_Case_1+3: rLED_Output = 8'b00011000;
 Start_Case_1+4: rLED_Output = 8'b00011000;
 Start_Case_1+5: rLED_Output = 8'b00100100;
 Start_Case_1+6: rLED_Output = 8'b01000010;
 Start_Case_1+7: rLED_Output = 8'b10000001;
 Start_Case_1+8: rLED_Output = 8'b00000000;
 Start_Case_1+9: rLED_Output = 8'b11111111;
 Start_Case_1+10: rLED_Output = 8'b00000000;
 Start_Case_1+11: rLED_Output = 8'b11111111;
 Start_Case_1+12: rLED_Output = 8'b00000000;
 Start_Case_1+13: rLED_Output = 8'b11111111;
 Start_Case_1+14: rLED_Output = 8'b00000000;
 //----------Mode x = default ------------------
 default: rLED_Output = 8'b00000000;
 endcase
 assign LED_Output = rLED_Output;
endmodule 