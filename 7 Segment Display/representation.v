`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/16/2025 10:48:37 PM
// Design Name: 
// Module Name: representation
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


    module representation(
    input s3, s2, s1, s0,
    output a, b, c, d, e, f, g, en
);
reg [6:0] tmp;
  assign en = 4'b1110;  // 0 - glow , 1 - not glow
always @(*) begin

    // Handle output 'a'
    case ({s3, s2, s1, s0})
        4'b0000: tmp=7'b 0000001;//0
        4'b0001: tmp=7'b 1001111;//1
        4'b0010: tmp=7'b 0010010;//2
        4'b0011: tmp=7'b 0000110;//3
        4'b0100: tmp=7'b 1001100;//4
        4'b0101: tmp=7'b 0100100;//5
        4'b0110: tmp=7'b 0100000;//6
        4'b0111: tmp=7'b 0001111;//7
        4'b1000: tmp=7'b 0000000;//8
        4'b1001: tmp=7'b 0000100;//9
        4'b1010: tmp=7'b 0000010;//10-a
        4'b1011: tmp=7'b 1100000;//11-b
        4'b1100: tmp=7'b 0110001;//12-c
        4'b1101: tmp=7'b 1000010;//13-d
        4'b1110: tmp=7'b 0010000;//14-e
        4'b1111: tmp=7'b 0111000;//15-f
        default: tmp=7'b 0010000;//x
       
    endcase
end
assign {a, b, c, d, e, f,g} = tmp;
endmodule

//   Alt method 
//module representation(input s3,s2,s1,s0,
//output a,b,c,d,e,f,g);
//assign
//a = (~s3&~s2&~s1&s0) | (~s3&s2&~s1&~s0) | (s3&s2&~s1&s0) | (s3&~s2&s1&s0);
//assign
//b = (~s3&s2&~s1&s0) | (s3&s1&s0) | (s3&s2&~s1&~s0) | (~s3&s2&s1&~s0);
//assign
//c = (s3&s2&~s1&~s0) | (s3&s2&s1) | (~s3&~s2&s1&~s0);
//assign
//d = (~s3&~s2&~s1&s0) | (~s3&s2&~s1&~s0) | (s2&s1&s0);
//assign
//e = (~s3&s0) | (~s3&s2&~s1) | (~s2&~s1&s0);
//assign
//f = (~s3&s1&s0) | (~s2&s1&~s0) | (~s3&~s2&~s1&s0) | (s3&s2&~s1&s0);
//assign
//g = (~s3&~s2&~s1) | (~s3&s2&s1&s0) | (s3&s2&~s1&~s0);
//endmodule
