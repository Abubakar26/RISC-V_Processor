`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:11:13 12/17/2018
// Design Name:   counterrr
// Module Name:   D:/installed ise/ProcessorRISC/ctrrrr.v
// Project Name:  ProcessorRISC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: counterrr
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ctrrrr;

	// Inputs
	reg clk;
	reg out;
	reg reset;

	// Instantiate the Unit Under Test (UUT)
	counterrr uut (
		.clk(clk), 
		.out(out), 
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		out = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

