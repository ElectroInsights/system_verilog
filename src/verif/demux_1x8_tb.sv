module demux_1x8_tb ();
  logic       in;
  logic [2:0] sel;
  logic [7:0] out;
  
  //Design Instance
  demux_1x8 dut (
    .in(in),
    .sel(sel),
    .out(out)
  );
  
  initial begin 
    sel = 3'b000;
    in  = 1'b0;  #40;
    in  = 1'b1;  #40;
    
    sel = 3'b001;
    in  = 1'b0;  #40;
    in  = 1'b1;  #40;

    sel = 3'b010;
    in  = 1'b0;  #40;
    in  = 1'b1;  #40;

    sel = 3'b011;
    in  = 1'b0;  #40;
    in  = 1'b1;  #40;

    sel = 3'b100;
    in  = 1'b0;  #40;
    in  = 1'b1;  #40;

    sel = 3'b101;
    in  = 1'b0;  #40;
    in  = 1'b1;  #40;

    sel = 3'b110;
    in  = 1'b0;  #40;
    in  = 1'b1;  #40;

    sel = 3'b111;
    in  = 1'b0;  #40;
    in  = 1'b1;  #40;
  end
  
  //Waveform dump
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  
endmodule
