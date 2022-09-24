`timescale 1ns / 1ps

module DFF(
input D,clk,
output reg Q   );

always @(posedge clk)
    Q <=D;
endmodule
