`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:59:03 12/17/2018
// Design Name:   counter
// Module Name:   D:/installed ise/ProcessorRISC/ctx.v
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

module ctx;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire [31:0] out;

	// Instantiate the Unit Under Test (UUT)
	counter uut (
		.clk(clk), 
		.out(out), 
		.reset(reset)
	);
initial begin
		// Initialize Inputs
		clk = 0;
		forever begin
		#5 clk=~clk;
		end
		end

	initial begin
		// Initialize Inputs
	#5	reset = 0;
	#5	$stop;
		// Wait 100 ns for global reset to finish
		//#100;
        
		// Add stimulus here

	end
      
endmodule

