`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/11/2021 01:42:51 PM
// Design Name: 
// Module Name: BIT_QUANTIZER
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
module BIT_QUANTIZER #(parameter WLI = 1, WLF = 15, WL = WLI + WLF)(
        input CLK, RST,
        input signed [WL-1:0] d,
        output signed [WL-1:0] dq,
        output codeWord,
        output signed [1:0] codeSign
    );
    wire signed [WL-1:0] deltaOut, deltaP1, deltaMin, deltaMax;
    reg signed [WL-1:0] temp;
    
    DELTA #(.WLI(WLI),.WLF(WLF)) DELTA_CALC (.CLK(CLK),.RST(RST),.codeWord(codeWord),.delta(deltaOut));
    CODEWORD #(.WL(WL)) CODEWORD_CALC (.d(d),.delta(deltaOut),.codeWord(codeWord));
    CODESIGN #(.WL(WL)) CODESIGN_CALC (.d(d),.codeSign(codeSign));
    DQ #(.WLI(WLI),.WLF(WLF)) DQ_CALC (.codeWord(codeWord),.delta(deltaOut),.dq(dq));
endmodule