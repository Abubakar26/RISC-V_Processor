`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:25:51 12/06/2018
// Design Name:   counter
// Module Name:   D:/installed ise/ProcessorRISC/countetb.v
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

module countetb;

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
		clk = 0;
		forever
		#5 clk = ~clk;
		end
	initial begin
	#5 reset=0;
	$stop;
end
endmodule

