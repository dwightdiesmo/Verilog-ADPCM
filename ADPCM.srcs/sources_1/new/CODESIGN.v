`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/11/2021 03:01:53 PM
// Design Name: 
// Module Name: CODESIGN
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

module CODESIGN #(parameter WL = 16)(
        input signed [WL-1:0] d,
        output reg signed [1:0] codeSign
    );
    always @(*) begin
        codeSign = d[WL-1] == 'b1 ? 'b11 : d[WL-1] == 'b0 ? 'b01 : 'bXX;       
    end
endmodule
