// +FHDR--------------------------------------------------------------------------------------------------------- //
// Project ____________                                                                                           //
// File name __________ ModuleName.v                                                                              //
// Creator ____________ Matthew Yan                                                                               //
// Built Date _________ MMM-DD-YYYY                                                                               //
// Function ___________                                                                                           //
// Hierarchy __________                                                                                           //
//   Parent ___________                                                                                           //
//   Children _________                                                                                           //
// Revision history ___ Date        Author            Description                                                 //
//                  ___                                                                                           //
// -FHDR--------------------------------------------------------------------------------------------------------- //
//+...........+...................+.............................................................................. //
//3...........15..................35............................................................................. //
`timescale 1ns/1ps
//------------------------------------------------------//
//- Advanced Digital IC Design                          //
//-                                                     //
//- Exercise: Design a PLL Modem                        //
//------------------------------------------------------//

module MONITOR(
  input                           OUT_CLK,
  input                           LOCK,
  output      reg                 RESET,
  output      reg                 REF_CLK,
  output      reg  [ 2: 0]        M
);
reg [7:0] number;

always #2 REF_CLK = ~REF_CLK; //10MHz TX_CLK
always@(posedge REF_CLK)begin
	number <= number>>1;
end

initial begin
$dumpfile("PLL.fsdb");
$dumpvars;
number = 8'h7f;
REF_CLK = 1'b0;
RESET=1'b1;
M = 3'd3;
#20 RESET=1'b0;
#8000
//repeat (20) @(negedge TX_CLK) TX_DATA <= $random;
#50 $finish;
end

endmodule


