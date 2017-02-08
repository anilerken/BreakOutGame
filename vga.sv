// VGA signal generator
// Source: http://pumpingstationone.org/2013/04/nerp-fpgaok/
`timescale 1ns / 1ps

module vga(
	input logic clk,			
	output logic hsync,
	output logic vsync,		
	output logic [9:0] hc,
	output logic [9:0] vc
	);

logic newclk;
clockdiv divideclok( clk, newclk);
	
// Video structure constants
parameter hpixels = 800; // horizontal pixels per line
parameter vlines = 521;  // vertical lines per frame
parameter hpulse = 96; 	 // hsync pulse length
parameter vpulse = 2; 	 // vsync pulse length
parameter hbp = 144; 	 // beginning of horizontal back porch
parameter hfp = 784; 	 // end of horizontal front porch
parameter vbp = 31; 	 // beginning of vertical back porch
parameter vfp = 511; 	 // end of vertical front porch
// active horizontal video is therefore: 784 - 144 = 640
// active vertical video is therefore: 511 - 31 = 480

always @( posedge newclk )
begin
		// keep counting until the end of the line
		if ( hc < hpixels - 1)
			hc <= hc + 1;
		else
		// When we hit the end of the line, reset the horizontal
		// counter and increment the vertical counter.
		// If vertical counter is at the end of the frame, then
		// reset that one too.
		begin
			hc <= 0;
			if (vc < vlines - 1)
				vc <= vc + 1;
			else
				vc <= 0;
		end
	end

// generate sync pulses 
assign hsync = (hc < hpulse) ? 0:1;
assign vsync = (vc < vpulse) ? 0:1;

endmodule