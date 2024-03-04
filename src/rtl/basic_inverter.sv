module basic_inverter (
    input  logic in,
    output logic out
  );
    assign out = ~in;
  
endmodule