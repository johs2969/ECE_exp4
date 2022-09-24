`timescale 1ns / 1ps

module TFF2(
input T,clk,rst,
output reg Q 
    );
    reg T_trig, T_reg;
    
always @(posedge clk)
begin
  if(rst)
    begin
    Q <= 1'b0;
    T_trig <= 1'b0;
    T_reg <= 1'b0;
    end
  else
    begin
    T_reg <=T;
    T_trig <=T & ~T_reg;
    end

    if(T_trig)
    Q <= ~Q;
 end
          
endmodule
