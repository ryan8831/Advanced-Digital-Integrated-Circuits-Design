//------------------------------------------------------//
//- Advanced Digital IC Design                          //
//-                                                     //
//- Exercise: PLL Controller                            //
//------------------------------------------------------//

`timescale 1ns/1ps
module CONTROLLER(
input   reset,
input   p_up,
input   p_down,
output reg [131:0] dco_code,
output reg      freq_lock,
output reg      polarity
);
reg [5:0]  step;
reg        state;
reg [7:0]  dco_code_temp;
reg        phase_clk;
//intial
always@(p_up or p_down) phase_clk <= #0.2 (p_up && p_down);
always @( posedge phase_clk or posedge reset ) begin
        if( reset ) begin
            dco_code_temp<=8'd66;
            freq_lock<=1'b0;
            state<=1'b0;
        end
end
//state=0 > ++ state=1 > --     
always @( negedge phase_clk or posedge reset ) begin
        if(dco_code_temp==8'd129) begin
            dco_code_temp<=dco_code_temp;
        end 
        else if(!p_up & p_down) begin
            state<=1'b0;
            dco_code_temp<=dco_code_temp+step;
        end 
        else if(p_up & !p_down) begin 
            state<=1'b1;
            dco_code_temp<=dco_code_temp-step;
        end
        if (step==6'd1) begin
            freq_lock<=1'b1;
        end
        polarity<=1'b0;
    end
always @(posedge state or negedge state) begin
        polarity<=1'b1;
    end
always @(negedge polarity or posedge reset ) begin
        if( reset ) begin
            step<=6'd4;
            polarity<=1'b0;
        end
        else if (step>6'd1) begin
            step<=step>>1;
        end
        
    end
always@(*) begin
  case(dco_code_temp)                               
   8'd0   :dco_code<=   132'h000000000010000000000100000000001;                                                
   8'd1   :dco_code<=   132'h000000000010000000000100000000003;                                                 
   8'd2   :dco_code<=   132'h000000000010000000000300000000003;                                                 
   8'd3   :dco_code<=   132'h000000000030000000000300000000003;                                                 
   8'd4   :dco_code<=   132'h000000000030000000000300000000007;                                                 
   8'd5   :dco_code<=   132'h000000000030000000000700000000007;                                                 
   8'd6   :dco_code<=   132'h000000000070000000000700000000007;                  
   8'd7   :dco_code<=   132'h00000000007000000000070000000000f;                  
   8'd8   :dco_code<=   132'h000000000070000000000f0000000000f;                  
   8'd9   :dco_code<=   132'h0000000000f0000000000f0000000000f;                  
   8'd10  :dco_code<=   132'h0000000000f0000000000f0000000001f;                  
   8'd11  :dco_code<=   132'h0000000000f0000000001f0000000001f;                  
   8'd12  :dco_code<=   132'h0000000001f0000000001f0000000001f;                  
   8'd13  :dco_code<=   132'h0000000001f0000000001f0000000003f;                  
   8'd14  :dco_code<=   132'h0000000001f0000000003f0000000003f;                  
   8'd15  :dco_code<=   132'h0000000003f0000000003f0000000003f;                  
   8'd16  :dco_code<=   132'h0000000003f0000000003f0000000007f;                  
   8'd17  :dco_code<=   132'h0000000003f0000000007f0000000007f;                  
   8'd18  :dco_code<=   132'h0000000007f0000000007f0000000007f;                  
   8'd19  :dco_code<=   132'h0000000007f0000000007f000000000ff;                  
   8'd20  :dco_code<=   132'h0000000007f000000000ff000000000ff;                  
   8'd21  :dco_code<=   132'h000000000ff000000000ff000000000ff;                  
   8'd22  :dco_code<=   132'h000000000ff000000000ff000000001ff;                  
   8'd23  :dco_code<=   132'h000000000ff000000001ff000000001ff;                  
   8'd24  :dco_code<=   132'h000000001ff000000001ff000000001ff;                  
   8'd25  :dco_code<=   132'h000000001ff000000001ff000000003ff;                  
   8'd26  :dco_code<=   132'h000000001ff000000003ff000000003ff;                  
   8'd27  :dco_code<=   132'h000000003ff000000003ff000000003ff;                  
   8'd28  :dco_code<=   132'h000000003ff000000003ff000000007ff;                  
   8'd29  :dco_code<=   132'h000000003ff000000007ff000000007ff;                  
   8'd30  :dco_code<=   132'h000000007ff000000007ff000000007ff;                  
   8'd31  :dco_code<=   132'h000000007ff000000007ff00000000fff;                  
   8'd32  :dco_code<=   132'h000000007ff00000000fff00000000fff;                  
   8'd33  :dco_code<=   132'h00000000fff00000000fff00000000fff;                  
   8'd34  :dco_code<=   132'h00000000fff00000000fff00000001fff;                  
   8'd35  :dco_code<=   132'h00000000fff00000001fff00000001fff;                  
   8'd36  :dco_code<=   132'h00000001fff00000001fff00000001fff;                  
   8'd37  :dco_code<=   132'h00000001fff00000001fff00000003fff;                  
   8'd38  :dco_code<=   132'h00000001fff00000003fff00000003fff;                  
   8'd39  :dco_code<=   132'h00000003fff00000003fff00000003fff;                  
   8'd40  :dco_code<=   132'h00000003fff00000003fff00000007fff;                  
   8'd41  :dco_code<=   132'h00000003fff00000007fff00000007fff;                  
   8'd42  :dco_code<=   132'h00000007fff00000007fff00000007fff;                  
   8'd43  :dco_code<=   132'h00000007fff00000007fff0000000ffff;                  
   8'd44  :dco_code<=   132'h00000007fff0000000ffff0000000ffff;                  
   8'd45  :dco_code<=   132'h0000000ffff0000000ffff0000000ffff;                  
   8'd46  :dco_code<=   132'h0000000ffff0000000ffff0000001ffff;                  
   8'd47  :dco_code<=   132'h0000000ffff0000001ffff0000001ffff;                  
   8'd48  :dco_code<=   132'h0000001ffff0000001ffff0000001ffff;                  
   8'd49  :dco_code<=   132'h0000001ffff0000001ffff0000003ffff;                  
   8'd50  :dco_code<=   132'h0000001ffff0000003ffff0000003ffff;                  
   8'd51  :dco_code<=   132'h0000003ffff0000003ffff0000003ffff;                  
   8'd52  :dco_code<=   132'h0000003ffff0000003ffff0000007ffff;                  
   8'd53  :dco_code<=   132'h0000003ffff0000007ffff0000007ffff;                  
   8'd54  :dco_code<=   132'h0000007ffff0000007ffff0000007ffff;                  
   8'd55  :dco_code<=   132'h0000007ffff0000007ffff000000fffff;                  
   8'd56  :dco_code<=   132'h0000007ffff000000fffff000000fffff;                  
   8'd57  :dco_code<=   132'h000000fffff000000fffff000000fffff;                  
   8'd58  :dco_code<=   132'h000000fffff000000fffff000001fffff;                  
   8'd59  :dco_code<=   132'h000000fffff000001fffff000001fffff;                  
   8'd60  :dco_code<=   132'h000001fffff000001fffff000001fffff;                  
   8'd61  :dco_code<=   132'h000001fffff000001fffff000003fffff;                  
   8'd62  :dco_code<=   132'h000001fffff000003fffff000003fffff;                  
   8'd63  :dco_code<=   132'h000003fffff000003fffff000003fffff;                  
   8'd64  :dco_code<=   132'h000003fffff000003fffff000007fffff;                  
   8'd65  :dco_code<=   132'h000003fffff000007fffff000007fffff;                  
   8'd66  :dco_code<=   132'h000007fffff000007fffff000007fffff;                  
   8'd67  :dco_code<=   132'h000007fffff000007fffff00000ffffff;                  
   8'd68  :dco_code<=   132'h000007fffff00000ffffff00000ffffff;                  
   8'd69  :dco_code<=   132'h00000ffffff00000ffffff00000ffffff;                  
   8'd70  :dco_code<=   132'h00000ffffff00000ffffff00001ffffff;                  
   8'd71  :dco_code<=   132'h00000ffffff00001ffffff00001ffffff;                  
   8'd72  :dco_code<=   132'h00001ffffff00001ffffff00001ffffff;                  
   8'd73  :dco_code<=   132'h00001ffffff00001ffffff00003ffffff;                  
   8'd74  :dco_code<=   132'h00001ffffff00003ffffff00003ffffff;                  
   8'd75  :dco_code<=   132'h00003ffffff00003ffffff00003ffffff;                  
   8'd76  :dco_code<=   132'h00003ffffff00003ffffff00007ffffff;                  
   8'd77  :dco_code<=   132'h00003ffffff00007ffffff00007ffffff;                  
   8'd78  :dco_code<=   132'h00007ffffff00007ffffff00007ffffff;                  
   8'd79  :dco_code<=   132'h00007ffffff00007ffffff0000fffffff;                  
   8'd80  :dco_code<=   132'h00007ffffff0000fffffff0000fffffff;                  
   8'd81  :dco_code<=   132'h0000fffffff0000fffffff0000fffffff;                  
   8'd82  :dco_code<=   132'h0000fffffff0000fffffff0001fffffff;                  
   8'd83  :dco_code<=   132'h0000fffffff0001fffffff0001fffffff;                  
   8'd84  :dco_code<=   132'h0001fffffff0001fffffff0001fffffff;                  
   8'd85  :dco_code<=   132'h0001fffffff0001fffffff0003fffffff;                  
   8'd86  :dco_code<=   132'h0001fffffff0003fffffff0003fffffff;                  
   8'd87  :dco_code<=   132'h0003fffffff0003fffffff0003fffffff;                  
   8'd88  :dco_code<=   132'h0003fffffff0003fffffff0007fffffff;                  
   8'd89  :dco_code<=   132'h0003fffffff0007fffffff0007fffffff;                  
   8'd90  :dco_code<=   132'h0007fffffff0007fffffff0007fffffff;                  
   8'd91  :dco_code<=   132'h0007fffffff0007fffffff000ffffffff;                  
   8'd92  :dco_code<=   132'h0007fffffff000ffffffff000ffffffff;                  
   8'd93  :dco_code<=   132'h000ffffffff000ffffffff000ffffffff;                  
   8'd94  :dco_code<=   132'h000ffffffff000ffffffff001ffffffff;                  
   8'd95  :dco_code<=   132'h000ffffffff001ffffffff001ffffffff;                  
   8'd96  :dco_code<=   132'h001ffffffff001ffffffff001ffffffff;                  
   8'd97  :dco_code<=   132'h001ffffffff001ffffffff003ffffffff;                  
   8'd98  :dco_code<=   132'h001ffffffff003ffffffff003ffffffff;                  
   8'd99  :dco_code<=   132'h003ffffffff003ffffffff003ffffffff;                  
   8'd100 :dco_code<=   132'h003ffffffff003ffffffff007ffffffff;                  
   8'd101 :dco_code<=   132'h003ffffffff007ffffffff007ffffffff;                  
   8'd102 :dco_code<=   132'h007ffffffff007ffffffff007ffffffff;                  
   8'd103 :dco_code<=   132'h007ffffffff007ffffffff00fffffffff;                  
   8'd104 :dco_code<=   132'h007ffffffff00fffffffff00fffffffff;                  
   8'd105 :dco_code<=   132'h00fffffffff00fffffffff00fffffffff;                  
   8'd106 :dco_code<=   132'h00fffffffff00fffffffff01fffffffff;                  
   8'd107 :dco_code<=   132'h00fffffffff01fffffffff01fffffffff;                  
   8'd108 :dco_code<=   132'h01fffffffff01fffffffff01fffffffff;                  
   8'd109 :dco_code<=   132'h01fffffffff01fffffffff03fffffffff;                  
   8'd110 :dco_code<=   132'h01fffffffff03fffffffff03fffffffff;                  
   8'd111 :dco_code<=   132'h03fffffffff03fffffffff03fffffffff;                  
   8'd112 :dco_code<=   132'h03fffffffff03fffffffff07fffffffff;                  
   8'd113 :dco_code<=   132'h03fffffffff07fffffffff07fffffffff;                  
   8'd114 :dco_code<=   132'h07fffffffff07fffffffff07fffffffff;                  
   8'd115 :dco_code<=   132'h07fffffffff07fffffffff0ffffffffff;                  
   8'd116 :dco_code<=   132'h07fffffffff0ffffffffff0ffffffffff;                  
   8'd117 :dco_code<=   132'h0ffffffffff0ffffffffff0ffffffffff;                  
   8'd118 :dco_code<=   132'h0ffffffffff0ffffffffff1ffffffffff;                  
   8'd119 :dco_code<=   132'h0ffffffffff1ffffffffff1ffffffffff;                  
   8'd120 :dco_code<=   132'h1ffffffffff1ffffffffff1ffffffffff;                  
   8'd121 :dco_code<=   132'h1ffffffffff1ffffffffff3ffffffffff;                  
   8'd122 :dco_code<=   132'h1ffffffffff3ffffffffff3ffffffffff;                  
   8'd123 :dco_code<=   132'h3ffffffffff3ffffffffff3ffffffffff;                    
   8'd124 :dco_code<=   132'h3ffffffffff3ffffffffff7ffffffffff;                  
   8'd125 :dco_code<=   132'h3ffffffffff7ffffffffff7ffffffffff;                    
   8'd126 :dco_code<=   132'h7ffffffffff7ffffffffff7ffffffffff;                  
   8'd127 :dco_code<=   132'h7ffffffffff7fffffffffffffffffffff;  
   8'd128 :dco_code<=   132'h7ffffffffffffffffffffffffffffffff;      
   8'd129 :dco_code<=   132'hfffffffffffffffffffffffffffffffff;
   endcase
 end



endmodule