`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/11/2021 02:52:55 PM
// Design Name: 
// Module Name: CODEWORD
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
module CODEWORD #(parameter WL = 16)(
        input signed [WL-1:0] d, delta,
        output reg codeWord
    );
    
    wire signed [WL-1:0] d_c;
    TWOS_COMPLEMENT #(.WL(WL)) D_TC (.original(d),.converted(d_c));
    always @(*) begin
        if (d_c >= delta)
            codeWord = 1;
        else 
            codeWord = 0;         
    end
endmodule
