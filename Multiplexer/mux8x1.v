`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/07/2025 01:27:19 AM
// Design Name: 
// Module Name: mux8x1
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


module mux8x1(
    input wire [7:0]I,
    input wire [2:0]s,
    output out
    );
    wire out_1,out_2;
    mux4x1 M0 (I[7:4],s[1:0],out_1);
    mux4x1 M1 (I[3:0],s[1:0],out_2);
    mux2x1 M2 (out_2,out_1,s[2],out);
endmodule
