module nines_complement_tb();
  logic [3:0] num_nine;
  logic [3:0] num;
  logic [3:0] complement_num;
 
  //Design Instance
  nines_complement dut (
    .num_nine(4'b1001),
    .num(num),
    .complement_num(complement_num)
  );
  
  initial begin
    $display ("RESULTS:");
    
    num = 4'b0011;  #100;
    $display("num = %d\tcomplement_num = %d", num, complement_num);
    num = 4'b0101;  #100;
    $display("num = %d\tcomplement_num = %d", num, complement_num);
    num = 4'b1001;  #100;
    $display("num = %d\tcomplement_num = %d", num, complement_num);
    num = 4'b1000;  #100;
    $display("num = %d\tcomplement_num = %d", num, complement_num);
  end
    
  //Waveform dump
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  
endmodule
