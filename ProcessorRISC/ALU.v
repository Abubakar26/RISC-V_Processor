`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:25:17 12/10/2018 
// Design Name: 
// Module Name:    ALU 
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
module ALU(datain,datain2,clk,out,opcode);
input [ 31:0 ] datain;
input [ 31:0 ] datain2;
input [6:0] opcode;
input clk;
output reg [31:0] out;
always @(posedge clk)
case(opcode)
12'd0:out<=datain+datain2; //add instruction
12'd2:out<=datain*datain2; //multiply instruction
12'd3:out<=datain+datain2; //LW instruction
12'd4:out<=datain+datain2; //imidiate instruction
12'd4:out<=datain|datain2;
default out<=datain+datain2;
endcase

endmodule