`timescale 1ns / 1ps
module Decode_7Seg( D, C, B, A, ledt, leda, ledb, ledc, ledd, lede, ledf, ledg);
 input D, C, B, A;
 output ledt, leda, ledb, ledc, ledd, lede, ledf, ledg;
 reg [7:0] seg_data;
 reg [3:0] DataIn;
 always @* begin
 DataIn = { D, C, B, A };
 end
 always @(DataIn)
 case (DataIn)
 4'b0000: seg_data = 8'b01111110;
 4'b0001: seg_data = 8'b00110000;
 4'b0010: seg_data = 8'b01101101;
 4'b0011: seg_data = 8'b01111001;
 4'b0100: seg_data = 8'b00110011;
 4'b0101: seg_data = 8'b01011011;
 4'b0110: seg_data = 8'b01011111;
 4'b0111: seg_data = 8'b01110000;
 4'b1000: seg_data = 8'b01111111;
 4'b1001: seg_data = 8'b01111011;
 4'b1010: seg_data = 8'b01110111;
 4'b1011: seg_data = 8'b00011111;
 4'b1100: seg_data = 8'b01001110;
 4'b1101: seg_data = 8'b00111101;
 4'b1110: seg_data = 8'b01001111;
 4'b1111: seg_data = 8'b01000111;
 endcase

 assign ledt = ~seg_data[7]; // if Active Low(Using ~)
 assign leda = ~seg_data[6];
 assign ledb = ~seg_data[5];
 assign ledc = ~seg_data[4];
 assign ledd = ~seg_data[3];
 assign lede = ~seg_data[2];
 assign ledf = ~seg_data[1];
 assign ledg = ~seg_data[0];

endmodule 