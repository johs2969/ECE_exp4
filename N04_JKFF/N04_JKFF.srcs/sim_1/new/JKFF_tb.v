`timescale 1ns / 1ps

module JKFF_tb();
reg test_clk, test_J, test_K;
wire test_Q;

JKFF U1(.J(test_J), .K(test_K), .clk(test_clk), .Q(test_Q));

always
begin
    #5 test_clk <= ~test_clk;
    end
    
initial 
begin
    test_clk <=0;
    #20 {test_J,test_K} <=2'b00;
    #20 {test_J,test_K} <=2'b01;
    #20 {test_J,test_K} <=2'b00;
    #20 {test_J,test_K} <=2'b10;
    #20 {test_J,test_K} <=2'b00;
    #20 {test_J,test_K} <=2'b11;
    #20 {test_J,test_K} <=2'b00;
    #20;
    $stop;
    end
endmodule
