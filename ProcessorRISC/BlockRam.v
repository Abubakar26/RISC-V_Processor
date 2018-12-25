`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:38:40 12/05/2018 
// Design Name: 
// Module Name:    InstructionMEM 
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
module InstructionMEM(clk,dataout,data,wren);
 input clk,wren;
 parameter RAM_WIDTH = 32;
 parameter RAM_ADDR_BITS = 10;

//   (* RAM_STYLE="{AUTO | BLOCK |  BLOCK_POWER1 | BLOCK_POWER2}" *)
   reg [RAM_WIDTH-1:0] bram [(2**RAM_ADDR_BITS)-1:0];   //[(2**RAM_ADDR_BITS)-1:0];
   output reg [RAM_WIDTH-1:0] dataout ; //, <output_dataB>;

   reg [RAM_ADDR_BITS-1:0] writead;//, <addressB>;
   input [RAM_WIDTH-1:0] data;

   //  The following code is only necessary if you wish to initialize the RAM 
   //  contents via an external file (use $readmemb for binary data)
 //  initial
  //    $readmemh("<data_file_name>", <rom_name>, <begin_address>, <end_address>);

   always @(posedge clk)
	begin
	if (wren)
			bram[writead] <= data;
         dataout <= bram[writead];
		
  //   if (<enableB>)
   //     <output_dataB> <= <ram_name>[<addressB>];
   end






endmodule