`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/04/2025 11:30:08 PM
// Design Name: 
// Module Name: generic_mux
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


module generic_mux
#(parameter n = 8)
(
input [n-1:0]I,
input [$clog2(n)-1:0]s,
output reg out
    );
    integer k;
    always@(*)
    begin
    out = 'bx;
    for(k = 0;k < n;k=k+1)
    if (k==s)
    out = I[k];
    end
endmodule
