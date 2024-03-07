module decoder_3to8_tb ();
  logic  [2:0] in;
  logic        en;
  logic  [7:0] out;
  
  //Design Instance
  decoder_3to8 dut (
    .in(in),
    .en(en),
    .out(out)
  );
  
  initial begin
    en = 1'b0;
    in = 3'b010; #100;
    en = 1'b1;   #50;
    in = 3'b001; #100;
    in = 3'b110; #100;
    in = 3'b000; #100;
    in = 3'b001; #100;
    in = 3'b011; #100;
    in = 3'b101; #100;
    in = 3'b100; #100;
  end
  
  //Waveform dump
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  
endmodule
