`timescale 1ns / 1ps

module fourBitMultiplier(output logic [7:0] outLeds,
                    input [3:0] x, y,
                    input load, clk, reset, step,
                    output logic a1, b1, c1, d1, e1, f1, g1, dp1,
                    output logic [3:0] an1);


logic [7:0] tmp0, tmp1, tmp2, tmp3;
integer a = 0;
logic [7:0] tmp;
logic [7:0] testS0, testS1, testS2;

 //create states
 typedef enum logic [2:0] {St0, St1, St2, St3} State;
 State currentState, nextState;

assign tmp = {4'b0000, y};

   always_ff @(posedge step or posedge reset)     
     begin 
 if (reset)
   begin
      a = 0;
      currentState <= St0;
      nextState = St0;
      outLeds = 8'b0000_0000;
   end
 else if(step)
//      a = a + 1;

   if (load)
     begin

        if(currentState == St0) // first base
        begin
        if(x[0] == 1'b0)
            tmp0 = 8'b0000_0000;
        else if(x[0] == 1'b1)
            tmp0 = tmp;
        currentState <= St1;
        outLeds = tmp0;
        end
        
        else if(currentState == St1) // second base
        begin
          if(x[1] == 1'b0)
                  tmp1 = 8'b0000_0000;
          else if(x[1] == 1'b1)
                  tmp1 = tmp<<1;
        currentState <= St2;
          outLeds = tmp0 + tmp1;
        end
        
        else if(currentState == St2)  // third base
        begin
          if(x[2] == 1'b0)
                  tmp2 = 8'b0000_0000;
          else if(x[2] == 1'b1)
                  tmp2 = tmp<<2;
        currentState <= St3;
        outLeds = tmp0 + tmp1 + tmp2;
        end
        
        else if(currentState == St3) // fourth base
        begin   //1
         if(x[3] == 1'b0)
               tmp3 = 8'b0000_0000;
        else if(x[2] == 1'b1)
               tmp3 = tmp<<3; 
        
//        testS0 = tmp0;
//        testS1 = tmp0 + tmp1;
           testS2 = tmp0 + tmp1 + tmp2;
        outLeds = tmp0 + tmp1 + tmp2 + tmp3;
        end   //1
      
       end
       
     end
    
    
           //7segment Variables
    reg [3:0] out0, out1, out2, out3;   
              assign{out3, out2, out1, out0} = outLeds;
       
          SevSeg_4digit sevenSegCall(clk, out0, out1, out2, out3, a1, b1, c1, d1, e1, f1, g1, dp1, an1); 
          
endmodule
                 
                 
    