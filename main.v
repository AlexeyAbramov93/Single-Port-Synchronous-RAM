module main (

	input clk,
	
	input we,
	
	input [7:0] addr,
	input [23:0] din,
	
	// Block RAM Read/Write Synchronization Modes
	output [23:0] dout_rf,
	output [23:0] dout_wf,
	output [23:0] dout_nch

);


single_port_ram_read_first_mode #(.MEM_WIDTH(24), .ADDR_WIDTH(8)) 
single_port_ram_read_first_mode_inst (
    .clk(clk),
    .we(we),
    .addr(addr),
    .din(din),
    .dout(dout_rf)
);

single_port_ram_write_first_mode #(.MEM_WIDTH(24), .ADDR_WIDTH(8)) 
single_port_ram_write_first_mode_inst (
    .clk(clk),
    .we(we),
    .addr(addr),
    .din(din),
    .dout(dout_wf)
);


single_port_ram_no_change_mode #(.MEM_WIDTH(24), .ADDR_WIDTH(8)) 
single_port_ram_no_change_mode_inst (
    .clk(clk),
    .we(we),
    .addr(addr),
    .din(din),
    .dout(dout_nch)
);


endmodule
