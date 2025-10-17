`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/07/2025 11:48:02 PM
// Design Name: 
// Module Name: tb_mux2x1
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


module tb_mux2x1(

    );
    reg a,b,s;
    wire out;
    mux2x1 DUT(.a(a),.b(b),.s(s),.out(out));
    initial
    begin
        a=0;b=0;s=0;
    #10;
        a=0;b=1;s=0;
    #10;
        a=1;b=0;s=0;
    #10;
        a=1;b=1;s=0;
    #10;
        a=0;b=0;s=1;
    #10;
        a=0;b=1;s=1;
    #10;
        a=1;b=0;s=1;
    #10;
        a=1;b=1;s=1;
//integer i;
//for(i=0;i<8;i=i+1)
//begin
//#10 {a,b,s}=i;
//end
    #10;
    $finish;
    end
endmodule
