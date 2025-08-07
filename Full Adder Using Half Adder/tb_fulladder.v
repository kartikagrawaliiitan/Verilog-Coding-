`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2025 03:26:37 AM
// Design Name: 
// Module Name: tb_fulladder
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


module tb_fulladder();
reg a,b,c;
wire sum,carry;
fulladder DUT(.a(a),.b(b),.c(c),.sum(sum),.carry(carry));
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
$finish;
#10;

end
endmodule
