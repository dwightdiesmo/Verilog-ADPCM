`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/11/2021 01:32:01 PM
// Design Name: 
// Module Name: DFF
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
module DFF #(parameter WI = 5, WF = 11)
    (
    input CLK,EN,RST,
    input [(WI+WF)-1:0] D, 
    output reg [(WI+WF)-1:0] Q
    );
    
//    initial begin Q = 0; end
    always @(posedge CLK) begin
        if(EN) begin
            if (D != 0) begin
                Q <= D;
            end else begin
                Q <= 0;
            end
        end
    end
    always @(RST) begin
        if (RST) begin
            Q <= 0;
        end
    end
endmodule
