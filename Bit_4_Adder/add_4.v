`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/07/2025 11:05:28 AM
// Design Name: 
// Module Name: add_4
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


module add_4(
    input [3:0]x,y,
    input cy_in,
    output [3:0] s, 
    output cy_4
    );
    wire [2:0]cy_out;
    add B0 (x[0],y[0],cy_in,s[0],cy_out[0]);
    add B1 (x[1],y[1],cy_out[0],s[1],cy_out[1]);
    add B2 (x[2],y[2],cy_out[1],s[2],cy_out[2]);
    add B3 (x[3],y[3],cy_out[2],s[3],cy_4);
    
//    input x0,x1,x2,x3,
//    input y0,y1,y2,y3,
//    input cy_in,
//    output s0,s1,s2,s3, 
//    output cy_4
//    );
//    wire cy_out0,cy_out1,cy_out2;
//    add B0 (x0,y0,cy_in,s0,cy_out0);
//    add B1 (x1,y1,cy_out0,s1,cy_out1);
//    add B2 (x2,y2,cy_out1,s2,cy_out2);
//    add B3 (x3,y3,cy_out2,s3,cy_4);
endmodule
