    
*** Process: Typical ***
.lib "hspice_model.122" L18U18V_TT
*.lib "hspice_model.122" L18U18V_FF
*.lib "hspice_model.122" L18U18V_SS
.include "hspice_cells.sp"
*** Voltage: 1.8V ***
.PARAM supply=1.8v

*** Temperature: 25C ***
.TEMP 25

***********************************
* Transition Analysis             *
***********************************
.TRAN 1ps 3000ns

***********************************
* HSPICE Options                  *
***********************************
.OPTION POST PROBE
.OPTION NOMOD BRIEF MEASDGT=7 
.OPTION CAPTAB NOTOP AUTOSTOP

***********************************
* Output Signals                  *
***********************************
.probe tran v(ANDIN)
.probe tran v(IN)
.probe tran v(OUT1)
.probe tran v(OUT2)
.probe tran v(OUT3)
.probe tran i(VDD)

***********************************
* Measurement Commands            *
***********************************
*** Output Rise-Time and Fall-Time ***
.MEAS TRAN TR1     TRIG V(OUT3) val='supply*0.5' rise=2 TD=30ns      TARG V(OUT3) val='supply*0.5' rise=3 TD=30ns
.MEAS TRAN TR2     TRIG V(OUT3) val='supply*0.5' rise=2 TD=50ns      TARG V(OUT3) val='supply*0.5' rise=3 TD=50ns
.MEAS TRAN TR3     TRIG V(OUT3) val='supply*0.5' rise=2 TD=70ns      TARG V(OUT3) val='supply*0.5' rise=3 TD=70ns
.MEAS TRAN TR4     TRIG V(OUT3) val='supply*0.5' rise=2 TD=90ns      TARG V(OUT3) val='supply*0.5' rise=3 TD=90ns
.MEAS TRAN TR5     TRIG V(OUT3) val='supply*0.5' rise=2 TD=110ns     TARG V(OUT3) val='supply*0.5' rise=3 TD=110ns
.MEAS TRAN TR6     TRIG V(OUT3) val='supply*0.5' rise=2 TD=130ns     TARG V(OUT3) val='supply*0.5' rise=3 TD=130ns
.MEAS TRAN TR7     TRIG V(OUT3) val='supply*0.5' rise=2 TD=150ns     TARG V(OUT3) val='supply*0.5' rise=3 TD=150ns
.MEAS TRAN TR8     TRIG V(OUT3) val='supply*0.5' rise=2 TD=170ns     TARG V(OUT3) val='supply*0.5' rise=3 TD=170ns
.MEAS TRAN TR9     TRIG V(OUT3) val='supply*0.5' rise=2 TD=190ns     TARG V(OUT3) val='supply*0.5' rise=3 TD=190ns
.MEAS TRAN TR10    TRIG V(OUT3) val='supply*0.5' rise=2 TD=210ns     TARG V(OUT3) val='supply*0.5' rise=3 TD=210ns
.MEAS TRAN TR11    TRIG V(OUT3) val='supply*0.5' rise=2 TD=230ns     TARG V(OUT3) val='supply*0.5' rise=3 TD=230ns
.MEAS TRAN TR12    TRIG V(OUT3) val='supply*0.5' rise=2 TD=250ns     TARG V(OUT3) val='supply*0.5' rise=3 TD=250ns
.MEAS TRAN TR13    TRIG V(OUT3) val='supply*0.5' rise=2 TD=270ns     TARG V(OUT3) val='supply*0.5' rise=3 TD=270ns
.MEAS TRAN TR14    TRIG V(OUT3) val='supply*0.5' rise=2 TD=290ns     TARG V(OUT3) val='supply*0.5' rise=3 TD=290ns
.MEAS TRAN TR15    TRIG V(OUT3) val='supply*0.5' rise=2 TD=310ns     TARG V(OUT3) val='supply*0.5' rise=3 TD=310ns
.MEAS TRAN TR16    TRIG V(OUT3) val='supply*0.5' rise=2 TD=330ns     TARG V(OUT3) val='supply*0.5' rise=3 TD=330ns
.MEAS TRAN TR17    TRIG V(OUT3) val='supply*0.5' rise=2 TD=350ns     TARG V(OUT3) val='supply*0.5' rise=3 TD=350ns
.MEAS TRAN TR18    TRIG V(OUT3) val='supply*0.5' rise=2 TD=370ns     TARG V(OUT3) val='supply*0.5' rise=3 TD=370ns
.MEAS TRAN TR19    TRIG V(OUT3) val='supply*0.5' rise=2 TD=390ns     TARG V(OUT3) val='supply*0.5' rise=3 TD=390ns
.MEAS TRAN TR20    TRIG V(OUT3) val='supply*0.5' rise=2 TD=410ns     TARG V(OUT3) val='supply*0.5' rise=3 TD=410ns
.MEAS TRAN TR21    TRIG V(OUT3) val='supply*0.5' rise=2 TD=430ns     TARG V(OUT3) val='supply*0.5' rise=3 TD=430ns
.MEAS TRAN TR22    TRIG V(OUT3) val='supply*0.5' rise=2 TD=450ns     TARG V(OUT3) val='supply*0.5' rise=3 TD=450ns
.MEAS TRAN TR23    TRIG V(OUT3) val='supply*0.5' rise=2 TD=470ns     TARG V(OUT3) val='supply*0.5' rise=3 TD=470ns
.MEAS TRAN TR24    TRIG V(OUT3) val='supply*0.5' rise=2 TD=490ns     TARG V(OUT3) val='supply*0.5' rise=3 TD=490ns
.MEAS TRAN TR25    TRIG V(OUT3) val='supply*0.5' rise=2 TD=510ns     TARG V(OUT3) val='supply*0.5' rise=3 TD=510ns
.MEAS TRAN TR26    TRIG V(OUT3) val='supply*0.5' rise=2 TD=530ns     TARG V(OUT3) val='supply*0.5' rise=3 TD=530ns
.MEAS TRAN TR27    TRIG V(OUT3) val='supply*0.5' rise=2 TD=550ns     TARG V(OUT3) val='supply*0.5' rise=3 TD=550ns
.MEAS TRAN TR28    TRIG V(OUT3) val='supply*0.5' rise=2 TD=570ns     TARG V(OUT3) val='supply*0.5' rise=3 TD=570ns
.MEAS TRAN TR29    TRIG V(OUT3) val='supply*0.5' rise=2 TD=590ns     TARG V(OUT3) val='supply*0.5' rise=3 TD=590ns
.MEAS TRAN TR30    TRIG V(OUT3) val='supply*0.5' rise=2 TD=610ns     TARG V(OUT3) val='supply*0.5' rise=3 TD=610ns
.MEAS TRAN TR31    TRIG V(OUT3) val='supply*0.5' rise=2 TD=630ns     TARG V(OUT3) val='supply*0.5' rise=3 TD=630ns
.MEAS TRAN TR32    TRIG V(OUT3) val='supply*0.5' rise=2 TD=650ns     TARG V(OUT3) val='supply*0.5' rise=3 TD=650ns
.MEAS TRAN TR33    TRIG V(OUT3) val='supply*0.5' rise=2 TD=670ns     TARG V(OUT3) val='supply*0.5' rise=3 TD=670ns
.MEAS TRAN TR34    TRIG V(OUT3) val='supply*0.5' rise=2 TD=690ns     TARG V(OUT3) val='supply*0.5' rise=3 TD=690ns
.MEAS TRAN TR35    TRIG V(OUT3) val='supply*0.5' rise=2 TD=710ns     TARG V(OUT3) val='supply*0.5' rise=3 TD=710ns
.MEAS TRAN TR36    TRIG V(OUT3) val='supply*0.5' rise=2 TD=730ns     TARG V(OUT3) val='supply*0.5' rise=3 TD=730ns
.MEAS TRAN TR37    TRIG V(OUT3) val='supply*0.5' rise=2 TD=750ns     TARG V(OUT3) val='supply*0.5' rise=3 TD=750ns
.MEAS TRAN TR38    TRIG V(OUT3) val='supply*0.5' rise=2 TD=770ns     TARG V(OUT3) val='supply*0.5' rise=3 TD=770ns
.MEAS TRAN TR39    TRIG V(OUT3) val='supply*0.5' rise=2 TD=790ns     TARG V(OUT3) val='supply*0.5' rise=3 TD=790ns
.MEAS TRAN TR40    TRIG V(OUT3) val='supply*0.5' rise=2 TD=810ns     TARG V(OUT3) val='supply*0.5' rise=3 TD=810ns
.MEAS TRAN TR41    TRIG V(OUT3) val='supply*0.5' rise=2 TD=830ns     TARG V(OUT3) val='supply*0.5' rise=3 TD=830ns
.MEAS TRAN TR42    TRIG V(OUT3) val='supply*0.5' rise=2 TD=850ns     TARG V(OUT3) val='supply*0.5' rise=3 TD=850ns
.MEAS TRAN TR43    TRIG V(OUT3) val='supply*0.5' rise=2 TD=870ns     TARG V(OUT3) val='supply*0.5' rise=3 TD=870ns
.MEAS TRAN TR44    TRIG V(OUT3) val='supply*0.5' rise=2 TD=890ns     TARG V(OUT3) val='supply*0.5' rise=3 TD=890ns
.MEAS TRAN TR45    TRIG V(OUT3) val='supply*0.5' rise=2 TD=910ns     TARG V(OUT3) val='supply*0.5' rise=3 TD=910ns
.MEAS TRAN TR46    TRIG V(OUT3) val='supply*0.5' rise=2 TD=930ns     TARG V(OUT3) val='supply*0.5' rise=3 TD=930ns
.MEAS TRAN TR47    TRIG V(OUT3) val='supply*0.5' rise=2 TD=950ns     TARG V(OUT3) val='supply*0.5' rise=3 TD=950ns
.MEAS TRAN TR48    TRIG V(OUT3) val='supply*0.5' rise=2 TD=970ns     TARG V(OUT3) val='supply*0.5' rise=3 TD=970ns
.MEAS TRAN TR49    TRIG V(OUT3) val='supply*0.5' rise=2 TD=990ns     TARG V(OUT3) val='supply*0.5' rise=3 TD=990ns
.MEAS TRAN TR50    TRIG V(OUT3) val='supply*0.5' rise=2 TD=1010ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=1010ns
.MEAS TRAN TR51    TRIG V(OUT3) val='supply*0.5' rise=2 TD=1030ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=1030ns
.MEAS TRAN TR52    TRIG V(OUT3) val='supply*0.5' rise=2 TD=1050ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=1050ns
.MEAS TRAN TR53    TRIG V(OUT3) val='supply*0.5' rise=2 TD=1070ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=1070ns
.MEAS TRAN TR54    TRIG V(OUT3) val='supply*0.5' rise=2 TD=1090ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=1090ns
.MEAS TRAN TR55    TRIG V(OUT3) val='supply*0.5' rise=2 TD=1110ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=1110ns
.MEAS TRAN TR56    TRIG V(OUT3) val='supply*0.5' rise=2 TD=1130ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=1130ns
.MEAS TRAN TR57    TRIG V(OUT3) val='supply*0.5' rise=2 TD=1150ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=1150ns
.MEAS TRAN TR58    TRIG V(OUT3) val='supply*0.5' rise=2 TD=1170ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=1170ns
.MEAS TRAN TR59    TRIG V(OUT3) val='supply*0.5' rise=2 TD=1190ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=1190ns
.MEAS TRAN TR60    TRIG V(OUT3) val='supply*0.5' rise=2 TD=1210ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=1210ns
.MEAS TRAN TR61    TRIG V(OUT3) val='supply*0.5' rise=2 TD=1230ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=1230ns
.MEAS TRAN TR62    TRIG V(OUT3) val='supply*0.5' rise=2 TD=1250ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=1250ns
.MEAS TRAN TR63    TRIG V(OUT3) val='supply*0.5' rise=2 TD=1270ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=1270ns
.MEAS TRAN TR64    TRIG V(OUT3) val='supply*0.5' rise=2 TD=1290ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=1290ns
.MEAS TRAN TR65    TRIG V(OUT3) val='supply*0.5' rise=2 TD=1310ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=1310ns
.MEAS TRAN TR66    TRIG V(OUT3) val='supply*0.5' rise=2 TD=1330ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=1330ns
.MEAS TRAN TR67    TRIG V(OUT3) val='supply*0.5' rise=2 TD=1350ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=1350ns
.MEAS TRAN TR68    TRIG V(OUT3) val='supply*0.5' rise=2 TD=1370ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=1370ns
.MEAS TRAN TR69    TRIG V(OUT3) val='supply*0.5' rise=2 TD=1390ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=1390ns
.MEAS TRAN TR70    TRIG V(OUT3) val='supply*0.5' rise=2 TD=1410ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=1410ns
.MEAS TRAN TR71    TRIG V(OUT3) val='supply*0.5' rise=2 TD=1430ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=1430ns
.MEAS TRAN TR72    TRIG V(OUT3) val='supply*0.5' rise=2 TD=1450ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=1450ns
.MEAS TRAN TR73    TRIG V(OUT3) val='supply*0.5' rise=2 TD=1470ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=1470ns
.MEAS TRAN TR74    TRIG V(OUT3) val='supply*0.5' rise=2 TD=1490ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=1490ns
.MEAS TRAN TR75    TRIG V(OUT3) val='supply*0.5' rise=2 TD=1510ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=1510ns
.MEAS TRAN TR76    TRIG V(OUT3) val='supply*0.5' rise=2 TD=1530ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=1530ns
.MEAS TRAN TR77    TRIG V(OUT3) val='supply*0.5' rise=2 TD=1550ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=1550ns
.MEAS TRAN TR78    TRIG V(OUT3) val='supply*0.5' rise=2 TD=1570ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=1570ns
.MEAS TRAN TR79    TRIG V(OUT3) val='supply*0.5' rise=2 TD=1590ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=1590ns
.MEAS TRAN TR80    TRIG V(OUT3) val='supply*0.5' rise=2 TD=1610ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=1610ns
.MEAS TRAN TR81    TRIG V(OUT3) val='supply*0.5' rise=2 TD=1630ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=1630ns
.MEAS TRAN TR82    TRIG V(OUT3) val='supply*0.5' rise=2 TD=1650ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=1650ns
.MEAS TRAN TR83    TRIG V(OUT3) val='supply*0.5' rise=2 TD=1670ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=1670ns
.MEAS TRAN TR84    TRIG V(OUT3) val='supply*0.5' rise=2 TD=1690ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=1690ns
.MEAS TRAN TR85    TRIG V(OUT3) val='supply*0.5' rise=2 TD=1710ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=1710ns
.MEAS TRAN TR86    TRIG V(OUT3) val='supply*0.5' rise=2 TD=1730ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=1730ns
.MEAS TRAN TR87    TRIG V(OUT3) val='supply*0.5' rise=2 TD=1750ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=1750ns
.MEAS TRAN TR88    TRIG V(OUT3) val='supply*0.5' rise=2 TD=1770ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=1770ns
.MEAS TRAN TR89    TRIG V(OUT3) val='supply*0.5' rise=2 TD=1790ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=1790ns
.MEAS TRAN TR90    TRIG V(OUT3) val='supply*0.5' rise=2 TD=1810ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=1810ns
.MEAS TRAN TR91    TRIG V(OUT3) val='supply*0.5' rise=2 TD=1830ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=1830ns
.MEAS TRAN TR92    TRIG V(OUT3) val='supply*0.5' rise=2 TD=1850ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=1850ns
.MEAS TRAN TR93    TRIG V(OUT3) val='supply*0.5' rise=2 TD=1870ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=1870ns
.MEAS TRAN TR94    TRIG V(OUT3) val='supply*0.5' rise=2 TD=1890ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=1890ns
.MEAS TRAN TR95    TRIG V(OUT3) val='supply*0.5' rise=2 TD=1910ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=1910ns
.MEAS TRAN TR96    TRIG V(OUT3) val='supply*0.5' rise=2 TD=1930ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=1930ns
.MEAS TRAN TR97    TRIG V(OUT3) val='supply*0.5' rise=2 TD=1950ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=1950ns
.MEAS TRAN TR98    TRIG V(OUT3) val='supply*0.5' rise=2 TD=1970ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=1970ns
.MEAS TRAN TR99    TRIG V(OUT3) val='supply*0.5' rise=2 TD=1990ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=1990ns
.MEAS TRAN TR100   TRIG V(OUT3) val='supply*0.5' rise=2 TD=2010ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=2010ns
.MEAS TRAN TR101   TRIG V(OUT3) val='supply*0.5' rise=2 TD=2030ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=2030ns
.MEAS TRAN TR102   TRIG V(OUT3) val='supply*0.5' rise=2 TD=2050ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=2050ns
.MEAS TRAN TR103   TRIG V(OUT3) val='supply*0.5' rise=2 TD=2070ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=2070ns
.MEAS TRAN TR104   TRIG V(OUT3) val='supply*0.5' rise=2 TD=2090ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=2090ns
.MEAS TRAN TR105   TRIG V(OUT3) val='supply*0.5' rise=2 TD=2110ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=2110ns
.MEAS TRAN TR106   TRIG V(OUT3) val='supply*0.5' rise=2 TD=2130ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=2130ns
.MEAS TRAN TR107   TRIG V(OUT3) val='supply*0.5' rise=2 TD=2150ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=2150ns
.MEAS TRAN TR108   TRIG V(OUT3) val='supply*0.5' rise=2 TD=2170ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=2170ns
.MEAS TRAN TR109   TRIG V(OUT3) val='supply*0.5' rise=2 TD=2190ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=2190ns
.MEAS TRAN TR110   TRIG V(OUT3) val='supply*0.5' rise=2 TD=2210ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=2210ns
.MEAS TRAN TR111   TRIG V(OUT3) val='supply*0.5' rise=2 TD=2230ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=2230ns
.MEAS TRAN TR112   TRIG V(OUT3) val='supply*0.5' rise=2 TD=2250ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=2250ns
.MEAS TRAN TR113   TRIG V(OUT3) val='supply*0.5' rise=2 TD=2270ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=2270ns
.MEAS TRAN TR114   TRIG V(OUT3) val='supply*0.5' rise=2 TD=2290ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=2290ns
.MEAS TRAN TR115   TRIG V(OUT3) val='supply*0.5' rise=2 TD=2310ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=2310ns
.MEAS TRAN TR116   TRIG V(OUT3) val='supply*0.5' rise=2 TD=2330ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=2330ns
.MEAS TRAN TR117   TRIG V(OUT3) val='supply*0.5' rise=2 TD=2350ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=2350ns
.MEAS TRAN TR118   TRIG V(OUT3) val='supply*0.5' rise=2 TD=2370ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=2370ns
.MEAS TRAN TR119   TRIG V(OUT3) val='supply*0.5' rise=2 TD=2390ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=2390ns
.MEAS TRAN TR120   TRIG V(OUT3) val='supply*0.5' rise=2 TD=2410ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=2410ns
.MEAS TRAN TR121   TRIG V(OUT3) val='supply*0.5' rise=2 TD=2430ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=2430ns
.MEAS TRAN TR122   TRIG V(OUT3) val='supply*0.5' rise=2 TD=2450ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=2450ns
.MEAS TRAN TR123   TRIG V(OUT3) val='supply*0.5' rise=2 TD=2470ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=2470ns
.MEAS TRAN TR124   TRIG V(OUT3) val='supply*0.5' rise=2 TD=2490ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=2490ns
.MEAS TRAN TR125   TRIG V(OUT3) val='supply*0.5' rise=2 TD=2510ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=2510ns
.MEAS TRAN TR126   TRIG V(OUT3) val='supply*0.5' rise=2 TD=2530ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=2530ns
.MEAS TRAN TR127   TRIG V(OUT3) val='supply*0.5' rise=2 TD=2550ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=2550ns
.MEAS TRAN TR128   TRIG V(OUT3) val='supply*0.5' rise=2 TD=2570ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=2570ns
.MEAS TRAN TR129   TRIG V(OUT3) val='supply*0.5' rise=2 TD=2590ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=2590ns
.MEAS TRAN TR130   TRIG V(OUT3) val='supply*0.5' rise=2 TD=2610ns    TARG V(OUT3) val='supply*0.5' rise=3 TD=2610ns
*** Average && Peak Power ***

