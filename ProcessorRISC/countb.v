`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:05:41 12/06/2018
// Design Name:   counter
// Module Name:   D:/installed ise/ProcessorRISC/countb.v
// Project Name:  ProcessorRISC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module countb;

	// Inputs
	reg clk;

	// Instantiate the Unit Under Test (UUT)
	counter uut (
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		clk = 1;
	forever begin
	
	#5 clk=~clk;
	
	end
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

