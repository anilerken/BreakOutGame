// Top module to instantiate other modules

module breakout(
    input logic clk,
    input logic right,
    input logic left,
    input logic reset,
    output logic [2:0] red,
    output logic [2:0] green,
    output logic [2:0] blue,
    output logic hsync,
    output logic vsync
    );
    
logic newclk;
clockdiv divider( clk, newclk);
logic [9:0] xpos;
logic [9:0] ypos;
vga signal_generator_inst(newclk, hsync, vsync, xpos, ypos);
game game_inst(newclk, xpos, ypos, right, left, reset, red, green, blue);                                                                  

endmodule