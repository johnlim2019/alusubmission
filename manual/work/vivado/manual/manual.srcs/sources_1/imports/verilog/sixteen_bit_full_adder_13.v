/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module sixteen_bit_full_adder_13 (
    input [15:0] x,
    input [15:0] y,
    input [5:0] op,
    output reg [15:0] s,
    output reg z,
    output reg v,
    output reg n
  );
  
  
  
  reg [15:0] temp;
  
  always @* begin
    if (op[0+0-:1] == 1'h0) begin
      temp = x + y;
    end else begin
      temp = x - y;
    end
    s = temp;
    if (temp == 1'h0) begin
      z = 1'h1;
    end else begin
      z = 1'h0;
    end
    n = temp[15+0-:1];
    v = (x[15+0-:1] & (y[15+0-:1] ^ op[0+0-:1]) & ~temp[15+0-:1]) + (~x[15+0-:1] & (~y[15+0-:1] ^ op[0+0-:1]) & temp[15+0-:1]);
  end
endmodule