***********************************
* Define Global Nets              *
***********************************
.GLOBAL VDD VSS

***********************************
* Voltage Sources                 *
***********************************
vdd     VDD   0  DC supply
vss     VSS   0  DC 0
*vinput   IN   0  PULSE(0 supply 0 0.1n 0.1n 4.9n 10n) 
*** Digital Vector Input ***
.VEC "DCOtt.vec"

***********************************
* TOP Circuit                     *
***********************************
xAND ANDIN     OUT3 IN  AND2X1 
x0   EN[0]     IN OUT1  TBUFIX1
x1   EN[1]     IN OUT1  TBUFIX1
x2   EN[2]     IN OUT1  TBUFIX1
x3   EN[3]     IN OUT1  TBUFIX1
x4   EN[4]     IN OUT1  TBUFIX1
x5   EN[5]     IN OUT1  TBUFIX1
x6   EN[6]     IN OUT1  TBUFIX1
x7   EN[7]     IN OUT1  TBUFIX1
x8   EN[8]     IN OUT1  TBUFIX1
x9   EN[9]     IN OUT1  TBUFIX1
x10  EN[10]    IN OUT1  TBUFIX1
x11  EN[11]    IN OUT1  TBUFIX1
x12  EN[12]    IN OUT1  TBUFIX1
x13  EN[13]    IN OUT1  TBUFIX1
x14  EN[14]    IN OUT1  TBUFIX1
x15  EN[15]    IN OUT1  TBUFIX1
x16  EN[16]    IN OUT1  TBUFIX1
x17  EN[17]    IN OUT1  TBUFIX1
x18  EN[18]    IN OUT1  TBUFIX1
x19  EN[19]    IN OUT1  TBUFIX1
x20  EN[20]    IN OUT1  TBUFIX1
x21  EN[21]    IN OUT1  TBUFIX1
x22  EN[22]    IN OUT1  TBUFIX1
x23  EN[23]    IN OUT1  TBUFIX1
x24  EN[24]    IN OUT1  TBUFIX1
x25  EN[25]    IN OUT1  TBUFIX1
x26  EN[26]    IN OUT1  TBUFIX1
x27  EN[27]    IN OUT1  TBUFIX1
x28  EN[28]    IN OUT1  TBUFIX1
x29  EN[29]    IN OUT1  TBUFIX1
x30  EN[30]    IN OUT1  TBUFIX1
x31  EN[31]    IN OUT1  TBUFIX1
x32  EN[32]    IN OUT1  TBUFIX1
x33  EN[33]    IN OUT1  TBUFIX1
x34  EN[34]    IN OUT1  TBUFIX1
x35  EN[35]    IN OUT1  TBUFIX1
x36  EN[36]    IN OUT1  TBUFIX1
x37  EN[37]    IN OUT1  TBUFIX1
x38  EN[38]    IN OUT1  TBUFIX1
x39  EN[39]    IN OUT1  TBUFIX1
x40  EN[40]    IN OUT1  TBUFIX1
x41  EN[41]    IN OUT1  TBUFIX1
x42  EN[42]    IN OUT1  TBUFIX1
x43  EN[43]    IN OUT1  TBUFIX1

