`timescale 1ns / 1ps

module TFF_tb();
reg test_clk, test_rst, test_T;
wire test_Q;

TFF2 U1(.T(test_T), .clk(test_clk), .rst(test_rst), .Q(test_Q));

always
    begin
    #5 test_clk <=~test_clk;
    end
    
initial
    begin
    test_clk <=0;
    test_rst <=0;
    #10 test_rst =1;
    #10 test_rst =0;
    #20 test_T =0;
    #20 test_T =1;
    #20 test_T =0;
    #20 test_T =1;
    #20 test_T =0;
    #20 test_T =1;
    #10;
    $stop;
 end
        
endmodule
