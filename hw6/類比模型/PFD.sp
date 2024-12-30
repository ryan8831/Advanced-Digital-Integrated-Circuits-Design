
***********************************
*** Process: Typical ***
.lib "ultrasim_model.122" L18U18V_TT
*.lib "ultrasim_model.122" L18U18V_FF
*.lib "ultrasim_model.122" L18U18V_SS

*** Voltage: 1.8V ***
.PARAM supply=1.8v
*** Temperature: 25C ***
.TEMP 25

***********************************
* Transition Analysis             *
***********************************
.TRAN 1ps 400ns 
***********************************
* UltraSIM Simulation Options     *
***********************************
*ultrasim: .usim_opt  sim_mode=ms
*ultrasim: .usim_opt  postl=2 analog=0 speed=5

***********************************
* UltraSIM Output Options         *
***********************************
*ultrasim: .usim_opt  wf_format=fsdb 
*ultrasim: .usim_opt  wf_tres=1p
*ultrasim: .usim_opt  vh=0.9
*ultrasim: .usim_opt  vl=0.9

*ultrasim: .lprobe v(ref_clk ) v(fb)  V(Q1) V(Q2) V(CLEAR) V(OUTU) V(OUTD) V(OUTBU) V(OUTBD)  V(flagu) V(flagd)  preserve=port


***********************************
* Output Analog Signals           *
***********************************
*.probe tran v(IN) v(FB)

***********************************
* Measurement Commands            *
***********************************
*** Average && Peak Power ***
.MEAS tran avg_power avg par('v(VDD)*i(VDD)')
.MEAS tran max_power min par('v(VDD)*i(VDD)')
***********************************
* Define Global Nets              *
***********************************
.GLOBAL VDD VSS
.INCLUDE "ultrasim_cells.sp"
***********************************
* Voltage Sources                 *
***********************************
vdd     VDD   0  DC supply
vss     VSS   0  DC 0
vin     ref_clk   0  PULSE(0 supply 0      0.1n 0.1n 49.9n 100n)
vfb     fb        0  PULSE(0 supply 0.033n 0.1n 0.1n 49.9n 100n) 
.subckt PFD ref_clk  fb flagu flagd  
xDflipflopQU 	   ref_clk    VDD 	    CLEAR QN1 	Q1     DFFRX4
xDflipflopQD       fb         VDD 		CLEAR QN2   Q2     DFFRX4
xAND               NANDOUT    VDD       CLEAR              AND2X1 
xNAND1             Q1         Q2        NANDOUT            NAND2X1
XINV1              Q1 	      Q1        NANDIN3            NAND2X1
XINV2              Q2         Q2        NANDIN2            NAND2X1
xNAND2             Q1         NANDIN2   OUTU               NAND2X1 
xNAND3             Q2         NANDIN3   OUTD               NAND2X1
xAMP11			   OUTU       AMP1_IN1                     BUFX1
xAMP12      	   OUTU       AMP1_IN1  AMP1_IN2           AND2X1
xAMP13      	   AMP1_IN2   AMP1_IN1  AMP1_IN3           AND2X1
xAMP14      	   AMP1_IN3   AMP1_IN2  AMP1_IN4           AND2X1
xAMP15      	   AMP1_IN4   AMP1_IN3  AMP1_IN5           AND2X1
xAMP16      	   AMP1_IN5   AMP1_IN4  AMP1_IN6           AND2X1
xAMP17      	   AMP1_IN6   AMP1_IN5  OUTBU              AND2X1
xAMP21			   OUTD       AMP2_IN1                     BUFX1
xAMP22      	   OUTD       AMP2_IN1  AMP2_IN2           AND2X1
xAMP23      	   AMP2_IN2   AMP2_IN1  AMP2_IN3           AND2X1
xAMP24      	   AMP2_IN3   AMP2_IN2  AMP2_IN4           AND2X1
xAMP25      	   AMP2_IN4   AMP2_IN3  AMP2_IN5           AND2X1
xAMP26      	   AMP2_IN5   AMP2_IN4  AMP2_IN6           AND2X1
xAMP27      	   AMP2_IN6   AMP2_IN5  OUTBD              AND2X1
xDflipflopflagu    ref_clk    VDD       OUTBU QN3   flagu  DFFRX4
xDflipflopflagd    fb         VDD       OUTBD QN4   flagd  DFFRX4
.ends 
.END