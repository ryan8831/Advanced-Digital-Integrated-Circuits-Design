//------------------------------------------------------//
//- Advanced Digital IC Design                          //
//-                                                     //
//- Demo2: freq_divider                                 //
//------------------------------------------------------//

`timescale 1ns/1ps
 module frequency_div(
input   [2:0] n,
input   ref_clk,
input   reset,
output  reg   clk_divn,
output  reg   [2:0]clk_count
);
    always @( posedge ref_clk, posedge reset) begin
        if( reset ) begin
            clk_count<= 0;
        end
        else if(clk_count==(0))begin
            clk_count<= n-3'd1;
        end
        else begin
            clk_count<=clk_count-3'd1;
            end 
                         
    end
    always @( posedge ref_clk or posedge reset) begin
        if( reset ) begin
            clk_divn <= 0;
        end
        else if( n==3'd1)begin
            clk_divn <= ref_clk;
        end  
        else if( clk_count==n-3'd1)begin
            clk_divn <= 1'b1;
        end 
        else begin
            clk_divn <= 0;
        end
    end
    always @( negedge ref_clk) begin
        if( reset ) begin
        end
        else if( n==3'd1)begin
            clk_divn <= ref_clk;
        end  
        
    end

endmodule
