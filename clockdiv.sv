// Clock divider to entegrate FPGA and VGA clocks 
// Source: http://pumpingstationone.org/2013/04/nerp-fpgaok/

module clockdiv(
	input logic clk,		
	output logic newclk		
	);

// 17-bit counter variable
logic [16:0] q;

//// Clock divider --
//// Each bit in q is a clock signal that is
//// only a fraction of the master clock.
always @(posedge clk )
begin
		q <= q + 1;
end

assign newclk = q[0];

endmodule
