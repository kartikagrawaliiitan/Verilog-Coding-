`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2025 07:33:04 PM
// Design Name: 
// Module Name: encoder_4X2
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


module encoder_4X2(
    input [3:0] I,       // 4-bit input
    output reg [1:0] out // 2-bit output
);
    always @(*) begin
        case (I)
            4'b0001: out = 2'b00; // I[0] is active
            4'b0010: out = 2'b01; // I[1] is active
            4'b0100: out = 2'b10; // I[2] is active
            4'b1000: out = 2'b11; // I[3] is active
            default: out = 2'bxx; // Undefined input (00xx, etc.)
        endcase
    end
endmodule

//module encoder_4X2(
//    input [3:0] I,       // 4-bit input
//    output reg [1:0] out // 2-bit output
//);
//    always @(*) begin
//            if(I==4'b0001)
//            out = 2'b00; // I[0] is active
//            else if(I==4'b0010)
//            out = 2'b01; // I[1] is active
//            else if(I==4'b0100) 
//            out = 2'b10; // I[2] is active
//            else if(I==4'b1000) 
//            out = 2'b11; // I[3] is active
//            else
//            out = 2'bxx; // Undefined input (00xx, etc.)
//    end
//endmodule
