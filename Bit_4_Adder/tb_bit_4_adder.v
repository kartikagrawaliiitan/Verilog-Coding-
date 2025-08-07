`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/07/2025 10:04:43 PM
// Design Name: 
// Module Name: tb_bit_4_adder
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


module tb_bit_4_adder(

    );
    reg [3:0]x,y;
    reg cy_in;
    wire [3:0] s;
    wire cy_4;
    add_4 UUT(.x(x),.y(y),.cy_in(cy_in),.s(s),.cy_4(cy_4));
    initial
    begin
    x=4'b0000;
    y=4'b0000;
    cy_in=0;
    end
    always #2 y=y+1'b1;
    always #2 x=x+1'b1;
    initial #64 $finish;
    
endmodule
