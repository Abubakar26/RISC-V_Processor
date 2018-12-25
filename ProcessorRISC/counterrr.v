`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:06:22 12/17/2018 
// Design Name: 
// Module Name:    counterrr 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module counterrr(clk,out,reset    );
input clk;
output reg [31:0] out;
input reset;
always @(posedge clk)
begin 
if(reset)
out=32'd0;
else
out<=out+32'd4;
end
endmodule
