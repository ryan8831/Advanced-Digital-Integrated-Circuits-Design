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
//- Exercise: PFD Modeling                              //
//------------------------------------------------------//
module PFD_model(
  input                        ref_clk,
  input                        in,
  output      reg              Flag_U,
  output      reg              Flag_D
  );

  reg         qu;
  reg         qd;
  wire        outbu_tmp;
  wire        outbd_tmp;

  reg         outu;
  reg         outd;
  reg         outbu;
  reg         outbd;
  reg         Reset_D;

//** DFF_ref_clk **//

always@(posedge ref_clk or negedge Reset_D) begin
    if (!Reset_D) begin
      qu <= 0;
    end else if (ref_clk) begin
      qu <= 1'b1;

    end
  end


//** DFF_in **//
always@(posedge in or negedge Reset_D) begin
    if (!Reset_D) begin
      qd <= 0;
    end else if (in) begin
      qd <= 1'b1;

    end
  end


// DPA //

always@(qu or qd) begin
    Reset_D <= #0.1 ~(  qu &   qd );
    outu    <= #0.1 ~(  qu && !qd );
    outd    <= #0.1 ~( !qu &&  qd );
 end

assign #0.06 outbu_tmp = outu ;
assign #0.06 outbd_tmp = outd ;

always@(*) begin
  outbu <= outbu_tmp;
  outbd <= outbd_tmp;
end


// DFF_ou //
always@(posedge ref_clk or negedge outbu) begin
    if (!outbu) begin
      Flag_U <= 0;
    end else if (ref_clk) begin
      Flag_U <= 1'b1;

    end
  end


// DFF_od //
always@(posedge in or negedge outbd) begin
    if (!outbd) begin
      Flag_D <= 0;
    end else if (in) begin
      Flag_D <= 1'b1;

    end
  end

endmodule


