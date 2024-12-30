//------------------------------------------------------//
//- Advanced Digital IC Design                          //
//-                                                     //
//4        DCO Modeling                                 //
//------------------------------------------------------//
`timescale 1ns/1ps
module dco_model(
  input                reset_,     //reset_=0, DCO is reset_, reset_=1, DCO works
  input                en_0,
  input                en_1,
  input                en_2,
  input                en_3,
  input                en_4,
  input                en_5,
  input                en_6,
  input                en_7,
  input                en_8,
  input                en_9,
  input                en_10,
  input                en_11,
  input                en_12,
  input                en_13,
  input                en_14,
  input                en_15,
  input                en_16,
  input                en_17,
  input                en_18,
  input                en_19,
  input                en_20,
  input                en_21,
  input                en_22,
  input                en_23,
  input                en_24,
  input                en_25,
  input                en_26,
  input                en_27,
  input                en_28,
  input                en_29,
  input                en_30,
  input                en_31,
  input                en_32,
  input                en_33,
  input                en_34,
  input                en_35,
  input                en_36,
  input                en_37,
  input                en_38,
  input                en_39,
  input                en_40,
  input                en_41,
  input                en_42,
  input                en_43,
  input                en_44,
  input                en_45,
  input                en_46,
  input                en_47,
  input                en_48,
  input                en_49,
  input                en_50,
  input                en_51,
  input                en_52,
  input                en_53,
  input                en_54,
  input                en_55,
  input                en_56,
  input                en_57,
  input                en_58,
  input                en_59,
  input                en_60,
  input                en_61,
  input                en_62,
  input                en_63,
  input                en_64,
  input                en_65,
  input                en_66,
  input                en_67,
  input                en_68,
  input                en_69,
  input                en_70,
  input                en_71,
  input                en_72,
  input                en_73,
  input                en_74,
  input                en_75,
  input                en_76,
  input                en_77,
  input                en_78,
  input                en_79,
  input                en_80,
  input                en_81,
  input                en_82,
  input                en_83,
  input                en_84,
  input                en_85,
  input                en_86,
  input                en_87,
  input                en_88,
  input                en_89,
  input                en_90,
  input                en_91,
  input                en_92,
  input                en_93,
  input                en_94,
  input                en_95,
  input                en_96,
  input                en_97,
  input                en_98,
  input                en_99,
  input                en_100,
  input                en_101,
  input                en_102,
  input                en_103,
  input                en_104,
  input                en_105,
  input                en_106,
  input                en_107,
  input                en_108,
  input                en_109,
  input                en_110,
  input                en_111,
  input                en_112,
  input                en_113,
  input                en_114,
  input                en_115,
  input                en_116,
  input                en_117,
  input                en_118,
  input                en_119,
  input                en_120,
  input                en_121,
  input                en_122,
  input                en_123,
  input                en_124,
  input                en_125,
  input                en_126,
  input                en_127,
  input                en_128,
  input                en_129,
  input                en_130,
  input                en_131,
  output               dco_out
);
  parameter   dco_t0=0.634;    //DCO Min. Delay is 0.634ns
  parameter   dco_step=0.324;  //DCO Resolution is 0.324ns
  reg   out;
  wire  [131:0] coarse;  //DCO control code
  assign dco_out=out;
  assign coarse = {
                    en_131,
                    en_130,
                    en_129,
                    en_128,
                    en_127,
                    en_126,
                    en_125,
                    en_124,
                    en_123,
                    en_122,
                    en_121,
                    en_120,
                    en_119,
                    en_118,
                    en_117,
                    en_116,
                    en_115,
                    en_114,
                    en_113,
                    en_112,
                    en_111,
                    en_110,
                    en_109,
                    en_108,
                    en_107,
                    en_106,
                    en_105,
                    en_104,
                    en_103,
                    en_102,
                    en_101,
                    en_100,
                    en_99,
                    en_98,
                    en_97,
                    en_96,
                    en_95,
                    en_94,
                    en_93,
                    en_92,
                    en_91,
                    en_90,
                    en_89,
                    en_88,
                    en_87,
                    en_86,
                    en_85,
                    en_84,
                    en_83,
                    en_82,
                    en_81,
                    en_80,
                    en_79,
                    en_78,
                    en_77,
                    en_76,
                    en_75,
                    en_74,
                    en_73,
                    en_72,
                    en_71,
                    en_70,
                    en_69,
                    en_68,
                    en_67,
                    en_66,
                    en_65,
                    en_64,
                    en_63,
                    en_62,
                    en_61,
                    en_60,
                    en_59,
                    en_58,
                    en_57,
                    en_56,
                    en_55,
                    en_54,
                    en_53,
                    en_52,
                    en_51,
                    en_50,
                    en_49,
                    en_48,
                    en_47,
                    en_46,
                    en_45,
                    en_44,
                    en_43,
                    en_42,
                    en_41,
                    en_40,
                    en_39,
                    en_38,
                    en_37,
                    en_36,
                    en_35,
                    en_34,
                    en_33,
                    en_32,
                    en_31,
                    en_30,
                    en_29,
                    en_28,
                    en_27,
                    en_26,
                    en_25,
                    en_24,
                    en_23,
                    en_22,
                    en_21,
                    en_20,
                    en_19,
                    en_18,
                    en_17,
                    en_16,
                    en_15,
                    en_14,
                    en_13,
                    en_12,
                    en_11,
                    en_10,
                    en_9,
                    en_8,
                    en_7,
                    en_6,
                    en_5,
                    en_4,
                    en_3,
                    en_2,
                    en_1,
                    en_0

                    };
   real period;
   initial period=dco_t0;
   initial out=1'b0;
//Modeling code vs. DCO output period 
always@(*) begin
  case(coarse)                               
   132'h 000000000010000000000100000000001  :period <=    6.1062534;                                                 
   132'h 000000000010000000000100000000003  :period <=    5.3955090;                                                 
   132'h 000000000010000000000300000000003  :period <=    5.1632237;                                                 
   132'h 000000000030000000000300000000003  :period <=    4.7191275;                                                 
   132'h 000000000030000000000300000000007  :period <=    4.1311519;                                                 
   132'h 000000000030000000000700000000007  :period <=    4.1394842;                                                 
   132'h 000000000070000000000700000000007  :period <=    3.8696257;                  
   132'h 00000000007000000000070000000000f  :period <=    3.5600212;                  
   132'h 000000000070000000000f0000000000f  :period <=    3.4885720;                  
   132'h 0000000000f0000000000f0000000000f  :period <=    3.3246047;                  
   132'h 0000000000f0000000000f0000000001f  :period <=    3.1662476;                  
   132'h 0000000000f0000000001f0000000001f  :period <=    3.0850226;                  
   132'h 0000000001f0000000001f0000000001f  :period <=    2.9676817;                  
   132'h 0000000001f0000000001f0000000003f  :period <=    2.8534993;                  
   132'h 0000000001f0000000003f0000000003f  :period <=    2.8057554;                  
   132'h 0000000003f0000000003f0000000003f  :period <=    2.7209464;                  
   132'h 0000000003f0000000003f0000000007f  :period <=    2.6425137;                  
   132'h 0000000003f0000000007f0000000007f  :period <=    2.5927936;                  
   132'h 0000000007f0000000007f0000000007f  :period <=    2.5255052;                  
   132'h 0000000007f0000000007f000000000ff  :period <=    2.4583799;                  
   132'h 0000000007f000000000ff000000000ff  :period <=    2.4194586;                  
   132'h 000000000ff000000000ff000000000ff  :period <=    2.3666415;                  
   132'h 000000000ff000000000ff000000001ff  :period <=    2.3221867;                  
   132'h 000000000ff000000001ff000000001ff  :period <=    2.2794755;                  
   132'h 000000001ff000000001ff000000001ff  :period <=    2.2391499;                  
   132'h 000000001ff000000001ff000000003ff  :period <=    2.1950463;                  
   132'h 000000001ff000000003ff000000003ff  :period <=    2.1709009;                  
   132'h 000000003ff000000003ff000000003ff  :period <=    2.1335353;                  
   132'h 000000003ff000000003ff000000007ff  :period <=    2.0946951;                  
   132'h 000000003ff000000007ff000000007ff  :period <=    2.0766381;                  
   132'h 000000007ff000000007ff000000007ff  :period <=    2.0373429;                  
   132'h 000000007ff000000007ff00000000fff  :period <=    2.0051329;                  
   132'h 000000007ff00000000fff00000000fff  :period <=    1.9962722;                  
   132'h 00000000fff00000000fff00000000fff  :period <=    1.9618548;                  
   132'h 00000000fff00000000fff00000001fff  :period <=    1.9365499;                  
   132'h 00000000fff00000001fff00000001fff  :period <=    1.9196685;                  
   132'h 00000001fff00000001fff00000001fff  :period <=    1.9070221;                  
   132'h 00000001fff00000001fff00000003fff  :period <=    1.8715107;                  
   132'h 00000001fff00000003fff00000003fff  :period <=    1.8606751;                  
   132'h 00000003fff00000003fff00000003fff  :period <=    1.8315671;                  
   132'h 00000003fff00000003fff00000007fff  :period <=    1.8091702;                  
   132'h 00000003fff00000007fff00000007fff  :period <=    1.8072187;                  
   132'h 00000007fff00000007fff00000007fff  :period <=    1.7734115;                  
   132'h 00000007fff00000007fff0000000ffff  :period <=    1.7608548;                  
   132'h 00000007fff0000000ffff0000000ffff  :period <=    1.7406016;                  
   132'h 0000000ffff0000000ffff0000000ffff  :period <=    1.7232502;                  
   132'h 0000000ffff0000000ffff0000001ffff  :period <=    1.7089192;                  
   132'h 0000000ffff0000001ffff0000001ffff  :period <=    1.7124639;                  
   132'h 0000001ffff0000001ffff0000001ffff  :period <=    1.6790666;                  
   132'h 0000001ffff0000001ffff0000003ffff  :period <=    1.6623660;                  
   132'h 0000001ffff0000003ffff0000003ffff  :period <=    1.6557108;                  
   132'h 0000003ffff0000003ffff0000003ffff  :period <=    1.6332347;                  
   132'h 0000003ffff0000003ffff0000007ffff  :period <=    1.6213697;                  
   132'h 0000003ffff0000007ffff0000007ffff  :period <=    1.6156223;                  
   132'h 0000007ffff0000007ffff0000007ffff  :period <=    1.5969460;                  
   132'h 0000007ffff0000007ffff000000fffff  :period <=    1.5842112;                  
   132'h 0000007ffff000000fffff000000fffff  :period <=    1.5888467;                  
   132'h 000000fffff000000fffff000000fffff  :period <=    1.5745205;                  
   132'h 000000fffff000000fffff000001fffff  :period <=    1.5528041;                  
   132'h 000000fffff000001fffff000001fffff  :period <=    1.5562550;                  
   132'h 000001fffff000001fffff000001fffff  :period <=    1.5246748;                  
   132'h 000001fffff000001fffff000003fffff  :period <=    1.5241206;                  
   132'h 000001fffff000003fffff000003fffff  :period <=    1.5198534;                  
   132'h 000003fffff000003fffff000003fffff  :period <=    1.5007739;                  
   132'h 000003fffff000003fffff000007fffff  :period <=    1.4875124;                  
   132'h 000003fffff000007fffff000007fffff  :period <=    1.4856605;                  
   132'h 000007fffff000007fffff000007fffff  :period <=    1.4807960;                  
   132'h 000007fffff000007fffff00000ffffff  :period <=    1.4623033;                  
   132'h 000007fffff00000ffffff00000ffffff  :period <=    1.4668095;                  
   132'h 00000ffffff00000ffffff00000ffffff  :period <=    1.4443298;                  
   132'h 00000ffffff00000ffffff00001ffffff  :period <=    1.4448009;                  
   132'h 00000ffffff00001ffffff00001ffffff  :period <=    1.4352527;                  
   132'h 00001ffffff00001ffffff00001ffffff  :period <=    1.4243087;                  
   132'h 00001ffffff00001ffffff00003ffffff  :period <=    1.4206214;                  
   132'h 00001ffffff00003ffffff00003ffffff  :period <=    1.4211717;                  
   132'h 00003ffffff00003ffffff00003ffffff  :period <=    1.3968375;                  
   132'h 00003ffffff00003ffffff00007ffffff  :period <=    1.4028558;                  
   132'h 00003ffffff00007ffffff00007ffffff  :period <=    1.3924142;                  
   132'h 00007ffffff00007ffffff00007ffffff  :period <=    1.3821938;                  
   132'h 00007ffffff00007ffffff0000fffffff  :period <=    1.3638046;                  
   132'h 00007ffffff0000fffffff0000fffffff  :period <=    1.3711607;                  
   132'h 0000fffffff0000fffffff0000fffffff  :period <=    1.3591680;                  
   132'h 0000fffffff0000fffffff0001fffffff  :period <=    1.3536322;                  
   132'h 0000fffffff0001fffffff0001fffffff  :period <=    1.3463014;                  
   132'h 0001fffffff0001fffffff0001fffffff  :period <=    1.3401623;                  
   132'h 0001fffffff0001fffffff0003fffffff  :period <=    1.3288221;                  
   132'h 0001fffffff0003fffffff0003fffffff  :period <=    1.3278259;                  
   132'h 0003fffffff0003fffffff0003fffffff  :period <=    1.3205205;                  
   132'h 0003fffffff0003fffffff0007fffffff  :period <=    1.3052290;                  
   132'h 0003fffffff0007fffffff0007fffffff  :period <=    1.3154402;                  
   132'h 0007fffffff0007fffffff0007fffffff  :period <=    1.3035559;                  
   132'h 0007fffffff0007fffffff000ffffffff  :period <=    1.2996977;                  
   132'h 0007fffffff000ffffffff000ffffffff  :period <=    1.2976568;                  
   132'h 000ffffffff000ffffffff000ffffffff  :period <=    1.2909153;                  
   132'h 000ffffffff000ffffffff001ffffffff  :period <=    1.2835411;                  
   132'h 000ffffffff001ffffffff001ffffffff  :period <=    1.2777767;                  
   132'h 001ffffffff001ffffffff001ffffffff  :period <=    1.2741568;                  
   132'h 001ffffffff001ffffffff003ffffffff  :period <=    1.2682275;                  
   132'h 001ffffffff003ffffffff003ffffffff  :period <=    1.2636091;                  
   132'h 003ffffffff003ffffffff003ffffffff  :period <=    1.2642267;                  
   132'h 003ffffffff003ffffffff007ffffffff  :period <=    1.2529379;                  
   132'h 003ffffffff007ffffffff007ffffffff  :period <=    1.2549338;                  
   132'h 007ffffffff007ffffffff007ffffffff  :period <=    1.2449134;                  
   132'h 007ffffffff007ffffffff00fffffffff  :period <=    1.2303163;                  
   132'h 007ffffffff00fffffffff00fffffffff  :period <=    1.2404158;                  
   132'h 00fffffffff00fffffffff00fffffffff  :period <=    1.2324884;                  
   132'h 00fffffffff00fffffffff01fffffffff  :period <=    1.2253863;                  
   132'h 00fffffffff01fffffffff01fffffffff  :period <=    1.2275535;                  
   132'h 01fffffffff01fffffffff01fffffffff  :period <=    1.2176610;                  
   132'h 01fffffffff01fffffffff03fffffffff  :period <=    1.2099702;                  
   132'h 01fffffffff03fffffffff03fffffffff  :period <=    1.2131180;                  
   132'h 03fffffffff03fffffffff03fffffffff  :period <=    1.2052635;                  
   132'h 03fffffffff03fffffffff07fffffffff  :period <=    1.1940744;                  
   132'h 03fffffffff07fffffffff07fffffffff  :period <=    1.1908454;                  
   132'h 07fffffffff07fffffffff07fffffffff  :period <=    1.1940235;                  
   132'h 07fffffffff07fffffffff0ffffffffff  :period <=    1.1924686;                  
   132'h 07fffffffff0ffffffffff0ffffffffff  :period <=    1.1892748;                  
   132'h 0ffffffffff0ffffffffff0ffffffffff  :period <=    1.1842456;                  
   132'h 0ffffffffff0ffffffffff1ffffffffff  :period <=    1.1792967;                  
   132'h 0ffffffffff1ffffffffff1ffffffffff  :period <=    1.1832051;                  
   132'h 1ffffffffff1ffffffffff1ffffffffff  :period <=    1.1744867;                  
   132'h 1ffffffffff1ffffffffff3ffffffffff  :period <=    1.1787545;                  
   132'h 1ffffffffff3ffffffffff3ffffffffff  :period <=    1.1585843;                  
   132'h 3ffffffffff3ffffffffff3ffffffffff  :period <=    1.1590522;                    
   132'h 3ffffffffff3ffffffffff7ffffffffff  :period <=    1.1573797;                  
   132'h 3ffffffffff7ffffffffff7ffffffffff  :period <=    1.1558123;                    
   132'h 7ffffffffff7ffffffffff7ffffffffff  :period <=    1.1469785;                  
   132'h 7ffffffffff7fffffffffffffffffffff  :period <=    1.1525527;  
   132'h 7ffffffffffffffffffffffffffffffff  :period <=    1.1480410;      
   132'h fffffffffffffffffffffffffffffffff  :period <=    1.1425545;

   endcase
 end

always@(posedge reset_) //DCO Work
  begin : dco_run
    forever begin : dco_set
      out = ~out;
      #(period/2.0);
    end
  end
      
always@(negedge reset_) //DCO STOP
  begin
    out = 0;
    disable dco_run; //turn off DCO when reset_=0;
  end

endmodule