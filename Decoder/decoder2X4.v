`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/24/2025 07:25:52 PM
// Design Name: 
// Module Name: decoder2X4
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

module decoder2X4(a,b,en,y);
input a,b,en;
output [0:3]y;
wire abar,bbar;
assign #1 abar = ~a;
assign #1 bbar = ~b;
assign #2 y[0] = ~(abar & bbar & en);
assign #2 y[1] = ~(abar & b & en);
assign #2 y[2] = ~(bbar & a & en);
assign #2 y[3] = ~(a & b & en);
endmodule
