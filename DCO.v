// +FHDR--------------------------------------------------------------------------------------------------------- //
// Project ____________                                                                                           //
// File name __________ CONTOROLLER.v                                                                             //
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
//- Demo2: DCO Modeling                                 //
//------------------------------------------------------//
module DCO_model (
  input       wire                reset_,  //reset_=0, DCO is reset, reset_=1, DCO works
  input       wire                EN0,
  input       wire                EN1,
  input       wire                EN2,
  input       wire                EN3,
  input       wire                EN4,
  input       wire                EN5,
  input       wire                EN6,
  input       wire                EN7,
  input       wire                EN8,
  input       wire                EN9,
  input       wire                EN10,
  input       wire                EN11,
  input       wire                EN12,
  input       wire                EN13,
  input       wire                EN14,
  input       wire                EN15,
  input       wire                EN16,
  input       wire                EN17,
  input       wire                EN18,
  input       wire                EN19,
  input       wire                EN20,
  input       wire                EN21,
  input       wire                EN22,
  input       wire                EN23,
  input       wire                EN24,
  input       wire                EN25,
  input       wire                EN26,
  input       wire                EN27,
  input       wire                EN28,
  input       wire                EN29,
  input       wire                EN30,
  input       wire                EN31,
  input       wire                EN32,
  input       wire                EN33,
  input       wire                EN34,
  input       wire                EN35,
  input       wire                EN36,
  input       wire                EN37,
  input       wire                EN38,
  input       wire                EN39,
  input       wire                EN40,
  input       wire                EN41,
  input       wire                EN42,
  input       wire                EN43,
  input       wire                EN44,
  input       wire                EN45,
  input       wire                EN46,
  input       wire                EN47,
  input       wire                EN48,
  input       wire                EN49,
  input       wire                EN50,
  input       wire                EN51,
  input       wire                EN52,
  input       wire                EN53,
  input       wire                EN54,
  input       wire                EN55,
  input       wire                EN56,
  input       wire                EN57,
  input       wire                EN58,
  input       wire                EN59,
  input       wire                EN60,
  input       wire                EN61,
  input       wire                EN62,
  input       wire                EN63,
  input       wire                EN64,
  input       wire                EN65,
  input       wire                EN66,
  input       wire                EN67,
  input       wire                EN68,
  input       wire                EN69,
  input       wire                EN70,
  input       wire                EN71,
  input       wire                EN72,
  input       wire                EN73,
  input       wire                EN74,
  input       wire                EN75,
  input       wire                EN76,
  input       wire                EN77,
  input       wire                EN78,
  input       wire                EN79,
  input       wire                EN80,
  input       wire                EN81,
  input       wire                EN82,
  input       wire                EN83,
  input       wire                EN84,
  input       wire                EN85,
  input       wire                EN86,
  input       wire                EN87,
  input       wire                EN88,
  input       wire                EN89,
  input       wire                EN90,
  input       wire                EN91,
  input       wire                EN92,
  input       wire                EN93,
  input       wire                EN94,
  input       wire                EN95,
  input       wire                EN96,
  input       wire                EN97,
  input       wire                EN98,
  input       wire                EN99,
  input       wire                EN100,
  input       wire                EN101,
  input       wire                EN102,
  input       wire                EN103,
  input       wire                EN104,
  input       wire                EN105,
  input       wire                EN106,
  input       wire                EN107,
  input       wire                EN108,
  input       wire                EN109,
  input       wire                EN110,
  input       wire                EN111,
  input       wire                EN112,
  input       wire                EN113,
  input       wire                EN114,
  input       wire                EN115,
  input       wire                EN116,
  input       wire                EN117,
  input       wire                EN118,
  input       wire                EN119,
  input       wire                EN120,
  input       wire                EN121,
  input       wire                EN122,
  input       wire                EN123,
  input       wire                EN124,
  input       wire                EN125,
  input       wire                EN126,
  input       wire                EN127,
  input       wire                EN128,
  input       wire                EN129,
  input       wire                EN130,
  input       wire                EN131,
  output      reg                 dco_out  //DCO output clock
);


  wire       [ 131: 0]        coarse;     //DCO control code
  real                        period;
  wire                        reset_inv ;


  initial period  = 7.6158718;
  initial dco_out = 1'b0;

  assign reset_inv = ~reset_;


