// Created by ihdl
`timescale 1ns/1ps

module CONTROLLER (
  input  wire                     reset,
  //input  wire                     phase_clk,
  input        wire                p_up,
  input        wire                p_down,
  output wire [ 131: 0]            dco_code,
  output       wire                freq_lock,
  output       wire                out_clk,
  output       reg                 polarity
);
//Write Your PLL Controller Here
// tag COMPONENTs and SIGNALs declaration --------------------------------------------------------------------------
  //wire                            out_clk;
  //wire [ 131: 0]                  dco_code;
  wire                            reset_inv;
  reg                             lock;
  reg  [   4: 0]                  step;
  reg  [ 131: 0]                  code;
  reg                             a2b;
  reg                             b2a;
  reg                             phase_clk;
  
// tag OUTs assignment ---------------------------------------------------------------------------------------------
assign freq_lock = lock;
assign dco_code = code;
assign reset_inv = ~reset;


// tag INs assignment ----------------------------------------------------------------------------------------------
// tag COMBINATIONAL LOGIC -----------------------------------------------------------------------------------------
// tag COMBINATIONAL PROCESS ---------------------------------------------------------------------------------------
DCO_model DCO  (
  .reset_      (   reset_inv      ),  //reset_=0, DCO is reset, reset_=1, DCO works
  .EN0         (   dco_code[0]        ),
  .EN1         (   dco_code[1]        ),
  .EN2         (   dco_code[2]        ),
  .EN3         (   dco_code[3]        ),
  .EN4         (   dco_code[4]        ),
  .EN5         (   dco_code[5]        ),
  .EN6         (   dco_code[6]        ),
  .EN7         (   dco_code[7]        ),
  .EN8         (   dco_code[8]        ),
  .EN9         (   dco_code[9]        ),
  .EN10        (   dco_code[10]       ),
  .EN11        (   dco_code[11]       ),
  .EN12        (   dco_code[12]       ),
  .EN13        (   dco_code[13]       ),
  .EN14        (   dco_code[14]       ),
  .EN15        (   dco_code[15]       ),
  .EN16        (   dco_code[16]       ),
  .EN17        (   dco_code[17]       ),
  .EN18        (   dco_code[18]       ),
  .EN19        (   dco_code[19]       ),
  .EN20        (   dco_code[20]       ),
  .EN21        (   dco_code[21]       ),
  .EN22        (   dco_code[22]       ),
  .EN23        (   dco_code[23]       ),
  .EN24        (   dco_code[24]       ),
  .EN25        (   dco_code[25]       ),
  .EN26        (   dco_code[26]       ),
  .EN27        (   dco_code[27]       ),
  .EN28        (   dco_code[28]       ),
  .EN29        (   dco_code[29]       ),
  .EN30        (   dco_code[30]       ),
  .EN31        (   dco_code[31]       ),
  .EN32        (   dco_code[32]       ),
  .EN33        (   dco_code[33]       ),
  .EN34        (   dco_code[34]       ),
  .EN35        (   dco_code[35]       ),
  .EN36        (   dco_code[36]       ),
  .EN37        (   dco_code[37]       ),
  .EN38        (   dco_code[38]       ),
  .EN39        (   dco_code[39]       ),
  .EN40        (   dco_code[40]       ),
  .EN41        (   dco_code[41]       ),
  .EN42        (   dco_code[42]       ),
  .EN43        (   dco_code[43]       ),
  .EN44        (   dco_code[44]       ),
  .EN45        (   dco_code[45]       ),
  .EN46        (   dco_code[46]       ),
  .EN47        (   dco_code[47]       ),
  .EN48        (   dco_code[48]       ),
  .EN49        (   dco_code[49]       ),
  .EN50        (   dco_code[50]       ),
  .EN51        (   dco_code[51]       ),
  .EN52        (   dco_code[52]       ),
  .EN53        (   dco_code[53]       ),
  .EN54        (   dco_code[54]       ),
  .EN55        (   dco_code[55]       ),
  .EN56        (   dco_code[56]       ),
  .EN57        (   dco_code[57]       ),
  .EN58        (   dco_code[58]       ),
  .EN59        (   dco_code[59]       ),
  .EN60        (   dco_code[60]       ),
  .EN61        (   dco_code[61]       ),
  .EN62        (   dco_code[62]       ),
  .EN63        (   dco_code[63]       ),
  .EN64        (   dco_code[64]       ),
  .EN65        (   dco_code[65]       ),
  .EN66        (   dco_code[66]       ),
  .EN67        (   dco_code[67]       ),
  .EN68        (   dco_code[68]       ),
  .EN69        (   dco_code[69]       ),
  .EN70        (   dco_code[70]       ),
  .EN71        (   dco_code[71]       ),
  .EN72        (   dco_code[72]       ),
  .EN73        (   dco_code[73]       ),
  .EN74        (   dco_code[74]       ),
  .EN75        (   dco_code[75]       ),
  .EN76        (   dco_code[76]       ),
  .EN77        (   dco_code[77]       ),
  .EN78        (   dco_code[78]       ),
  .EN79        (   dco_code[79]       ),
  .EN80        (   dco_code[80]       ),
  .EN81        (   dco_code[81]       ),
  .EN82        (   dco_code[82]       ),
  .EN83        (   dco_code[83]       ),
  .EN84        (   dco_code[84]       ),
  .EN85        (   dco_code[85]       ),
  .EN86        (   dco_code[86]       ),
  .EN87        (   dco_code[87]       ),
  .EN88        (   dco_code[88]       ),
  .EN89        (   dco_code[89]       ),
  .EN90        (   dco_code[90]       ),
  .EN91        (   dco_code[91]       ),
  .EN92        (   dco_code[92]       ),
  .EN93        (   dco_code[93]       ),
  .EN94        (   dco_code[94]       ),
  .EN95        (   dco_code[95]       ),
  .EN96        (   dco_code[96]       ),
  .EN97        (   dco_code[97]       ),
  .EN98        (   dco_code[98]       ),
  .EN99        (   dco_code[99]       ),
  .EN100       (   dco_code[100]      ),
  .EN101       (   dco_code[101]      ),
  .EN102       (   dco_code[102]      ),
  .EN103       (   dco_code[103]      ),
  .EN104       (   dco_code[104]      ),
  .EN105       (   dco_code[105]      ),
  .EN106       (   dco_code[106]      ),
  .EN107       (   dco_code[107]      ),
  .EN108       (   dco_code[108]      ),
  .EN109       (   dco_code[109]      ),
  .EN110       (   dco_code[110]      ),
  .EN111       (   dco_code[111]      ),
  .EN112       (   dco_code[112]      ),
  .EN113       (   dco_code[113]      ),
  .EN114       (   dco_code[114]      ),
  .EN115       (   dco_code[115]      ),
  .EN116       (   dco_code[116]      ),
  .EN117       (   dco_code[117]      ),
  .EN118       (   dco_code[118]      ),
  .EN119       (   dco_code[119]      ),
  .EN120       (   dco_code[120]      ),
  .EN121       (   dco_code[121]      ),
  .EN122       (   dco_code[122]      ),
  .EN123       (   dco_code[123]      ),
  .EN124       (   dco_code[124]      ),
  .EN125       (   dco_code[125]      ),
  .EN126       (   dco_code[126]      ),
  .EN127       (   dco_code[127]      ),
  .EN128       (   dco_code[128]      ),
  .EN129       (   dco_code[129]      ),
  .EN130       (   dco_code[130]      ),
  .EN131       (   dco_code[131]      ),
  .dco_out     (   out_clk    )  //DCO output clock
);
// tag SEQUENTIAL LOGIC --------------------------------------------------------------------------------------------

// ***********************/**/**\**\****/**/**\**\****/**/**\**\****/**/**\**\****/**/**\**\****/**/**\**\****/**/**
//                       /**/****\**\**/**/****\**\**/**/****\**\**/**/****\**\**/**/****\**\**/**/****\**\**/**/***
// *********************/**/******\**\/**/******\**\/**/******\**\/**/******\**\/**/******\**\/**/******\**\/**/****

always@(p_up or p_down) phase_clk <= #0.2 (p_up && p_down);

// ***********************/**/**\**\****/**/**\**\****/**/**\**\****/**/**\**\****/**/**\**\****/**/**\**\****/**/**
//                       /**/****\**\**/**/****\**\**/**/****\**\**/**/****\**\**/**/****\**\**/**/****\**\**/**/***
// *********************/**/******\**\/**/******\**\/**/******\**\/**/******\**\/**/******\**\/**/******\**\/**/****
always@ (posedge p_up or negedge p_down) begin
  if (~p_down) begin
    b2a <= 1'b0;
  end else begin
    b2a <= 1'b1;

  end
end
// ***********************/**/**\**\****/**/**\**\****/**/**\**\****/**/**\**\****/**/**\**\****/**/**\**\****/**/**
//                       /**/****\**\**/**/****\**\**/**/****\**\**/**/****\**\**/**/****\**\**/**/****\**\**/**/***
// *********************/**/******\**\/**/******\**\/**/******\**\/**/******\**\/**/******\**\/**/******\**\/**/****
always@ (posedge p_down or negedge p_up) begin
  if (~p_up) begin
    a2b <= 1'b0;
  end else begin
    a2b <= 1'b1;

  end
end
// ***********************/**/**\**\****/**/**\**\****/**/**\**\****/**/**\**\****/**/**\**\****/**/**\**\****/**/**
// phase_clk domain      /**/****\**\**/**/****\**\**/**/****\**\**/**/****\**\**/**/****\**\**/**/****\**\**/**/***
// *********************/**/******\**\/**/******\**\/**/******\**\/**/******\**\/**/******\**\/**/******\**\/**/****
always@(negedge phase_clk or posedge reset) begin
  if (reset) begin
    code <= 132'h000000000000000000000000000000007;
  end else if (!p_up) begin
    if (step == 5'd4) begin
      code = code << step;
      code = code + 4'b1111;
    end else if (step == 5'd2) begin
      code = code << step;
      code = code + 2'b11;
    end else begin
      code = code << step;
      code = code + 1'b1;
    end
    //code <= code << step; // note: make sure the bit-width is ok for this design
  end else if (!p_down) begin
    if (step == 5'd4) begin
      code = code >> step;
    end else if (step == 5'd2) begin
      code = code >> step;
    end else begin
      code = code >> step;
    end
    //code <= code >> step;

  end
end

always@(negedge phase_clk or posedge reset) begin
  if (reset) begin
    polarity <= 1'b0;
  end else begin
    polarity <= (~(a2b == 1'b1 || b2a == 1'b1));   // (a2b == 1'b1 || b2a == 1'b1) ? 1'b0 : 1'b1;

  end
end

always@(negedge phase_clk or posedge reset) begin
  if (reset) begin
    step <= 5'd4;
  end else begin
    step <= (step == 5'd1) ? 1'b1 :
            (polarity    ) ? {1'b0, step[4:1]} : step;

  end
end

always@(negedge phase_clk or posedge reset) begin
  if (reset) begin
    lock <= 1'b0;
  end else begin
    lock <= (step == 5'd1);  // (step == 5'd1) ? 1'b0 : 1'b0;  note: equ !!!

  end
end

endmodule

