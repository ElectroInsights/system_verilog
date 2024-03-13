//`include "half_adder.sv"
//`include "or_gate.sv"

module full_adder_using_half_adder (
  input  logic a,
  input  logic b,
  input  logic c_in,
  output logic sum,
  output logic c_out
);
  
  logic [1:0] ha_carry;
  logic       ha_sum;
  
  half_adder ha_inst00 (
    .a(a),
    .b(b),
    .sum(ha_sum),
    .carry(ha_carry[0])
  );
  
  half_adder ha_inst01 (
    .a(ha_sum),
    .b(c_in),
    .sum(sum),
    .carry(ha_carry[1])
  );
  
  or_gate or_inst00 (
    .a(ha_carry[0]),
    .b(ha_carry[1]),
    .out(c_out)
  );
  
endmodule



module half_adder (
  input  logic a,
  input  logic b,
  output logic sum,
  output logic carry
);
  
  assign sum   = a ^ b;
  assign carry = a && b;
  
endmodule



module or_gate (
  input  logic a,
  input  logic b,
  output logic out
);
  
  assign out = a || b;
  
endmodule
