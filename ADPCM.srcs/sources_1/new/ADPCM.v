`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/11/2021 12:46:13 PM
// Design Name: 
// Module Name: ADPCM
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


module ADPCM #(parameter WLI = 1, WLF = 15, WL = WLI + WLF, W_sel = 2)(
        input CLK, RST, EN,
        input signed [WL-1:0] x,
        output codeWord,
        output signed [1:0] codeSign
    );
    wire signed [WL-1:0] xr, xr_c, addOut;
    wire signed [WL-1:0] d;
    wire signed [WL-1:0] dq,dq_c,muxOut;
    
    ADDER_FIXED_POINT #(.WI1(WLI),.WF1(WLF),.WI2(WLI),.WF2(WLF),.WIO(WLI),.WFO(WLF)) SUB (.in1(x),.in2(xr_c),.out(d));  
    BIT_QUANTIZER #(.WLI(WLI),.WLF(WLF)) QUANTIZER (.CLK(CLK),.RST(RST),.d(d),.codeWord(codeWord),.codeSign(codeSign),.dq(dq));
    TWOS_COMPLEMENT_ONLY #(.WL(WL)) DQ_TC (.original(dq),.converted(dq_c));
    MUX_2 #(.WL(WL),.WL_sel(W_sel)) MUX (.SEL(codeSign),.select1('b11),.select2('b01),.input1(dq_c),.input2(dq),.muxOut(muxOut));
    ADDER_FIXED_POINT # (.WI1(WLI),.WF1(WLF),.WI2(WLI),.WF2(WLF),.WIO(WLI),.WFO(WLF)) ADDER (.in1(muxOut),.in2(xr),.out(addOut));    
    DFF #(.WI(WLI),.WF(WLF)) DFF (.CLK(CLK),.RST(RST),.EN(EN),.D(addOut),.Q(xr));
    TWOS_COMPLEMENT_ONLY #(.WL(WL)) XR_TC (.original(xr),.converted(xr_c));
endmodule
