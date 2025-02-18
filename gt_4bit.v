`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/17/2025 10:34:00 PM
// Design Name: 
// Module Name: gt_4bit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module gt_4bit(
    input [3:0] a,
    input [3:0] b,
    output  reg agtb
    );
    //verilog unlike systemverilog doesn't allow direct indexing of bus elements inside port mapping, thus creating wires
    wire [1:0] a_msb, a_lsb, b_msb, b_lsb;
    wire aeqb;
    wire agtb_msb; // if 0 then msb a < b, if 1 then msb a > b
    wire agtb_lsb;
  
    assign a_msb = {a[3], a[2]};
    assign b_msb = {b[3], b[2]}; 
    assign a_lsb = {a[1], a[0]};
    assign b_lsb = {b[1], b[0]}; 
    
    assign aeqb = (a_msb  == b_msb)? 1'b1: 1'b0;
    
    //if aeqb == 1;
    gt_2bit instan1 (.a(a_msb), .b(b_msb), .agtb(agtb_msb));
    gt_2bit instan2 (.a(a_lsb), .b(b_lsb), .agtb(agtb_lsb));
    
   // assign agtb = agtb_msb || agtb_lsb;
    
    always @(*)
    begin 
    
        if (agtb_msb )
            agtb = 1 ;
        else if ( aeqb )
            agtb = agtb_lsb;
        else 
            agtb = 0;
    end 
    

    
endmodule
