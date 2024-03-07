module encoder_8to3_tb ();
  logic  [7:0] in;
  logic        en;
  logic  [2:0] out;
  
  //Design Instance
  encoder_8to3 dut (
    .in(in),
    .en(en),
    .out(out)
  );
  
  initial begin
    en = 1'b0;
    in = 8'b00100000; #100;
    en = 1'b1;   #50;
    in = 8'b00001000; #100;
    in = 8'b00000010; #100;
    in = 8'b10000000; #100;
    in = 8'b00000100; #100;
    in = 8'b00000001; #100;
    in = 8'b00010000; #100;
    in = 8'b01000000; #100;
  end
  
  //Waveform dump
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  
endmodule
