//`timescale <time_units> / <precision>
`timescale 1ns / 1ps

module main_tb;

	parameter MEM_WIDTH=24;
	parameter ADDR_WIDTH=8;

	// Inputs
	reg clk;
	reg we;
	reg [ADDR_WIDTH-1:0] addr;
	reg [MEM_WIDTH-1:0] din;

	// Outputs
	wire [MEM_WIDTH-1:0] dout_rf;
	wire [MEM_WIDTH-1:0] dout_wf;
	wire [MEM_WIDTH-1:0] dout_nch;
	 
	// Instantiate the module
	main DUT (
		.clk(clk),
		.we(we),
		.addr(addr),
		.din(din),
		.dout_rf(dout_rf),
		.dout_wf(dout_wf),
		.dout_nch(dout_nch)
	);

	// Clock generation
	always #5 clk = ~clk;

	initial begin
		$display("Start simulation");
		clk = 0;
		we = 0;
		addr = 0;
		din = 0;
		      
		#10;
				
		// Write value
		addr = 8'h05;
		din = 24'hAAAAAA;
		we = 1;
		#10;

		// Turn off write, check read
		we = 0;
		addr = 8'h05;
		din = 0;
		#10;

		// Read the value
		addr = 8'h05;
		#10;
		
		
		#10;
				
		// Write value
		addr = 8'h05;
		din = 24'h111111;
		we = 1;
		#10;

		// Turn off write, check read
		we = 0;
		addr = 8'h05;
		din = 0;
		#10;

		// Read the value
		addr = 8'h05;
		#10;		
		
		

		$display("=== End of test ===");

		$stop;

end

endmodule

