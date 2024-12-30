*******************************************************
* Advanced Digital IC Design                          *
*                                                     *
* Demo: Buffer Chain                                  *
*******************************************************

***********************************
* Operation Condition             *
***********************************
*** Process: Typical ***
.lib "ultrasim_model.122" L18U18V_TT
*.lib "hspice_model.122" L18U18V_FF
*.lib "hspice_model.122" L18U18V_SS

*** Voltage: 1.8V ***
.PARAM supply=1.8v
***********************************
* Operation Condition             *
***********************************
*ultrasim: .usim_opt  vh=0.9
*ultrasim: .usim_opt  vl=0.9


*** Include subcircuit ***
.INCLUDE "ultrasim_cells.sp"



***********************************
* Define Global Nets              *
***********************************
.GLOBAL VDD VSS EN

***********************************
* Voltage Sources                 *
***********************************
vdd     VDD   0  DC supply
vss     VSS   0  DC 0
*en      EN    0  DC supply
*vinput   IN   0  PULSE(0 supply 0 0.1n 0.1n 4.9n 10n)


***********************************
* TOP Circuit                     *
***********************************
.SUBCKT DCO_model reset_
+            EN0   EN1   EN2   EN3   EN4   EN5   EN6   EN7   EN8   EN9  EN10
+            EN11  EN12  EN13  EN14  EN15  EN16  EN17  EN18  EN19  EN20
+            EN21  EN22  EN23  EN24  EN25  EN26  EN27  EN28  EN29  EN30
+            EN31  EN32  EN33  EN34  EN35  EN36  EN37  EN38  EN39  EN40
+            EN41  EN42  EN44  EN45  EN46  EN47  EN48  EN49  EN50  EN43
+            EN51  EN52  EN53  EN54  EN55  EN56  EN57  EN58  EN59  EN60
+            EN61  EN62  EN63  EN64  EN65  EN66  EN67  EN68  EN69  EN70
+            EN71  EN72  EN73  EN74  EN75  EN76  EN77  EN78  EN79  EN80
+            EN81  EN82  EN83  EN84  EN85  EN86  EN87  EN88  EN89  EN90
+            EN91  EN92  EN93  EN94  EN95  EN96  EN97  EN98  EN99  EN100
+            EN101 EN102 EN103 EN104 EN105 EN106 EN107 EN108 EN109 EN110
+            EN111 EN112 EN113 EN114 EN115 EN116 EN117 EN118 EN119 EN120
+            EN121 EN122 EN123 EN124 EN125 EN126 EN127 EN128 EN129 EN130 EN131
+            dco_out
*XINV0 reset_ reset_  INVX1
XA0 reset_ dco_out N1 AND2X1

*********************************
*    stage 1                    *
*********************************
XN0     EN0     N1    N2    TBUFIX1
XT0     EN3     N1    N2    TBUFIX1
XT1     EN6     N1    N2    TBUFIX1
XT2     EN9     N1    N2    TBUFIX1
XT3     EN12    N1    N2    TBUFIX1
XT4     EN15    N1    N2    TBUFIX1
XT5     EN18    N1    N2    TBUFIX1
XT6     EN21    N1    N2    TBUFIX1
XT7     EN24    N1    N2    TBUFIX1
XT8     EN27    N1    N2    TBUFIX1
XT9     EN30    N1    N2    TBUFIX1
XT10    EN33    N1    N2    TBUFIX1
XT11    EN36    N1    N2    TBUFIX1
XT12    EN39    N1    N2    TBUFIX1
XT13    EN42    N1    N2    TBUFIX1
XT14    EN45    N1    N2    TBUFIX1
XT15    EN48    N1    N2    TBUFIX1
XT16    EN51    N1    N2    TBUFIX1
XT17    EN54    N1    N2    TBUFIX1
XT18    EN57    N1    N2    TBUFIX1
XT19    EN60    N1    N2    TBUFIX1
XT20    EN63    N1    N2    TBUFIX1
XT21    EN66    N1    N2    TBUFIX1
XT22    EN69    N1    N2    TBUFIX1
XT23    EN72    N1    N2    TBUFIX1
XT24    EN75    N1    N2    TBUFIX1
XT25    EN78    N1    N2    TBUFIX1
XT26    EN81    N1    N2    TBUFIX1
XT27    EN84    N1    N2    TBUFIX1
XT28    EN87    N1    N2    TBUFIX1
XT29    EN90    N1    N2    TBUFIX1
XT30    EN93    N1    N2    TBUFIX1
XT31    EN96    N1    N2    TBUFIX1
XT32    EN99    N1    N2    TBUFIX1
XT33    EN102   N1    N2    TBUFIX1
XT34    EN105   N1    N2    TBUFIX1
XT35    EN108   N1    N2    TBUFIX1
XT36    EN111   N1    N2    TBUFIX1
XT37    EN114   N1    N2    TBUFIX1
XT38    EN117   N1    N2    TBUFIX1
XT39    EN120   N1    N2    TBUFIX1
XT40    EN123   N1    N2    TBUFIX1
XT41    EN126   N1    N2    TBUFIX1
XT42    EN129   N1    N2    TBUFIX1

