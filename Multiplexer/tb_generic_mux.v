`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/04/2025 11:46:20 PM
// Design Name: 
// Module Name: tb_generic_mux
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


module tb_generic_mux(

    );
    parameter n =8;
    reg [n-1:0]I;
    reg [$clog2(n)-1:0]s;
    wire out;
    generic_mux #(n)
    DUT(.I(I),.s(s),.out(out));
    initial
    begin
    I = 8'b10101010;
    s = 0; #10;
    s = 1; #10;
    s = 2; #10;
    s = 3; #10;
    s = 4; #10;
    s = 5; #10;
    s = 6; #10;
    s = 7; #10;
    $finish;
    end
endmodule
