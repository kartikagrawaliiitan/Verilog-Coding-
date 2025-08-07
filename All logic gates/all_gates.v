`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2025 11:09:01 PM
// Design Name: 
// Module Name: all_gates
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


module all_gates(
    input a,b,
    output _and,_or,_nand,_nor,_xor,_xnor
    );
    assign _and=a&b;
    assign _or=a|b;
    assign _nand=~(a&b);
    assign _nor=~(a|b);
    assign _xor=(a^b);
    assign _xnor=~(a^b);
endmodule
