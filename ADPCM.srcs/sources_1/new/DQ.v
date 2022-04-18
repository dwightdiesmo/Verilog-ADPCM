`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/11/2021 03:11:59 PM
// Design Name: 
// Module Name: DQ
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
module DQ #(parameter WLI = 1, WLF = 15, WL = WLI + WLF)(
    input codeWord,
    input signed [WL-1:0] delta,
    output reg signed [WL-1:0] dq
    );
    wire [WL-1:0] deltaDiv, deltaAdd;
    assign deltaDiv = delta >>> 1;
    ADDER_FIXED_POINT #(.WI1(WLI),.WF1(WLF),.WI2(WLI),.WF2(WLF),.WIO(WLI),.WFO(WLF)) ADD_DELTA (.in1(deltaDiv),.in2(delta),.out(deltaAdd));  
    
    always @(*) begin
        if (codeWord == 'b0) 
            dq = deltaDiv;
        else if (codeWord == 'b1)
            dq = deltaAdd;   
    end
endmodule
