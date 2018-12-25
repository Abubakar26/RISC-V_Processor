`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:35:36 12/15/2018
// Design Name:   REGFILE
// Module Name:   D:/installed ise/ProcessorRISC/fixture.v
// Project Name:  ProcessorRISC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: REGFILE
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fixture;

	// Inputs
	reg clk;
	reg [4:0] adress;
	reg [4:0] adress2;
	reg [31:0] data;
	reg wren;
	reg [4:0] adressread;
	reg [4:0] adressread2;

	// Outputs
	wire [31:0] dataout;
	wire [31:0] dataout2;

	// Instantiate the Unit Under Test (UUT)
	REGFILE uut (
		.clk(clk), 
		.adress(adress), 
		.adress2(adress2), 
		.data(data), 
		.wren(wren), 
		.dataout(dataout), 
		.dataout2(dataout2), 
		.adressread(adressread), 
		.adressread2(adressread2)
	);
	initial begin
		// Initialize Inputs
		clk = 1;
	forever begin
	#5clk=~clk;
	end
	end

	initial begin
		// Initialize Inputs
		adress = 5'd2;
		adress2 = 5'd1;
		data = 32'd8;
		wren = 1;
		adressread = 5'd2;
		adressread2 = 5'd1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

