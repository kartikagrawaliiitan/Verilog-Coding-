`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/15/2025 03:57:02 PM
// Design Name: 
// Module Name: seven_seg_counter
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


module seven_seg_counter(
    input clk,              // 100 MHz clock on Basys 3
    input rst,              // Reset button
    output reg [3:0] an,    // Anode signals of 7-seg
    output reg [6:0] seg    // Cathode signals (a-g)
);

    // Clock divider for refresh (~1 kHz for multiplexing)
    reg [16:0] refresh_counter = 0;
    wire [1:0] digit_select;
    assign digit_select = refresh_counter[16:15];

    // Clock divider for counting (1 Hz → 1 second delay)
    reg [26:0] count_clk = 0;
    wire one_sec_pulse = (count_clk == 27'd99_999_999);

    always @(posedge clk) begin
        if(rst)
            count_clk <= 0;
        else if(one_sec_pulse)
            count_clk <= 0;
        else
            count_clk <= count_clk + 1;
    end

    // BCD Counter (0000 to 9999)
    reg [3:0] digit0 = 0; // Ones
    reg [3:0] digit1 = 0; // Tens
    reg [3:0] digit2 = 0; // Hundreds
    reg [3:0] digit3 = 0; // Thousands

    always @(posedge clk) begin
        if(rst) begin
            digit0 <= 0;
            digit1 <= 0;
            digit2 <= 0;
            digit3 <= 0;
        end else if(one_sec_pulse) begin
            if(digit0 == 9) begin
                digit0 <= 0;
                if(digit1 == 9) begin
                    digit1 <= 0;
                    if(digit2 == 9) begin
                        digit2 <= 0;
                        if(digit3 == 9) begin
                            digit3 <= 0; // back to 0000
                        end else
                            digit3 <= digit3 + 1;
                    end else
                        digit2 <= digit2 + 1;
                end else
                    digit1 <= digit1 + 1;
            end else
                digit0 <= digit0 + 1;
        end
    end

    // Refresh counter for multiplexing
    always @(posedge clk) begin
        refresh_counter <= refresh_counter + 1;
    end

    // Digit selection
    reg [3:0] current_digit;
    always @(*) begin
        case(digit_select)
            2'b00: begin
                an = 4'b1110; // Rightmost
                current_digit = digit0;
            end
            2'b01: begin
                an = 4'b1101;
                current_digit = digit1;
            end
            2'b10: begin
                an = 4'b1011;
                current_digit = digit2;
            end
            2'b11: begin
                an = 4'b0111; // Leftmost
                current_digit = digit3;
            end
        endcase
    end

    // Seven segment decoder
    always @(*) begin
        case(current_digit)
            4'd0: seg = 7'b1000000; // "0"
            4'd1: seg = 7'b1111001; // "1"
            4'd2: seg = 7'b0100100; // "2"
            4'd3: seg = 7'b0110000; // "3"
            4'd4: seg = 7'b0011001; // "4"
            4'd5: seg = 7'b0010010; // "5"
            4'd6: seg = 7'b0000010; // "6"
            4'd7: seg = 7'b1111000; // "7"
            4'd8: seg = 7'b0000000; // "8"
            4'd9: seg = 7'b0010000; // "9"
            default: seg = 7'b1111111; // blank
        endcase
    end

endmodule

