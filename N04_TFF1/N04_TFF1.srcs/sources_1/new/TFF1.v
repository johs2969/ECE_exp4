`timescale 1ns / 1ps

module TFF1(
input T,clk,rst,
output reg Q 
    );
    
always @(posedge clk or posedge rst)
begin
    if(rst)
    Q <= 1'b0;
    else if(T)
    Q <= ~Q;
end
          
endmodule
