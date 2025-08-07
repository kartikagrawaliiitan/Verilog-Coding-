`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2025 01:19:21 AM
// Design Name: 
// Module Name: tb_fulladdar
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

module tb_fulladdar();
reg a,b,c;
wire sum,carry;
fulladdar DUT(.a(a),.b(b),.c(c),.sum(sum),.carry(carry));
initial
begin
a=0;b=0;c=0;
#10;
a=0;b=0;c=1;
#10;
a=0;b=1;c=0;
#10;
a=0;b=1;c=1;
#10;
a=1;b=0;c=0;
#10;
a=1;b=0;c=1;
#10;
a=1;b=1;c=0;
#10;
a=1;b=1;c=1;
#10;

end
endmodule