`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2025 11:40:02 AM
// Design Name: 
// Module Name: tb_encode2X1
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


module tb_encode2X1(
    );
    reg [1:0] I;
    wire out;
    encoder_2X1 DUT(.I(I),.out(out));
    initial
    begin
        // Test cases
        I = 2'b00; #10;  // Invalid case
        I = 2'b01; #10;  // Expect out = 0
        I = 2'b10; #10;  // Expect out = 1
        I = 2'b11; #10;  // Invalid case
    $finish;
    end
endmodule
