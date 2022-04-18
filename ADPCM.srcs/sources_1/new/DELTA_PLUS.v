`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/11/2021 03:38:40 PM
// Design Name: 
// Module Name: DELTA_PLUS
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
module DELTA_PLUS #(parameter WLI = 1, WLF = 15, WL = WLI + WLF)(
    input signed [WL-1:0] delta,
    input codeWord,
    output reg signed [WL-1:0] deltaP1
    );
    wire [WL-1:0] deltaDiv, deltaMult;
    assign deltaDiv = delta >>> 1;
    assign deltaMult = delta <<< 1;
    
    always @(*) begin
        if (codeWord == 'b0)
            deltaP1 = deltaDiv;
        else if (codeWord == 'b1) 
            deltaP1 = deltaMult;
    end
endmodule
