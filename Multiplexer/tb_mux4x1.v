`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/07/2025 12:32:47 PM
// Design Name: 
// Module Name: tb_mux4x1
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


module tb_mux4x1();
reg [3:0]I;
reg [1:0]S;
wire Y;
    mux4x1 DUT(.I(I),.S(S),.Y(Y));
    initial
    begin
        I = 4'b0001; S = 2'b00; #10;
        I = 4'b0010; S = 2'b00; #10;
        I = 4'b0100; S = 2'b00; #10;
        I = 4'b1000; S = 2'b00; #10;

        I = 4'b0001; S = 2'b01; #10;
        I = 4'b0010; S = 2'b01; #10;
        I = 4'b0100; S = 2'b01; #10;
        I = 4'b1000; S = 2'b01; #10;

        I = 4'b0001; S = 2'b10; #10;
        I = 4'b0010; S = 2'b10; #10;
        I = 4'b0100; S = 2'b10; #10;
        I = 4'b1000; S = 2'b10; #10;

        I = 4'b0001; S = 2'b11; #10;
        I = 4'b0010; S = 2'b11; #10;
        I = 4'b0100; S = 2'b11; #10;
        I = 4'b1000; S = 2'b11; #10;

        #10
        $finish;
    end
endmodule
