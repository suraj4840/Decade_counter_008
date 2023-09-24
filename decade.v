`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/14/2023 09:59:53 AM
// Design Name: 
// Module Name: decade_counte
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

module decade_counter(rst,clk,count);
input rst ,clk;
output reg [3:0] count;


always @(posedge clk,posedge rst) 
begin
      if(rst)                        // if(rst|(count==4'b1001))
         count<=4'b0000;
      else
          begin
             if(count < 4'b1001)
                 count <= count+1;
             else 
                 count <= 4'b0000;
           end 
end              
              
                
endmodule 
