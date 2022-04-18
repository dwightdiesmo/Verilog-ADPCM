`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/11/2021 01:09:25 PM
// Design Name: 
// Module Name: MUX_2
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


module MUX_2 #(parameter WL = 4, WL_sel = 2)(
    input [WL_sel-1:0] SEL,
    input [WL_sel-1:0] select1, select2,
    input [WL-1:0] input1, input2,
    output [WL-1:0] muxOut
    );
    assign muxOut = SEL==select1 ? input1 : SEL==select2 ? input2 : 'bX;
endmodule
