`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:08:39 12/17/2018 
// Design Name: 
// Module Name:    counter 
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
module counter(clk,out,reset);
input clk;
output [9:0] out;
reg [9:0] out;
initial out=9'd0;
input reset;
always @(posedge clk)
begin 
if(reset)
out=9'd0;
else
out=out+9'd4;
end
endmodule