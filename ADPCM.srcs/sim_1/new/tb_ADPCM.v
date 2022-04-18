`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/11/2021 06:30:26 PM
// Design Name: 
// Module Name: tb_ADPCM
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
module tb_ADPCM;
    parameter WLI = 1, WLF = 15, WL = WLI + WLF; 
    reg CLK, RST, EN;
    reg signed [WL-1:0] x;
    wire codeWord;
    wire signed [1:0] codeSign;
    
    ADPCM #(.WLI(WLI),.WLF(WLF)) DUT (.CLK(CLK),.RST(RST),.EN(EN),.x(x),.codeWord(codeWord),.codeSign(codeSign));
    
    parameter ClockPeriod = 10;
    initial CLK = 0;
    always #(ClockPeriod/2) CLK = ~CLK;
    
    integer c;
    initial begin
        c = $fopen("codeSignBinaryOutputs.txt");
    end
    integer i;
    reg [15:0] inputValues [220567:0];
    
    initial begin
        RST = 'b1;
        @(posedge CLK) EN ='b1; RST = 'b0;
        $readmemb("gettysbergBinaryInputs.mem", inputValues);
        for(i = 0; i < 220568; i=i+1) begin
            @(posedge CLK) x = inputValues[i]; $fwrite(c,"%b\n",codeSign);
        end           
        $fwrite(c,"%b\n",codeSign);
    #10 $fclose(c); $finish;
    end
endmodule
