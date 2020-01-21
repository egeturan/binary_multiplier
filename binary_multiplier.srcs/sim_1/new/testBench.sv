`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.04.2018 23:23:27
// Design Name: 
// Module Name: testBench
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


module fourBitMultiplier_testBench(

    );

   

    logic [7:0] op;
    logic step;
    logic [3:0] a, b;
    logic load, clk, rst_a;
    logic a1, b1, c1, d1, e1, f1, g1, dp1;
    logic [3:0] an1;
   

    fourBitMultiplier dut(op, a, b, load, clk, rst_a, step, a1, b1, c1, d1, e1, f1, g1, dp1, an1);

    always

        begin

            clk = 1;
            
            #5;

            clk = 0;
            
            step = 0;

            #5;

        end  
   
   always
   
        begin
            step = 1;
            
            #50
            
            step = 0;     
            
            #50;
            
       end
   
    initial

        begin

            a = 1101;
            b = 1101;
            rst_a = 1; #10;
            rst_a = 0; #10;
            load = 1; #10;
            
//            rst_a = 1; #10;
//            rst_a = 0; #10;
                   
//            load = 1;
//             a = 0001; 
//             b = 0011; #10;
            
            
//           rst_a = 1; #10;
//           rst_a = 0; #10;
//           load = 1;
//           a = 1001; 
//           b = 1101; #10;
                      

   end

endmodule
