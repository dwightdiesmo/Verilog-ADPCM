`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/11/2021 01:04:07 PM
// Design Name: 
// Module Name: TWOS_COMPLEMENT
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
module TWOS_COMPLEMENT_ONLY #(parameter WL = 4)(
    input signed [WL-1:0] original,
    output reg signed [WL-1:0] converted
    );
    always @(*) begin
        converted = ~original + 1'b1;
    end
endmodule

module TWOS_COMPLEMENT #(parameter WL = 4)(
    input signed [WL-1:0] original,
    output reg signed [WL-1:0] converted
    );
    always @(*) begin
        if(original[WL-1] == 1)
            converted = ~original + 1'b1;
        else
            converted = original;
    end
endmodule
