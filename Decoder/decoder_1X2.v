`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2025 10:20:41 PM
// Design Name: 
// Module Name: decoder_1X2
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


//module decoder_1X2(
//    input I,
//    output reg [1:0]out
//    );
//    always@(*)
//    begin
//    case(I)
//    1'b0:
//    out = 2'b01;
//    1'b1:
//    out = 2'b10;
//    default: out = 2'bxx; // Undefined case
//    endcase
//    end
//endmodule

module decoder_1X2(
    input I,
    output reg [1:0]out
    );
    always@(*)
    begin
    if(I==1'b0)
    out = 2'b01;
    else if(I==1'b1)
    out = 2'b10;
    else
    out = 2'bxx;
    end
endmodule
