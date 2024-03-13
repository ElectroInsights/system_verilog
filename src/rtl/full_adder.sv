module full_adder (
  input  logic [3:0] a,
  input  logic [3:0] b,
  input  logic       c_in,
  output logic [3:0] sum,
  output logic       c_out
);
  
  logic [2:0] c_in_w;
  
  assign sum[0]    = a[0] ^ b[0] ^ c_in;
  assign c_in_w[0] = (a[0] && b[0]) || (b[0] && c_in) || (c_in && a[0]);
  
  assign sum[1]    = a[1] ^ b[1] ^ c_in_w[0];
  assign c_in_w[1] = (a[1] && b[1]) || (b[1] && c_in_w[0]) || (c_in_w[0] && a[1]);
  
  assign sum[2]    = a[2] ^ b[2] ^ c_in_w[1];
  assign c_in_w[2] = (a[2] && b[2]) || (b[2] && c_in_w[1]) || (c_in_w[1] && a[2]);
  
  assign sum[3]    = a[3] ^ b[3] ^ c_in_w[2];
  assign c_out     = (a[3] && b[3]) || (b[3] && c_in_w[2]) || (c_in_w[2] && a[3]);
  
endmodule
