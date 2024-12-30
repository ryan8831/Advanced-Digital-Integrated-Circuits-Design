// +FHDR--------------------------------------------------------------------------------------------------------- //
// Project ____________                                                                                           //
// File name __________ FREQ_DIV.v                                                                                //
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
//- Exercise: Frequency Divider                         //
//------------------------------------------------------//

module FREQ_DIV(
  input  wire                     reset,
  input  wire                     ref_clk,
  input  wire [ 2: 0]             M,
  output wire                     out_clk
);

  reg   [ 2: 0]                   counter;
  reg   [ 2: 0]                   N;
  reg                             flag;


// tag OUTs assignment ---------------------------------------------------------------------------------------------

assign  out_clk = (N == 3'd0)     ? ref_clk :
                  (counter == N ) ? 1'b1 : 1'b0;


// ***********************/**/**\**\****/**/**\**\****/**/**\**\****/**/**\**\****/**/**\**\****/**/**\**\****/**/**
//                       /**/****\**\**/**/****\**\**/**/****\**\**/**/****\**\**/**/****\**\**/**/****\**\**/**/***
// *********************/**/******\**\/**/******\**\/**/******\**\/**/******\**\/**/******\**\/**/******\**\/**/****

always@ (posedge ref_clk or posedge reset) begin
  if (reset) begin
    counter <= 0;
    N <= M-3'd1;
  end else if (counter == 3'd0) begin
    counter <= N ;
  end else begin
    counter <= counter - 3'd1;

  end
end

//always @(negedge clk or posedge reset) begin
//  if (reset) begin
//    flag <= 1'b0;
//  end else if (counter == 3'd0) begin
//    flag <= 1'b1;
//  end else if (flag == 1'b1) begin
//    flag <= 1'b0;
//
//  end
//end

endmodule


