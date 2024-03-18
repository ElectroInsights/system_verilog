module carry_look_ahead_adder_4bits_tb ();
  logic [3:0] a;
  logic [3:0] b;
  logic       c_in;
  logic [3:0] sum;
  logic       c_out;
  
  carry_look_ahead_adder_4bits dut (
    .a(a),
    .b(b),
    .c_in(c_in),
    .sum(sum),
    .c_out(c_out)
  );
  
  initial begin
    $display ("FULL ADDER OUTPUT:");
    $display (" A\t B\t C_IN\t Sum\tC_OUT");
    
    a = 4'b0010; b = 4'b0100; c_in = 1'b0; #100;
    $display("%d\t%d\t%d\t%d\t%d",a,b,c_in,sum,c_out);
    
    a = 4'b0010; b = 4'b0100; c_in = 1'b1; #100;
    $display("%d\t%d\t%d\t%d\t%d",a,b,c_in,sum,c_out);
    
    a = 4'b0011; b = 4'b1100; c_in = 1'b0; #100;
    $display("%d\t%d\t%d\t%d\t%d",a,b,c_in,sum,c_out);
    
    a = 4'b0011; b = 4'b1100; c_in = 1'b1; #100;
    $display("%d\t%d\t%d\t%d\t%d",a,b,c_in,sum,c_out);
    
    a = 4'b1011; b = 4'b1000; c_in = 1'b0; #100;
    $display("%d\t%d\t%d\t%d\t%d",a,b,c_in,sum,c_out);
    
    a = 4'b1011; b = 4'b1000; c_in = 1'b1; #100;
    $display("%d\t%d\t%d\t%d\t%d",a,b,c_in,sum,c_out);
    
    a = 4'b1011; b = 4'b1110; c_in = 1'b1; #100;
    $display("%d\t%d\t%d\t%d\t%d",a,b,c_in,sum,c_out);
    
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  
endmodule
