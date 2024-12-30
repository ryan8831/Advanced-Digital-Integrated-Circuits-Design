*******************************************************
* Advanced Digital IC Design                          *
*                                                     *
* Exercise: Phase/Frequency Detector                  *
*******************************************************

***********************************
* Operation Condition             *
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

*ultrasim: .lprobe v(IN)    v(FB)   v(flagU) v(flagD)    v(QU) v(QD) v(QUN) v(QDN) v(RE)   preserve=port
*ultrasim: .lprobe v(CDN)   v(OUTU) v(OUTD)  v(RESET_B)  preserve=port
*ultrasim: .lprobe v(OUTBU) v(OUTBD)  v(tsig)                  preserve=port

*ultrasim: .lprobe v(N1)  v(N2)  v(N3)  V(N4)  V(N5)  V(N6)    preserve=port
*ultrasim: .lprobe v(N13) v(N14) v(N15) v(N16) v(N17) v(N18)   preserve=port

******************************
*  tset DFF min reset pulse  *
******************************

*ultrasim: .lprobe v(PL2) v(flagt)    preserve=port

**********************************
*  tset DPA BUF min reset pulse  *
**********************************

*ultrasim: .lprobe v(PL_to) v(N30) v(N31) v(N32) V(N33) V(N34) V(N35) v(N36) v(N37) v(N38) V(N39) V(N40) V(N41) v(PL1)  preserve=port


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

***********************************
* Voltage Sources                 *
***********************************
vdd     VDD   0  DC supply
vss     VSS   0  DC 0
vin      IN   0  PULSE(0 supply 0    0.1n 0.1n 49.9n 100n)
vfb      FB   0  PULSE(0 supply 0.2n 0.1n 0.1n 49.9n 100n)
*vpl      PL   0  PULSE(0 supply 0    0.1n 0.1n 14.9n  30n)

***********************************
* TOP Circuit                     *
***********************************
.SUBCKT PFD_model ref_clk  in  Flag_U  Flag_D

XD0    ref_clk    VDD    CDN    Nuse4    QU    DFFRX4
XD1    in         VDD    CDN    Nuse3    QD    DFFRX4

XI1    QU    QUN                        INVX1
XI2    QD    QDN                        INVX1

XA2    RESET_B    RE    CDN             AND2X1
XNA1   QU    QD     RE                  NAND2X1

XNA2   QU    QDN    OUTU                NAND2X1
XNA3   QUN   QD     OUTD                NAND2X1



XB3    OUTD   tsig                      BUFX1


* DPA1 *
XB1   OUTU     N1             BUFX1
XN1   N1       OUTU N2        AND2X1
XN2   N2       N1   N3        AND2X1
XN3   N3       N2   N4        AND2X1
XN4   N4       N3   N5        AND2X1
XN5   N5       N4   N6        AND2X1
XN6   N6       N5   N13       AND2X1
XN13  N13      N6   N14       AND2X1
XN14  N14      N13  N15       AND2X1
XN15  N15      N14  N16       AND2X1
XN16  N16      N15  N17       AND2X1
XN17  N17      N16  N18       AND2X1
XN18  N18      N17  OUTBU     AND2X1


* DPA2 *
XB2    OUTD     N7             BUFX1
XN7    N7       OUTD N8        AND2X1
XN8    N8       N7   N9        AND2X1
XN9    N9       N8   N10       AND2X1
XN10   N10      N9   N11       AND2X1
XN11   N11      N10  N12       AND2X1
XN12   N12      N11  N19       AND2X1
XN19   N19      N12  N20       AND2X1
XN20   N20      N19  N21       AND2X1
XN21   N21      N20  N22       AND2X1
XN22   N22      N21  N23       AND2X1
XN23   N23      N22  N24       AND2X1
XN24   N24      N23  OUTBD     AND2X1



* right DFF *
XD3    ref_clk    VDD    OUTBU    Nuse1    Flag_U    DFFRX4
XD4    in         VDD    OUTBD    Nuse2    Flag_D    DFFRX4

.ENDS PFD_model








.INCLUDE "ultrasim_cells.sp"

.END