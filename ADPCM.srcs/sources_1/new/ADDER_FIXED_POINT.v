`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2021 12:17:55 PM
// Design Name: 
// Module Name: FixedAdder
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
`define maxWI (WI1>WI2 ? (WI1): (WI2))
`define maxWF (WF1>WF2 ? (WF1): (WF2))

module ADDER_FIXED_POINT 
    #(parameter WI1 = 4, WF1 = 4,
    WI2 = 4, WF2 = 4,
    WIO = 4, WFO = 4,
    W1 = WI1+WF1,
    W2 = WI2+WF2,
    WO=WIO+WFO)
    (input RST,
    input signed [W1-1:0] in1,
    input signed [W2-1:0] in2,
    output reg signed [WO-1:0] out,
    output reg OVF
);
    reg signed [`maxWI+`maxWF+1:0] tempOut;
    reg signed [`maxWI-1:0] in1I;
    reg signed [`maxWF-1:0] in1F;
    reg signed [`maxWI+`maxWF-1:0] in1A;
    
    reg signed [`maxWI-1:0] in2I;
    reg signed [`maxWF-1:0] in2F;
    reg signed [`maxWI+`maxWF-1:0] in2A;
    
    reg signed [`maxWI+`maxWF:0] sumA;
//    reg signed [`maxWI:0] sumI;
//    reg signed [`maxWF:0] sumF;

    reg signed [`maxWI:0] sumAI;
    reg signed [`maxWF-1:0] sumAF;

    reg signed [`maxWI-WIO:0] tmp;
    reg signed [WIO-1:0] tempI;
    reg signed [WFO-1:0] tempF;

    always@(*) begin
        in1I = WI1==WI2 ? in1[W1-1:WF1] : WI1 > WI2 ? in1[W1-1:WF1] : WI1 < WI2  ? {{(WI2-WI1){in1[W1-1]}},in1[W1-1:WF1]} : in1[W1-1:WF1];
        in2I = WI1==WI2 ? in2[W2-1:WF2] : WI1 > WI2 ? {{(WI1-WI2){in2[W2-1]}},in2[W2-1:WF2]} : WI1 < WI2  ? in2[W2-1:WF2] : in2[W2-1:WF2];
        in1F = WF1==WF2 ? in1[WF1-1:0] : WF1 > WF2 ? in1[WF1-1:0] : WF1 <WF2 ? {in1[WF1-1:0],{(WF2-WF1){1'b0}}}  : in1[WF1-1:0];
        in2F = WF1==WF2 ? in2[WF2-1:0] : WF1 > WF2 ? {in2[WF2-1:0], {(WF1-WF2){1'b0}}} : WF1 <WF2 ? in2[WF2-1:0]  : in2[WF2-1:0];
        
        in1A = {in1I,in1F};
        in2A = {in2I,in2F};
        
        sumA = in1A + in2A;
        
        {sumAI,sumAF} = sumA;
        
        tempI = (WIO>`maxWI) ? {{(WIO-`maxWI){sumAI[`maxWI]}},sumAI[`maxWI:0]} : (WIO==`maxWI) ? sumAI[`maxWI:0] : (WIO<`maxWI+1) ? {sumAI[`maxWI], sumAI[WIO-2:0]} : sumAI[`maxWI:0];
        tempF = (WFO>`maxWF) ? {sumAF[`maxWF-1:0],{(WFO-`maxWF){1'b0}}} : (WFO==`maxWF) ? sumAF[`maxWF-1:0] : (WFO<`maxWF) ? sumAF[`maxWF-1:`maxWF-WFO] : sumAF[`maxWF-1:0];
        out = {tempI, tempF};
        // (sign in1& sign in2 &~sign out) | (~sign in1 &  ~sign in2 & sign out)
        OVF = (WIO>`maxWI+1) ? 0 
        : (WIO==`maxWI+1) ? (in1A[`maxWI+`maxWF-1] & in2A[`maxWI+`maxWF-1] & ~out[WO-1]) | (~in1A[`maxWI+`maxWF-1] &  ~in2A[`maxWI+`maxWF-1] & out[WO-1]) 
        : (WIO<`maxWI+1) ? ~((in1I[`maxWI-1] & (&sumAI[`maxWI-1:WIO-1])) | (~in1I[`maxWI-1] & ~(|sumAI[`maxWI-1:WIO-1])))
        : 0;
    end
endmodule