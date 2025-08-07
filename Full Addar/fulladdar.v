`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2025 12:23:03 AM
// Design Name: 
// Module Name: fulladdar
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


module fulladdar(
    input a,b,c,
    output reg sum,carry
    );
    always@(*)
    begin
    sum = a^b^c;
    carry = (a&b)|(b&c)|(c&a);
    end
endmodule
