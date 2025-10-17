`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2025 01:41:42 AM
// Design Name: 
// Module Name: mux2x1
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


module mux2x1(
    input a,b,s,
    output reg out
    );
//    assign out= (a&~s)|(b&s);
// OR
//    assign out= s ? a : b;
    always@(*)
    begin
    if(s==1'b0)
    out=a;
    else if (s==1'b1)
    out=b;

 // //alternate style
//     case (s)
//     1'b0:
//     out=a;
//     1'b1:
//     out=b;
//     default: 
//     out = 1'b0;
//     endcase
    end
endmodule
