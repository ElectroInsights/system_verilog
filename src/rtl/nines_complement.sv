module nines_complement ( 
  input  logic [3:0] num_nine,
  input  logic [3:0] num,
  output logic [3:0] complement_num
);
  assign complement_num = num_nine - num;
  
endmodule
