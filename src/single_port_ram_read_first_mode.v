module single_port_ram_read_first_mode #(parameter MEM_WIDTH=24, parameter ADDR_WIDTH=8)(
	input clk,
	input we,
	input [ADDR_WIDTH-1:0] addr,
	input [MEM_WIDTH-1:0] din,
	output reg [MEM_WIDTH-1:0] dout
);

	localparam MEM_DEPTH = 1 << ADDR_WIDTH; // MEM_DEPTH = 2**ADDR_WIDTH;

	reg [MEM_WIDTH-1:0] mem [0:MEM_DEPTH-1];

	always @(posedge clk) begin
		// Read-first mode: the old data is shown on the output before it gets replaced.
		if (we)
			mem[addr] <= din;
		dout <= mem[addr];
    end
	 
endmodule