x44  EN[44]    OUT1 OUT2  TBUFIX1
x45  EN[45]    OUT1 OUT2  TBUFIX1
x46  EN[46]    OUT1 OUT2  TBUFIX1
x47  EN[47]    OUT1 OUT2  TBUFIX1
x48  EN[48]    OUT1 OUT2  TBUFIX1
x49  EN[49]    OUT1 OUT2  TBUFIX1
x50  EN[50]    OUT1 OUT2  TBUFIX1
x51  EN[51]    OUT1 OUT2  TBUFIX1
x52  EN[52]    OUT1 OUT2  TBUFIX1
x53  EN[53]    OUT1 OUT2  TBUFIX1
x54  EN[54]    OUT1 OUT2  TBUFIX1
x55  EN[55]    OUT1 OUT2  TBUFIX1
x56  EN[56]    OUT1 OUT2  TBUFIX1
x57  EN[57]    OUT1 OUT2  TBUFIX1
x58  EN[58]    OUT1 OUT2  TBUFIX1
x59  EN[59]    OUT1 OUT2  TBUFIX1
x60  EN[60]    OUT1 OUT2  TBUFIX1
x61  EN[61]    OUT1 OUT2  TBUFIX1
x62  EN[62]    OUT1 OUT2  TBUFIX1
x63  EN[63]    OUT1 OUT2  TBUFIX1
x64  EN[64]    OUT1 OUT2  TBUFIX1
x65  EN[65]    OUT1 OUT2  TBUFIX1
x66  EN[66]    OUT1 OUT2  TBUFIX1
x67  EN[67]    OUT1 OUT2  TBUFIX1
x68  EN[68]    OUT1 OUT2  TBUFIX1
x69  EN[69]    OUT1 OUT2  TBUFIX1
x70  EN[70]    OUT1 OUT2  TBUFIX1
x71  EN[71]    OUT1 OUT2  TBUFIX1
x72  EN[72]    OUT1 OUT2  TBUFIX1
x73  EN[73]    OUT1 OUT2  TBUFIX1
x74  EN[74]    OUT1 OUT2  TBUFIX1
x75  EN[75]    OUT1 OUT2  TBUFIX1
x76  EN[76]    OUT1 OUT2  TBUFIX1
x77  EN[77]    OUT1 OUT2  TBUFIX1
x78  EN[78]    OUT1 OUT2  TBUFIX1
x79  EN[79]    OUT1 OUT2  TBUFIX1
x80  EN[80]    OUT1 OUT2  TBUFIX1
x81  EN[81]    OUT1 OUT2  TBUFIX1
x82  EN[82]    OUT1 OUT2  TBUFIX1
x83  EN[83]    OUT1 OUT2  TBUFIX1
x84  EN[84]    OUT1 OUT2  TBUFIX1
x85  EN[85]    OUT1 OUT2  TBUFIX1
x86  EN[86]    OUT1 OUT2  TBUFIX1
x87  EN[87]    OUT1 OUT2  TBUFIX1

