module carry_look_ahead_adder_4bits (
  input logic  [3:0] a,
  input logic  [3:0] b,
  input logic        c_in,
  output logic [3:0] sum,
  output logic       c_out
);
  
  logic [3:0] g;
  logic [3:0] p;
  logic [3:0] c_out_w;
  
  and_gate generate_carry_0 ( .a(a[0]), .b(b[0]), .out(g[0]) );
  and_gate generate_carry_1 ( .a(a[1]), .b(b[1]), .out(g[1]) );
  and_gate generate_carry_2 ( .a(a[2]), .b(b[2]), .out(g[2]) );
  and_gate generate_carry_3 ( .a(a[3]), .b(b[3]), .out(g[3]) );
  
  xor_gate propagate_carry_0 ( .a(a[0]), .b(b[0]), .out(p[0]) );
  xor_gate propagate_carry_1 ( .a(a[1]), .b(b[1]), .out(p[1]) );
  xor_gate propagate_carry_2 ( .a(a[2]), .b(b[2]), .out(p[2]) );
  xor_gate propagate_carry_3 ( .a(a[3]), .b(b[3]), .out(p[3]) );
  
  assign c_out_w[0] = c_in;
  carry c1 ( .g(g[0]), .p(p[0]), .c_in(c_out_w[0]), .c_out(c_out_w[1]) );
  carry c2 ( .g(g[1]), .p(p[1]), .c_in(c_out_w[1]), .c_out(c_out_w[2]) );
  carry c3 ( .g(g[2]), .p(p[2]), .c_in(c_out_w[2]), .c_out(c_out_w[3]) );
  carry c4 ( .g(g[3]), .p(p[3]), .c_in(c_out_w[3]), .c_out(c_out) );
  
  xor_gate sum_0 ( .a(p[0]), .b(c_out_w[0]), .out(sum[0]) );
  xor_gate sum_1 ( .a(p[1]), .b(c_out_w[1]), .out(sum[1]) );
  xor_gate sum_2 ( .a(p[2]), .b(c_out_w[2]), .out(sum[2]) );
  xor_gate sum_3 ( .a(p[3]), .b(c_out_w[3]), .out(sum[3]) );
  
endmodule

module carry (
  input  logic  g,
  input  logic  p,
  input  logic  c_in,
  output logic  c_out
);
  
  logic prop_carry;
  
  and_gate and_inst (
    .a(p),
    .b(c_in),
    .out(prop_carry)
  );
  
  or_gate or_inst (
    .a(g),
    .b(prop_carry),
    .out(c_out)
  );
  
endmodule

module and_gate (
  input  logic  a,
  input  logic  b,
  output logic out
);
  
  assign out = a && b;
  
endmodule


module or_gate (
  input  logic  a,
  input  logic  b,
  output logic out
);
  
  assign out = a || b;
  
endmodule


module xor_gate (
  input  logic  a,
  input  logic  b,
  output logic out
);
  
  assign out = a ^ b;
  
endmodule
