`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2025 02:59:30 AM
// Design Name: 
// Module Name: mux4x1
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


module mux4x1(
    input [ 3:0]I,
    input [ 1:0]S,
    output reg Y
    );
    always@(*)
    begin
//   if (S == 2'b00)
//    Y = I[0];
//   else if (S == 2'b01)
//    Y = I[1];
//   else if (S == 2'b10)
//    Y = I[2];
//   else if (S == 2'b11)
//    Y = I[3];
//    else
//    Y = 1'b0;

 // alternate method using case method
    case (S)
    2'b00: 
    Y = I[0];
    2'b01: 
    Y = I[1];
    2'b10: 
    Y = I[2];
    2'b11: 
    Y = I[3];
    default: 
    Y = 1'b0;  // Default case (optional)
    endcase
end
endmodule