*********************************
*    stage 2                    *
*********************************
XN1     EN1     N2    N3    TBUFIX1
XT43    EN4     N2    N3    TBUFIX1
XT44    EN7     N2    N3    TBUFIX1
XT45    EN10    N2    N3    TBUFIX1
XT46    EN13    N2    N3    TBUFIX1
XT47    EN16    N2    N3    TBUFIX1
XT48    EN19    N2    N3    TBUFIX1
XT49    EN22    N2    N3    TBUFIX1
XT50    EN25    N2    N3    TBUFIX1
XT51    EN28    N2    N3    TBUFIX1
XT52    EN31    N2    N3    TBUFIX1
XT53    EN34    N2    N3    TBUFIX1
XT54    EN37    N2    N3    TBUFIX1
XT55    EN40    N2    N3    TBUFIX1
XT56    EN43    N2    N3    TBUFIX1
XT57    EN46    N2    N3    TBUFIX1
XT58    EN49    N2    N3    TBUFIX1
XT59    EN52    N2    N3    TBUFIX1
XT60    EN55    N2    N3    TBUFIX1
XT61    EN58    N2    N3    TBUFIX1
XT62    EN61    N2    N3    TBUFIX1
XT63    EN64    N2    N3    TBUFIX1
XT64    EN67    N2    N3    TBUFIX1
XT65    EN70    N2    N3    TBUFIX1
XT66    EN73    N2    N3    TBUFIX1
XT67    EN76    N2    N3    TBUFIX1
XT68    EN79    N2    N3    TBUFIX1
XT69    EN82    N2    N3    TBUFIX1
XT70    EN85    N2    N3    TBUFIX1
XT71    EN88    N2    N3    TBUFIX1
XT72    EN91    N2    N3    TBUFIX1
XT73    EN94    N2    N3    TBUFIX1
XT74    EN97    N2    N3    TBUFIX1
XT75    EN100   N2    N3    TBUFIX1
XT76    EN103   N2    N3    TBUFIX1
XT77    EN106   N2    N3    TBUFIX1
XT78    EN109   N2    N3    TBUFIX1
XT79    EN112   N2    N3    TBUFIX1
XT80    EN115   N2    N3    TBUFIX1
XT81    EN118   N2    N3    TBUFIX1
XT82    EN121   N2    N3    TBUFIX1
XT83    EN124   N2    N3    TBUFIX1
XT84    EN127   N2    N3    TBUFIX1
XT85    EN130   N2    N3    TBUFIX1

*********************************
*    stage 3                    *
*********************************
XN2     EN2     N3    dco_out   TBUFIX1
XT86    EN5     N3    dco_out   TBUFIX1
XT87    EN8     N3    dco_out   TBUFIX1
XT88    EN11    N3    dco_out   TBUFIX1
XT89    EN14    N3    dco_out   TBUFIX1
XT90    EN17    N3    dco_out   TBUFIX1
XT91    EN20    N3    dco_out   TBUFIX1
XT92    EN23    N3    dco_out   TBUFIX1
XT93    EN26    N3    dco_out   TBUFIX1
XT94    EN29    N3    dco_out   TBUFIX1
XT95    EN32    N3    dco_out   TBUFIX1
XT96    EN35    N3    dco_out   TBUFIX1
XT97    EN38    N3    dco_out   TBUFIX1
XT98    EN41    N3    dco_out   TBUFIX1
XT99    EN44    N3    dco_out   TBUFIX1
XT100   EN47    N3    dco_out   TBUFIX1
XT101   EN50    N3    dco_out   TBUFIX1
XT102   EN53    N3    dco_out   TBUFIX1
XT103   EN56    N3    dco_out   TBUFIX1
XT104   EN59    N3    dco_out   TBUFIX1
XT105   EN62    N3    dco_out   TBUFIX1
XT106   EN65    N3    dco_out   TBUFIX1
XT107   EN68    N3    dco_out   TBUFIX1
XT108   EN71    N3    dco_out   TBUFIX1
XT109   EN74    N3    dco_out   TBUFIX1
XT110   EN77    N3    dco_out   TBUFIX1
XT111   EN80    N3    dco_out   TBUFIX1
XT112   EN83    N3    dco_out   TBUFIX1
XT113   EN86    N3    dco_out   TBUFIX1
XT114   EN89    N3    dco_out   TBUFIX1
XT115   EN92    N3    dco_out   TBUFIX1
XT116   EN95    N3    dco_out   TBUFIX1
XT117   EN98    N3    dco_out   TBUFIX1
XT118   EN101   N3    dco_out   TBUFIX1
XT119   EN104   N3    dco_out   TBUFIX1
XT120   EN107   N3    dco_out   TBUFIX1
XT121   EN110   N3    dco_out   TBUFIX1
XT122   EN113   N3    dco_out   TBUFIX1
XT123   EN116   N3    dco_out   TBUFIX1
XT124   EN119   N3    dco_out   TBUFIX1
XT125   EN122   N3    dco_out   TBUFIX1
XT126   EN125   N3    dco_out   TBUFIX1
XT127   EN128   N3    dco_out   TBUFIX1
XT128   EN131   N3    dco_out   TBUFIX1

C1 dco_out 0 0.02p

.ends

***********************************
* Subckt Definition               *
***********************************

.end

