`timescale 1ns / 1ps


module DFF_tb();
reg test_clk,test_D;
wire test_Q;

DFF U1(.D(test_D), .clk(test_clk),.Q(test_Q));

always
    begin
    #5 test_clk <= ~test_clk;
    end
    
initial 
    begin
    test_clk <=0;
    #20 test_D =0;
    #20 test_D =1;
    #20 test_D =0;
    #20 test_D =1;
    #20 test_D =0;
    #20 test_D =1;
    #20 test_D =0;
    #20 test_D =1;
    $stop;
    end
    
endmodule
