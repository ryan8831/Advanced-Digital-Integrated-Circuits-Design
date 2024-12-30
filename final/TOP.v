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
//- Exercise: Design a FSK Modem                        //
//------------------------------------------------------//
`include "MONITOR.v"
`include "PFD.v"
`include "CONTROLLER.v"
`include "DCO.v"
`include "FREQ_DIV.v"

module TOP;

wire [ 2: 0] M;
wire [ 131: 0] DCO_CODE;

PFD_model PFD  (
  .ref_clk (  REF_CLK   ),               //  input   //
  .in      (  OUT_divM  ),               //  input   //
  //.fb      (  OUT_divM  ),               //  input   //

  .Flag_U  (  P_UP      ),               //  output  //
  .Flag_D  (  P_DOWN    )                //  output  //
);


//CONTROLLER controller (
//  .reset              (  RESET     ),    //  input   //
////.phase_clk          (  REF_CLK   ),    //  input   //
//  .p_up               (  P_UP      ),    //  input   //
//  .p_down             (  P_DOWN    ),    //  input   //
//
//  .dco_code           (  DCO_CODE  ),    //  output  //
//  .freq_lock          (  LOCK      ),    //  output  //
//  .polarity           (  POLARITY  )     //  output  //
//);

CONTROLLER  controller (
  .reset               (    RESET      ),
  .p_up                (    P_UP       ),
  .p_down              (    P_DOWN     ),
  .dco_code            (    DCO_CODE   ),
  .out_clk             (    OUT_CLK    ),
  .freq_lock           (    LOCK       ),
  .polarity            (    POLARITY   )
);




//DCO_model DCO (
//  .reset_     (  RESET     ),            // input    //
//  .coarse     (  DCO_CODE  ),            // input    //
//
//  .dco_out    (  OUT_CLK   )             // output   //
//);







FREQ_DIV FREQ_DIV_0 (
  .reset    (  RESET      ),             // input    //
  .ref_clk  (  OUT_CLK    ),             // input    //
  .M        (  M          ),             // input    //

  .out_clk  (  OUT_divM   )              // output   //
);


//Test Module
MONITOR MONITOR (
  .RESET        ( RESET   ),             //  output  //
  .REF_CLK      ( REF_CLK ),             //  output  //
  .M            ( M       ),             //  output  //

  .OUT_CLK      ( OUT_CLK ),             //  input   //
  .LOCK         ( LOCK    )              //  input   //
);



endmodule