assign coarse = {   EN131,
                    EN130,
                    EN129,
                    EN128,
                    EN127,
                    EN126,
                    EN125,
                    EN124,
                    EN123,
                    EN122,
                    EN121,
                    EN120,
                    EN119,
                    EN118,
                    EN117,
                    EN116,
                    EN115,
                    EN114,
                    EN113,
                    EN112,
                    EN111,
                    EN110,
                    EN109,
                    EN108,
                    EN107,
                    EN106,
                    EN105,
                    EN104,
                    EN103,
                    EN102,
                    EN101,
                    EN100,
                    EN99,
                    EN98,
                    EN97,
                    EN96,
                    EN95,
                    EN94,
                    EN93,
                    EN92,
                    EN91,
                    EN90,
                    EN89,
                    EN88,
                    EN87,
                    EN86,
                    EN85,
                    EN84,
                    EN83,
                    EN82,
                    EN81,
                    EN80,
                    EN79,
                    EN78,
                    EN77,
                    EN76,
                    EN75,
                    EN74,
                    EN73,
                    EN72,
                    EN71,
                    EN70,
                    EN69,
                    EN68,
                    EN67,
                    EN66,
                    EN65,
                    EN64,
                    EN63,
                    EN62,
                    EN61,
                    EN60,
                    EN59,
                    EN58,
                    EN57,
                    EN56,
                    EN55,
                    EN54,
                    EN53,
                    EN52,
                    EN51,
                    EN50,
                    EN49,
                    EN48,
                    EN47,
                    EN46,
                    EN45,
                    EN44,
                    EN43,
                    EN42,
                    EN41,
                    EN40,
                    EN39,
                    EN38,
                    EN37,
                    EN36,
                    EN35,
                    EN34,
                    EN33,
                    EN32,
                    EN31,
                    EN30,
                    EN29,
                    EN28,
                    EN27,
                    EN26,
                    EN25,
                    EN24,
                    EN23,
                    EN22,
                    EN21,
                    EN20,
                    EN19,
                    EN18,
                    EN17,
                    EN16,
                    EN15,
                    EN14,
                    EN13,
                    EN12,
                    EN11,
                    EN10,
                    EN9,
                    EN8,
                    EN7,
                    EN6,
                    EN5,
                    EN4,
                    EN3,
                    EN2,
                    EN1,
                    EN0
                    };





