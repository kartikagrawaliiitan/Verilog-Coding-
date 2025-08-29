`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2025 10:53:09 AM
// Design Name: 
// Module Name: encoder_2X1
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
////////////////////////////////////////////////////////////////////////////////////


module encoder_2X1(
    input [1:0] I,
    output reg out
);
    always @(*) begin
        case (I)
            2'b01: out = 1'b0;  // If I[0] is 1, output 0
            2'b10: out = 1'b1;  // If I[1] is 1, output 1
            default: out = 1'bx; // Undefined case (00 or 11)
        endcase
    end
endmodule



//module encoder_2X1(
//    input [1:0] I,  // 2-bit input
//    output reg out  // 1-bit output
//);
//    always @(*) begin
//        if (I==2'b10) 
//            out = 1'b1;  // If I[1] is 1, output 1
//        else if (I==2'b01) 
//            out = 1'b0;  // If I[1] is 0 but I[0] is 1, output 0
//        else 
//            out = 1'bx;  // Undefined case (00 input)
//    end
//endmodule
