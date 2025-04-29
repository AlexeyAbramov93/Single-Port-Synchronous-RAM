module single_port_ram_write_first_mode #(parameter MEM_WIDTH=24, parameter ADDR_WIDTH=8)(
	input clk,
	input we,
	input [ADDR_WIDTH-1:0] addr,
	input [MEM_WIDTH-1:0] din,
	output reg [MEM_WIDTH-1:0] dout
);

	localparam MEM_DEPTH = 1 << ADDR_WIDTH; // MEM_DEPTH = 2**ADDR_WIDTH;

	reg [MEM_WIDTH-1:0] mem [0:MEM_DEPTH-1];

	always @(posedge clk) begin
		// Write-first mode: new data is saved and also shown on the output at the same time.
		if (we) 
			mem[addr] <= din;
		dout <= we ? din : mem[addr];
    end
	 
endmodule
