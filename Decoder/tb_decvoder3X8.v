`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/01/2025 07:32:22 PM
// Design Name: 
// Module Name: tb_decvoder3X8
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


module tb_decoder3X8(

    );
    reg [2:0]I;
    wire [7:0]out;
    decoder3X8 DUT(.I(I),.out(out));
    initial
    begin
    I = 3'b000;#10;
    I = 3'b001;#10;
    I = 3'b010;#10;
    I = 3'b011;#10;
    I = 3'b100;#10;
    I = 3'b101;#10;
    I = 3'b110;#10;
    I = 3'b111;#10;
    $finish;
    end
endmodule