//Modeling code vs. DCO output period
always@(*)
  begin
       //                        0000000000.0000000000.0000000000.
       period = ( coarse == 132'h000000000000000000000000000000007  ) ? 7.6158718 :
                ( coarse == 132'h00000000000000000000000000000000f  ) ? 5.8718860 :
                ( coarse == 132'h00000000000000000000000000000001f  ) ? 5.3384787 :
                ( coarse == 132'h00000000000000000000000000000003f  ) ? 5.2568741 :
                ( coarse == 132'h00000000000000000000000000000007f  ) ? 4.7582807 :
                ( coarse == 132'h0000000000000000000000000000000ff  ) ? 4.2865172 :
                ( coarse == 132'h0000000000000000000000000000001ff  ) ? 4.0608139 :
                ( coarse == 132'h0000000000000000000000000000003ff  ) ? 3.7891256 :
                ( coarse == 132'h0000000000000000000000000000007ff  ) ? 3.5357504 :
                ( coarse == 132'h000000000000000000000000000000fff  ) ? 3.4242651 :
                ( coarse == 132'h000000000000000000000000000001fff  ) ? 3.2626527 :
                ( coarse == 132'h000000000000000000000000000003fff  ) ? 3.1209720 :
                ( coarse == 132'h000000000000000000000000000007fff  ) ? 3.0367975 :
                ( coarse == 132'h00000000000000000000000000000ffff  ) ? 2.9205804 :
                ( coarse == 132'h00000000000000000000000000001ffff  ) ? 2.8135628 :
                ( coarse == 132'h00000000000000000000000000003ffff  ) ? 2.7600623 :
                ( coarse == 132'h00000000000000000000000000007ffff  ) ? 2.6755252 :
                ( coarse == 132'h0000000000000000000000000000fffff  ) ? 2.6017374 :
                ( coarse == 132'h0000000000000000000000000001fffff  ) ? 2.5583461 :
                ( coarse == 132'h0000000000000000000000000003fffff  ) ? 2.4935552 :
                ( coarse == 132'h0000000000000000000000000007fffff  ) ? 2.4144476 :
                ( coarse == 132'h000000000000000000000000000ffffff  ) ? 2.3900139 :
                ( coarse == 132'h000000000000000000000000001ffffff  ) ? 2.3316904 :
                ( coarse == 132'h000000000000000000000000003ffffff  ) ? 2.2768877 :
                ( coarse == 132'h000000000000000000000000007ffffff  ) ? 2.2582720 :
                ( coarse == 132'h00000000000000000000000000fffffff  ) ? 2.2052839 :
                ( coarse == 132'h00000000000000000000000001fffffff  ) ? 2.1685239 :
                ( coarse == 132'h00000000000000000000000003fffffff  ) ? 2.1416917 :
                ( coarse == 132'h00000000000000000000000007fffffff  ) ? 2.1131541 :
                ( coarse == 132'h0000000000000000000000000ffffffff  ) ? 2.0632103 :
                ( coarse == 132'h0000000000000000000000001ffffffff  ) ? 2.0549044 :
                ( coarse == 132'h0000000000000000000000003ffffffff  ) ? 2.0119394 :
                ( coarse == 132'h0000000000000000000000007ffffffff  ) ? 1.9758621 :
                ( coarse == 132'h000000000000000000000000fffffffff  ) ? 1.9792677 :
                ( coarse == 132'h000000000000000000000001fffffffff  ) ? 1.9497142 :
                ( coarse == 132'h000000000000000000000003fffffffff  ) ? 1.9027588 :
                ( coarse == 132'h000000000000000000000007fffffffff  ) ? 1.9119780 :
                ( coarse == 132'h00000000000000000000000ffffffffff  ) ? 1.8678027 :
                ( coarse == 132'h00000000000000000000001ffffffffff  ) ? 1.8424014 :
                ( coarse == 132'h00000000000000000000003ffffffffff  ) ? 1.8333145 :
                ( coarse == 132'h00000000000000000000007ffffffffff  ) ? 1.8191794 :
                ( coarse == 132'h0000000000000000000000fffffffffff  ) ? 1.7775283 :
                ( coarse == 132'h0000000000000000000001fffffffffff  ) ? 1.7763197 :
                ( coarse == 132'h0000000000000000000003fffffffffff  ) ? 1.7619971 :
                ( coarse == 132'h0000000000000000000007fffffffffff  ) ? 1.7244939 :
                ( coarse == 132'h000000000000000000000ffffffffffff  ) ? 1.7381541 :
                ( coarse == 132'h000000000000000000001ffffffffffff  ) ? 1.6939409 :
                ( coarse == 132'h000000000000000000003ffffffffffff  ) ? 1.6974172 :
                ( coarse == 132'h000000000000000000007ffffffffffff  ) ? 1.6784345 :
                ( coarse == 132'h00000000000000000000fffffffffffff  ) ? 1.6632672 :
                ( coarse == 132'h00000000000000000001fffffffffffff  ) ? 1.6538889 :
                ( coarse == 132'h00000000000000000003fffffffffffff  ) ? 1.6425431 :
                ( coarse == 132'h00000000000000000007fffffffffffff  ) ? 1.6227029 :
                ( coarse == 132'h0000000000000000000ffffffffffffff  ) ? 1.6067504 :
                ( coarse == 132'h0000000000000000001ffffffffffffff  ) ? 1.5998207 :
                ( coarse == 132'h0000000000000000003ffffffffffffff  ) ? 1.5853930 :
                ( coarse == 132'h0000000000000000007ffffffffffffff  ) ? 1.5717702 :
                ( coarse == 132'h000000000000000000fffffffffffffff  ) ? 1.5536485 :
                ( coarse == 132'h000000000000000001fffffffffffffff  ) ? 1.5441171 :
                ( coarse == 132'h000000000000000003fffffffffffffff  ) ? 1.5323024 :
                ( coarse == 132'h000000000000000007fffffffffffffff  ) ? 1.5305812 :
                ( coarse == 132'h00000000000000000ffffffffffffffff  ) ? 1.5143435 :
                ( coarse == 132'h00000000000000001ffffffffffffffff  ) ? 1.5031251 :
                ( coarse == 132'h00000000000000003ffffffffffffffff  ) ? 1.5085020 :
                ( coarse == 132'h00000000000000007ffffffffffffffff  ) ? 1.4849798 :
                ( coarse == 132'h0000000000000000fffffffffffffffff  ) ? 1.4747378 :
                ( coarse == 132'h0000000000000001fffffffffffffffff  ) ? 1.4712027 :
                ( coarse == 132'h0000000000000003fffffffffffffffff  ) ? 1.4607207 :
                ( coarse == 132'h0000000000000007fffffffffffffffff  ) ? 1.4479075 :
                ( coarse == 132'h000000000000000ffffffffffffffffff  ) ? 1.4468758 :
                ( coarse == 132'h000000000000001ffffffffffffffffff  ) ? 1.4264203 :
                ( coarse == 132'h000000000000003ffffffffffffffffff  ) ? 1.4189241 :
                ( coarse == 132'h000000000000007ffffffffffffffffff  ) ? 1.4269888 :
                ( coarse == 132'h00000000000000fffffffffffffffffff  ) ? 1.4117553 :
                ( coarse == 132'h00000000000001fffffffffffffffffff  ) ? 1.4165462 :
                ( coarse == 132'h00000000000003fffffffffffffffffff  ) ? 1.4013651 :
                ( coarse == 132'h00000000000007fffffffffffffffffff  ) ? 1.3918463 :
                ( coarse == 132'h0000000000000ffffffffffffffffffff  ) ? 1.3898270 :
                ( coarse == 132'h0000000000001ffffffffffffffffffff  ) ? 1.3829325 :
                ( coarse == 132'h0000000000003ffffffffffffffffffff  ) ? 1.3644364 :
                ( coarse == 132'h0000000000007ffffffffffffffffffff  ) ? 1.3639958 :
                ( coarse == 132'h000000000000fffffffffffffffffffff  ) ? 1.3583949 :
                ( coarse == 132'h000000000001fffffffffffffffffffff  ) ? 1.3451287 :
                ( coarse == 132'h000000000003fffffffffffffffffffff  ) ? 1.3443339 :
                ( coarse == 132'h000000000007fffffffffffffffffffff  ) ? 1.3405512 :
                ( coarse == 132'h00000000000ffffffffffffffffffffff  ) ? 1.3219377 :
                ( coarse == 132'h00000000001ffffffffffffffffffffff  ) ? 1.3069368 :
                ( coarse == 132'h00000000003ffffffffffffffffffffff  ) ? 1.3127945 :
                ( coarse == 132'h00000000007ffffffffffffffffffffff  ) ? 1.3013221 :
                ( coarse == 132'h0000000000fffffffffffffffffffffff  ) ? 1.2989548 :
                ( coarse == 132'h0000000001fffffffffffffffffffffff  ) ? 1.2975449 :
                ( coarse == 132'h0000000003fffffffffffffffffffffff  ) ? 1.2871746 :
                ( coarse == 132'h0000000007fffffffffffffffffffffff  ) ? 1.2675278 :
                ( coarse == 132'h000000000ffffffffffffffffffffffff  ) ? 1.2767183 :
                ( coarse == 132'h000000001ffffffffffffffffffffffff  ) ? 1.2756600 :
                ( coarse == 132'h000000003ffffffffffffffffffffffff  ) ? 1.2629143 :
                ( coarse == 132'h000000007ffffffffffffffffffffffff  ) ? 1.2568107 :
                ( coarse == 132'h00000000fffffffffffffffffffffffff  ) ? 1.2505983 :
                ( coarse == 132'h00000001fffffffffffffffffffffffff  ) ? 1.2613571 :
                ( coarse == 132'h00000003fffffffffffffffffffffffff  ) ? 1.2492944 :
                ( coarse == 132'h00000007fffffffffffffffffffffffff  ) ? 1.2409068 :
                ( coarse == 132'h0000000ffffffffffffffffffffffffff  ) ? 1.2351637 :
                ( coarse == 132'h0000001ffffffffffffffffffffffffff  ) ? 1.2418025 :
                ( coarse == 132'h0000003ffffffffffffffffffffffffff  ) ? 1.2339339 :
                ( coarse == 132'h0000007ffffffffffffffffffffffffff  ) ? 1.2177251 :
                ( coarse == 132'h000000fffffffffffffffffffffffffff  ) ? 1.2140456 :
                ( coarse == 132'h000001fffffffffffffffffffffffffff  ) ? 1.2213527 :
                ( coarse == 132'h000003fffffffffffffffffffffffffff  ) ? 1.2022874 :
                ( coarse == 132'h000007fffffffffffffffffffffffffff  ) ? 1.2031561 :
                ( coarse == 132'h00000ffffffffffffffffffffffffffff  ) ? 1.2036090 :
                ( coarse == 132'h00001ffffffffffffffffffffffffffff  ) ? 1.2053812 :
                ( coarse == 132'h00003ffffffffffffffffffffffffffff  ) ? 1.2014867 :
                ( coarse == 132'h00007ffffffffffffffffffffffffffff  ) ? 1.2017935 :
                ( coarse == 132'h0000fffffffffffffffffffffffffffff  ) ? 1.1985907 :
                ( coarse == 132'h0001fffffffffffffffffffffffffffff  ) ? 1.1846411 :
                ( coarse == 132'h0003fffffffffffffffffffffffffffff  ) ? 1.1878062 :
                ( coarse == 132'h0007fffffffffffffffffffffffffffff  ) ? 1.1861413 :
                ( coarse == 132'h000ffffffffffffffffffffffffffffff  ) ? 1.1758097 :
                ( coarse == 132'h001ffffffffffffffffffffffffffffff  ) ? 1.1796841 :
                ( coarse == 132'h003ffffffffffffffffffffffffffffff  ) ? 1.1741895 :
                ( coarse == 132'h007ffffffffffffffffffffffffffffff  ) ? 1.1473486 :
                ( coarse == 132'h00fffffffffffffffffffffffffffffff  ) ? 1.1689318 :
                ( coarse == 132'h01fffffffffffffffffffffffffffffff  ) ? 1.1418955 :
                ( coarse == 132'h03fffffffffffffffffffffffffffffff  ) ? 1.1643928 :
                ( coarse == 132'h07fffffffffffffffffffffffffffffff  ) ? 1.1484923 :
                ( coarse == 132'h0ffffffffffffffffffffffffffffffff  ) ? 1.1334526 :
                ( coarse == 132'h1ffffffffffffffffffffffffffffffff  ) ? 1.1399350 :
                ( coarse == 132'h3ffffffffffffffffffffffffffffffff  ) ? 1.1403532 :
                ( coarse == 132'h7ffffffffffffffffffffffffffffffff  ) ? 1.1389811 :
                ( coarse == 132'hfffffffffffffffffffffffffffffffff  ) ? 1.1332535 :
                                                                        7.6158718 ;
  end

always@(posedge reset_) //DCO Work
  begin : dco_run
    forever begin : dco_set
      dco_out = ~dco_out;
      #(period/2.0);
    end
  end

always@(negedge reset_) //DCO STOP
  begin
    dco_out = 0;
    disable dco_run; //turn off DCO when reset_=0;
  end


endmodule


