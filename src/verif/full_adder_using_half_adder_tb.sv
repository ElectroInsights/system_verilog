module full_adder_using_half_adder_tb ();
  logic a;
  logic b;
  logic c_in;
  logic sum;
  logic c_out;
  
  full_adder_using_half_adder dut (
    .a(a),
    .b(b),
    .c_in(c_in),
    .sum(sum),
    .c_out(c_out)
  );
  
  initial begin
    $display ("FULL ADDER OUTPUT:");
    $display ("A\tB\tC_IN\tSum\tC_OUT");
    
    a = 1'b0; b = 1'b0; c_in = 1'b0; #100;
    $display("%d\t%d\t%d\t%d\t%d",a,b,c_in,sum,c_out);
    
    a = 1'b0; b = 1'b0; c_in = 1'b1; #100;
    $display("%d\t%d\t%d\t%d\t%d",a,b,c_in,sum,c_out);
    
    a = 1'b0; b = 1'b1; c_in = 1'b0; #100;
    $display("%d\t%d\t%d\t%d\t%d",a,b,c_in,sum,c_out);
    
    a = 1'b0; b = 1'b1; c_in = 1'b1; #100;
    $display("%d\t%d\t%d\t%d\t%d",a,b,c_in,sum,c_out);
    
    a = 1'b1; b = 1'b0; c_in = 1'b0; #100;
    $display("%d\t%d\t%d\t%d\t%d",a,b,c_in,sum,c_out);
    
    a = 1'b1; b = 1'b0; c_in = 1'b1; #100;
    $display("%d\t%d\t%d\t%d\t%d",a,b,c_in,sum,c_out);
    
    a = 1'b1; b = 1'b1; c_in = 1'b0; #100;
    $display("%d\t%d\t%d\t%d\t%d",a,b,c_in,sum,c_out);
    
    a = 1'b1; b = 1'b1; c_in = 1'b1; #100;
    $display("%d\t%d\t%d\t%d\t%d",a,b,c_in,sum,c_out);

  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  
endmodule
