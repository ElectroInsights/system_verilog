module basic_or_tb ();
  logic in1;
  logic in2;
  logic out;
  
  //Design Instance
  basic_or inst_or (
    .in1(in1),
    .in2(in2),
    .out(out)
  );
  
  initial begin
    $display ("RESULT\ta\ty");
    
    in1 = 0;    //Change value
    in2 = 0;    //Change value
    #100;     //Wait for some time, here 100
    if ( out == 0 ) // Test for inversion
      $display ("  PASS  \t%d\t%d\t%d",in1,in2,out);
	else
		$display ("  FAIL \t%d\t%d\t%d",in1,in2,out);
    
    in1 = 0;    //Change value
    in2 = 1;    //Change value
    #60;     //Wait for some time, here 60
    if ( out == 1 ) // Test for inversion
		$display ("  PASS  \t%d\t%d\t%d",in1,in2,out);
	else
		$display ("  FAIL \t%d\t%d\t%d",in1,in2,out);
    
    in1 = 1;    //Change value
    in2 = 0;    //Change value
    #80;     //Wait for some time, here 80
    if ( out == 1 ) // Test for inversion
		$display ("  PASS  \t%d\t%d\t%d",in1,in2,out);
	else
      $display ("  FAIL \t%d\t%d\t%d",in1,in2,out);
    
    in1 = 1;    //Change value
    in2 = 1;    //Change value
    #100;     //Wait for some time, here 100
    if ( out == 1 ) // Test for inversion
		$display ("  PASS  \t%d\t%d\t%d",in1,in2,out);
	else
      $display ("  FAIL \t%d\t%d\t%d",in1,in2,out);
  end
  
  //Waveform dump
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  
endmodule
