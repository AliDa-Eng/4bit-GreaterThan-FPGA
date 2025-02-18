`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/18/2025 12:08:44 AM
// Design Name: 
// Module Name: tb_gt_4bit
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


module tb_gt_4bit(

    );
    //signal declaration 
    reg [3:0] test_ina, test_inb;
    wire test_agtb; 
    
    gt_4bit instan1(.a(test_ina), .b(test_inb), .agtb(test_agtb));
    integer i, j;
     integer count = 0; // Counter for test cases
   // Generate test vectors
    initial begin
    //#5000
       // integer i, j;
       
        
        // Monitor outputs
        $monitor("Time = %0t | a = %d, b = %d, a > b = %b", $time, test_ina, test_inb, test_agtb);
        
        // Loop through test cases
        for (i = 0; i < 16; i = i + 1) begin
            for (j = 0; j < 16; j = j + 1) begin
                if (count >= 84) begin
              //      $stop; // Stop simulation after 84 cases
                end

                test_ina = i;
                test_inb = j;
                #2; // Wait 20 time units before the next test case
                
                count = count + 1; // Increment counter
            end
        end
        
        // Stop simulation
        $finish;
    end
    
    //generate test vectors 
    
 /*   initial 
    begin 
    $monitor ("Time = %0t || test_ina = %d || test_inb = %d || test_agtb = %d",$time,test_ina, test_inb, test_agtb);
    
    test_ina = 4'd00; 
    test_inb = 4'd01;
    #20;   
            
    test_ina = 4'd00; 
    test_inb = 4'd02;
    #20;   
            
    test_ina = 4'd00; 
    test_inb = 4'd03;
    #00;   
            
    test_ina = 4'd00; 
    test_inb = 4'd04;
    #20;   
            
    test_ina = 4'd07; 
    test_inb = 4'd05;
    #20;   
            
    test_ina = 4'd00; 
    test_inb = 4'd06;
    #20;   
            
    test_ina = 4'd00; 
    test_inb = 4'd07;
    #20;   
            
    test_ina = 4'd00; 
    test_inb = 4'd08;
    #20;   
            
    test_ina = 4'd00; 
    test_inb = 4'd09;
    #20;   
            
            
    test_ina = 4'd15; 
    test_inb = 4'd10;
    #20;   
            
            
    test_ina = 4'd00; 
    test_inb = 4'd13;
    #20;   
            
    test_ina = 4'd13; 




    test_inb = 4'd08;
    #20;             
                     
                     
            
 */
 // Generate test vectors
                  
endmodule       
