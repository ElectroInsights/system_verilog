module basic_inverter_tb ();
  logic in;
  logic out;
  
  //Design Instance
  basic_inverter inv (
    .in(in),
    .out(out)
  );
  
  initial begin
    $display ("RESULT\ta\ty");
    
    in = 1;    //Change value
    #100;     //Wait for some time, here 100
    if ( out == 0 ) // Test for inversion
		$display ("  PASS  \t%d\t%d",in,out);
	else
		$display ("  FAIL \t%d\t%d",in,out);
    
    in = 0;    //Change value
    #60;     //Wait for some time, here 60
    if ( out == 1 ) // Test for inversion
		$display ("  PASS  \t%d\t%d",in,out);
	else
		$display ("  FAIL \t%d\t%d",in,out);
    
    in = 1;    //Change value
    #80;     //Wait for some time, here 80
    if ( out == 0 ) // Test for inversion
		$display ("  PASS  \t%d\t%d",in,out);
	else
      $display ("  FAIL \t%d\t%d",in,out);
    
    in = 0;    //Change value
    #100;     //Wait for some time, here 100
    if ( out == 1 ) // Test for inversion
		$display ("  PASS  \t%d\t%d",in,out);
	else
      $display ("  FAIL \t%d\t%d",in,out);
  end
  
  //Waveform dump-----> Can be removed if you are getting error
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  
endmodule