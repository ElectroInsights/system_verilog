module mux_8x1_tb ();
  logic [7:0] in;
  logic [2:0] sel;
  logic       out;
  
  //Design Instance
  mux_8x1 dut (
    .in(in),
    .sel(sel),
    .out(out)
  );
  
  initial begin 
    sel = 3'b000;
    in  = 8'b00000000;  #40;
    in  = 8'b11111111;  #40;
    
    sel = 3'b001;
    in  = 8'b00000000;  #40;
    in  = 8'b11111111;  #40;

    sel = 3'b010;
    in  = 8'b00000000;  #40;
    in  = 8'b11111111;  #40;

    sel = 3'b011;
    in  = 8'b00000000;  #40;
    in  = 8'b11111111;  #40;

    sel = 3'b100;
    in  = 8'b00000000;  #40;
    in  = 8'b11111111;  #40;

    sel = 3'b101;
    in  = 8'b00000000;  #40;
    in  = 8'b11111111;  #40;

    sel = 3'b110;
    in  = 8'b00000000;  #40;
    in  = 8'b11111111;  #40;

    sel = 3'b111;
    in  = 8'b00000000;  #40;
    in  = 8'b11111111;  #40;
  end
  
  //Waveform dump
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  
endmodule
