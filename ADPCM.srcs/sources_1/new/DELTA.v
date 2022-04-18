`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/11/2021 03:25:07 PM
// Design Name: 
// Module Name: DELTA
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


//module DELTA #(parameter WLI = 1, WLF = 15, WL = WLI + WLF)(
//    input CLK, RST,
//    input codeWord,
//    output reg signed [WL-1:0] delta
//    );
//    reg signed [WL-1:0] deltaP1, deltaMin, deltaMax; 
//    wire signed [WL-1:0] deltaUnclipped;
//    initial begin deltaMin = 'b0000000010000000; deltaMax = 'b0111111111111111; delta = 'b0000000010000000; end
//    DELTA_PLUS #(.WLI(WLI),.WLF(WLF)) DELTA_P1 (.delta(delta),.codeWord(codeWord),.deltaP1(deltaUnclipped));
//    always @(*) begin 
//        if(deltaUnclipped < deltaMin)
//            deltaP1 = deltaMin;
//        else 
//            deltaP1 = deltaUnclipped;
//    end
//    always @(posedge CLK) begin
//        delta <= deltaP1;
//    end
//    always @(RST) begin
//        if (RST) begin
//            delta <= 'b0000000010000000;
//        end
//    end
//endmodule
`define DELTA_MIN 16'b0000000010000000 //0.0039

module DELTA#(parameter  WLI = 1, WLF = 15, WL = WLI + WLF)
    (
    input RST, CLK, codeWord,
    output reg [WL-1:0] delta
    );
    reg signed [WL-1:0] deltaP1, deltaUnclipped; 
    wire [WL-1:0] deltaDiv, deltaMult;
    assign deltaDiv = delta >>> 1;
    assign deltaMult = delta <<< 1;
    
    always @(*) begin
        if (codeWord == 'b0)
            deltaUnclipped = deltaDiv;
        else if (codeWord == 'b1) 
            deltaUnclipped = deltaMult;
    end
    always @(*) begin 
        if(deltaUnclipped < `DELTA_MIN)
            deltaP1 = `DELTA_MIN;
        else 
            deltaP1 = deltaUnclipped;
    end

    always@(posedge CLK, posedge RST)begin 
        if(RST==1) delta <= `DELTA_MIN;
        else delta <= deltaP1;
    end

endmodule