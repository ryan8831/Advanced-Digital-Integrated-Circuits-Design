//------------------------------------------------------//
//- Advanced Digital IC Design                          //
//-                                                     //
//- MOINTOR generate reference clock and divisor        //
//------------------------------------------------------//
`timescale 1ns/1ps
module MONITOR(
  output reg reset,
  output reg reset_,
  output reg ref_clk,
  output reg [2:0] m
);

always #2 ref_clk=~ref_clk; //10MHz REF_CLK
initial begin
$dumpfile("ADPLL.fsdb");
$dumpvars;
ref_clk=1'b0;
reset=1'b1;
reset_=1'b0; 
m=3'd3;
#20 reset=1'b0;
reset_=1'b1;
#8000;
#50 $finish;
end
endmodule