//------------------------------------------------------//
//- Advanced Digital IC Design                          //
//-                                                     //
//- 5 PFD                                               //
//------------------------------------------------------//
`timescale 1ns/1ps
module PFD(
input ref_clk, 
input fb,
output flagu,
output flagd
);
	reg qu;
  	reg qd;
  	reg outu;
  	reg outd; 
	wire outbu;
	wire outbd;
	reg flagu_g;
  	reg flagd_g;
  	reg dff_reset;
	//DFF_in
	always @(posedge ref_clk or negedge dff_reset)begin
		if (!dff_reset)begin     
     		qu <= 0;
     	end
   	    else if (ref_clk)begin
     		qu <= 1'b1;
     	end
	end
	//DFF_fb
	always @(posedge fb or negedge dff_reset)begin
		if (!dff_reset)begin     
     		qd <= 0;
     	end
   	    else if (fb)begin
     		qd <= 1'b1;
     	end
	end
	//DFF_flagU
	always @(posedge ref_clk or negedge outbu) 
	begin
		if (!outbu)     
     		flagu_g <= 0;
   	else if (ref_clk)
     		flagu_g <= 1'b1;
	end
	//DFF_flagD
	always @(posedge fb or negedge outbd) 
	begin
		if (!outbd)     
     		flagd_g  <= 0;
   	else if (fb)
     		flagd_g  <= 1'b1;
	end     

	always@(*) begin
		dff_reset <= #0.1~(qu & qd);
	end 
	always@(qu or qd) outu <= #0.1 ~(  qu && !qd );
	always@(qu or qd) outd <= #0.1 ~( !qu &&  qd );
	assign #0.059 outbu = outu ;
	assign #0.059 outbd = outd ;
	assign flagu=flagu_g;
	assign flagd=flagd_g;
endmodule
