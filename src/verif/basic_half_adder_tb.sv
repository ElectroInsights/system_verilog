module basic_half_adder_tb ();
  logic a;
  logic b;
  logic sum;
  logic carry;
  
  basic_half_adder dut (
    .a(a),
    .b(b),
    .sum(sum),
    .carry(carry)
  );
  
  initial begin
    $display ("HALF ADDER OUTPUT:\tA\tB\tSum\tCarry");
    
    a = 0; b = 0;   #100;
    $display("\t\t\t%d\t%d\t%d\t%d",a,b,sum,carry);
           b = 1;   #100;
    $display("\t\t\t%d\t%d\t%d\t%d",a,b,sum,carry);
    a = 1;          #100;
    $display("\t\t\t%d\t%d\t%d\t%d",a,b,sum,carry);
           b = 0;   #100;
    $display("\t\t\t%d\t%d\t%d\t%d",a,b,sum,carry);
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  
endmodule
