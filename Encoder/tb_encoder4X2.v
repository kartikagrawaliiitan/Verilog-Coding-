`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2025 09:46:13 PM
// Design Name: 
// Module Name: tb_encoder4X2
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_encoder4X2();
reg [3:0]I;
wire [1:0]out;
encoder_4X2 DUT(.I(I),.out(out));
integer k;
initial
begin
I =4'b0000;
for(k=0;k<16;k=k+1)
begin
#5 I=I+1;
end
//I = 4'b0001;#10;
//I = 4'b0010;#10;
//I = 4'b0100;#10;
//I = 4'b1000;#10;
//I = 4'b0000;#10;
$finish;
end
endmodule