x88  EN[88]    OUT2 OUT3  TBUFIX1
x89  EN[89]    OUT2 OUT3  TBUFIX1
x90  EN[90]    OUT2 OUT3  TBUFIX1
x91  EN[91]    OUT2 OUT3  TBUFIX1
x92  EN[92]    OUT2 OUT3  TBUFIX1
x93  EN[93]    OUT2 OUT3  TBUFIX1
x94  EN[94]    OUT2 OUT3  TBUFIX1
x95  EN[95]    OUT2 OUT3  TBUFIX1
x96  EN[96]    OUT2 OUT3  TBUFIX1
x97  EN[97]    OUT2 OUT3  TBUFIX1
x98  EN[98]    OUT2 OUT3  TBUFIX1
x99  EN[99]    OUT2 OUT3  TBUFIX1
x100 EN[100]   OUT2 OUT3  TBUFIX1
x101 EN[101]   OUT2 OUT3  TBUFIX1
x102 EN[102]   OUT2 OUT3  TBUFIX1
x103 EN[103]   OUT2 OUT3  TBUFIX1
x104 EN[104]   OUT2 OUT3  TBUFIX1
x105 EN[105]   OUT2 OUT3  TBUFIX1
x106 EN[106]   OUT2 OUT3  TBUFIX1
x107 EN[107]   OUT2 OUT3  TBUFIX1
x108 EN[108]   OUT2 OUT3  TBUFIX1
x109 EN[109]   OUT2 OUT3  TBUFIX1
x110 EN[110]   OUT2 OUT3  TBUFIX1
x111 EN[111]   OUT2 OUT3  TBUFIX1
x112 EN[112]   OUT2 OUT3  TBUFIX1
x113 EN[113]   OUT2 OUT3  TBUFIX1
x114 EN[114]   OUT2 OUT3  TBUFIX1
x115 EN[115]   OUT2 OUT3  TBUFIX1
x116 EN[116]   OUT2 OUT3  TBUFIX1
x117 EN[117]   OUT2 OUT3  TBUFIX1
x118 EN[118]   OUT2 OUT3  TBUFIX1
x119 EN[119]   OUT2 OUT3  TBUFIX1
x120 EN[120]   OUT2 OUT3  TBUFIX1
x121 EN[121]   OUT2 OUT3  TBUFIX1
x122 EN[122]   OUT2 OUT3  TBUFIX1
x123 EN[123]   OUT2 OUT3  TBUFIX1
x124 EN[124]   OUT2 OUT3  TBUFIX1
x125 EN[125]   OUT2 OUT3  TBUFIX1
x126 EN[126]   OUT2 OUT3  TBUFIX1
x127 EN[127]   OUT2 OUT3  TBUFIX1
x128 EN[128]   OUT2 OUT3  TBUFIX1
x129 EN[129]   OUT2 OUT3  TBUFIX1
x130 EN[130]   OUT2 OUT3  TBUFIX1
x131 EN[131]   OUT2 OUT3  TBUFIX1
C1 OUT3 0 0.02p
.end