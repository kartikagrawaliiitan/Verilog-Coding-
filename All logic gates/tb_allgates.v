`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2025 11:13:09 PM
// Design Name: 
// Module Name: tb_allgates
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


module tb_allgates(

    );
    reg a,b;
    wire _and,_or,_nand,_nor,_xor,_xnor;
    all_gates DUT(.a(a),.b(b),._and(_and),._or(_or),._nand(_nand),._nor(_nor),._xor(_xor),._xnor(_xnor));
    initial
    begin
    a=0;b=0;
    #10;
    a=0;b=1;
    #10;
    a=1;b=0;
    #10;
    a=1;b=1;
    #10;

//    initial
    //#50 
    $finish;    end
endmodule
