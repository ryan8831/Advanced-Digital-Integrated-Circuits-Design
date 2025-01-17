    
*******************************************************
* Advanced Digital IC Design                          *
*                                                     *
* Demo: Buffer Chain                                  *
*******************************************************
*** Process: Typical ***
.lib "ultrasim_model.122" L18U18V_TT
*** Voltage: 1.8V ***
.PARAM supply=1.8v
*** Temperature: 25C ***
.TEMP 25
***********************************
* Operation Condition             *
***********************************
*** Include subcircuit ***
.INCLUDE "ultrasim_cells.sp"


* HSPICE Options                  *
***********************************
***********************************
* Define Global Nets              *
***********************************
.GLOBAL VDD VSS
***********************************
* Voltage Sources                 *
***********************************
vdd     VDD   0  DC supply
vss     VSS   0  DC 0
***********************************
* TOP Circuit                     *
***********************************
.SUBCKT dco_model reset_
+            EN_0    EN_1     EN_2     EN_3    EN_4    EN_5      EN_6   EN_7   EN_8   EN_9  EN_10
+            EN_11   EN_12    EN_13    EN_14   EN_15   EN_16    EN_17   EN_18  EN_19  EN_20
+            EN_21   EN_22    EN_23    EN_24   EN_25   EN_26    EN_27   EN_28  EN_29  EN_30
+            EN_31   EN_32    EN_33    EN_34   EN_35   EN_36    EN_37   EN_38  EN_39  EN_40
+            EN_41   EN_42    EN_43    EN_44   EN_45   EN_46    EN_47   EN_48  EN_49  EN_50
+            EN_51   EN_52    EN_53    EN_54   EN_55   EN_56    EN_57   EN_58  EN_59  EN_60
+            EN_61   EN_62    EN_63    EN_64   EN_65   EN_66    EN_67   EN_68  EN_69  EN_70
+            EN_71   EN_72    EN_73    EN_74   EN_75   EN_76    EN_77   EN_78  EN_79  EN_80
+            EN_81   EN_82    EN_83    EN_84   EN_85   EN_86    EN_87   EN_88  EN_89  EN_90
+            EN_91   EN_92    EN_93    EN_94   EN_95   EN_96    EN_97   EN_98  EN_99  EN_100
+            EN_101 EN_102   EN_103   EN_104  EN_105   EN_106  EN_107  EN_108 EN_109  EN_110
+            EN_111 EN_112   EN_113   EN_114  EN_115   EN_116  EN_117  EN_118 EN_119  EN_120
+            EN_121 EN_122   EN_123   EN_124  EN_125   EN_126  EN_127  EN_128 EN_129  EN_130  EN_131
+            dco_out


x0   EN_0     IN OUT1  TBUFIX1
x1   EN_1     IN OUT1  TBUFIX1
x2   EN_2     IN OUT1  TBUFIX1
x3   EN_3     IN OUT1  TBUFIX1
x4   EN_4     IN OUT1  TBUFIX1
x5   EN_5     IN OUT1  TBUFIX1
x6   EN_6     IN OUT1  TBUFIX1
x7   EN_7     IN OUT1  TBUFIX1
x8   EN_8     IN OUT1  TBUFIX1
x9   EN_9     IN OUT1  TBUFIX1
x10  EN_10     IN OUT1  TBUFIX1
x11  EN_11     IN OUT1  TBUFIX1
x12  EN_12     IN OUT1  TBUFIX1
x13  EN_13     IN OUT1  TBUFIX1
x14  EN_14     IN OUT1  TBUFIX1
x15  EN_15     IN OUT1  TBUFIX1
x16  EN_16     IN OUT1  TBUFIX1
x17  EN_17     IN OUT1  TBUFIX1
x18  EN_18     IN OUT1  TBUFIX1
x19  EN_19     IN OUT1  TBUFIX1
x20  EN_20     IN OUT1  TBUFIX1
x21  EN_21     IN OUT1  TBUFIX1
x22  EN_22     IN OUT1  TBUFIX1
x23  EN_23     IN OUT1  TBUFIX1
x24  EN_24     IN OUT1  TBUFIX1
x25  EN_25     IN OUT1  TBUFIX1
x26  EN_26     IN OUT1  TBUFIX1
x27  EN_27     IN OUT1  TBUFIX1
x28  EN_28     IN OUT1  TBUFIX1
x29  EN_29     IN OUT1  TBUFIX1
x30  EN_30     IN OUT1  TBUFIX1
x31  EN_31     IN OUT1  TBUFIX1
x32  EN_32     IN OUT1  TBUFIX1
x33  EN_33     IN OUT1  TBUFIX1
x34  EN_34     IN OUT1  TBUFIX1
x35  EN_35     IN OUT1  TBUFIX1
x36  EN_36     IN OUT1  TBUFIX1
x37  EN_37     IN OUT1  TBUFIX1
x38  EN_38     IN OUT1  TBUFIX1
x39  EN_39     IN OUT1  TBUFIX1
x40  EN_40     IN OUT1  TBUFIX1
x41  EN_41     IN OUT1  TBUFIX1
x42  EN_42     IN OUT1  TBUFIX1
x43  EN_43     IN OUT1  TBUFIX1
x44  EN_44     OUT1 OUT2  TBUFIX1
x45  EN_45     OUT1 OUT2  TBUFIX1
x46  EN_46     OUT1 OUT2  TBUFIX1
x47  EN_47     OUT1 OUT2  TBUFIX1
x48  EN_48     OUT1 OUT2  TBUFIX1
x49  EN_49     OUT1 OUT2  TBUFIX1
x50  EN_50     OUT1 OUT2  TBUFIX1
x51  EN_51     OUT1 OUT2  TBUFIX1
x52  EN_52     OUT1 OUT2  TBUFIX1
x53  EN_53     OUT1 OUT2  TBUFIX1
x54  EN_54     OUT1 OUT2  TBUFIX1
x55  EN_55     OUT1 OUT2  TBUFIX1
x56  EN_56     OUT1 OUT2  TBUFIX1
x57  EN_57     OUT1 OUT2  TBUFIX1
x58  EN_58     OUT1 OUT2  TBUFIX1
x59  EN_59     OUT1 OUT2  TBUFIX1
x60  EN_60     OUT1 OUT2  TBUFIX1
x61  EN_61     OUT1 OUT2  TBUFIX1
x62  EN_62     OUT1 OUT2  TBUFIX1
x63  EN_63     OUT1 OUT2  TBUFIX1
x64  EN_64     OUT1 OUT2  TBUFIX1
x65  EN_65     OUT1 OUT2  TBUFIX1
x66  EN_66     OUT1 OUT2  TBUFIX1
x67  EN_67     OUT1 OUT2  TBUFIX1
x68  EN_68     OUT1 OUT2  TBUFIX1
x69  EN_69     OUT1 OUT2  TBUFIX1
x70  EN_70     OUT1 OUT2  TBUFIX1
x71  EN_71     OUT1 OUT2  TBUFIX1
x72  EN_72     OUT1 OUT2  TBUFIX1
x73  EN_73     OUT1 OUT2  TBUFIX1
x74  EN_74     OUT1 OUT2  TBUFIX1
x75  EN_75     OUT1 OUT2  TBUFIX1
x76  EN_76     OUT1 OUT2  TBUFIX1
x77  EN_77     OUT1 OUT2  TBUFIX1
x78  EN_78     OUT1 OUT2  TBUFIX1
x79  EN_79     OUT1 OUT2  TBUFIX1
x80  EN_80     OUT1 OUT2  TBUFIX1
x81  EN_81     OUT1 OUT2  TBUFIX1
x82  EN_82     OUT1 OUT2  TBUFIX1
x83  EN_83     OUT1 OUT2  TBUFIX1
x84  EN_84     OUT1 OUT2  TBUFIX1
x85  EN_85     OUT1 OUT2  TBUFIX1
x86  EN_86     OUT1 OUT2  TBUFIX1
x87  EN_87     OUT1 OUT2  TBUFIX1
x88  EN_88     OUT2 dco_out  TBUFIX1
x89  EN_89     OUT2 dco_out  TBUFIX1
x90  EN_90     OUT2 dco_out  TBUFIX1
x91  EN_91     OUT2 dco_out  TBUFIX1
x92  EN_92     OUT2 dco_out  TBUFIX1
x93  EN_93     OUT2 dco_out  TBUFIX1
x94  EN_94     OUT2 dco_out  TBUFIX1
x95  EN_95     OUT2 dco_out  TBUFIX1
x96  EN_96     OUT2 dco_out  TBUFIX1
x97  EN_97     OUT2 dco_out  TBUFIX1
x98  EN_98     OUT2 dco_out  TBUFIX1
x99  EN_99     OUT2 dco_out  TBUFIX1
x100 EN_100     OUT2 dco_out  TBUFIX1
x101 EN_101     OUT2 dco_out  TBUFIX1
x102 EN_102     OUT2 dco_out  TBUFIX1
x103 EN_103     OUT2 dco_out  TBUFIX1
x104 EN_104     OUT2 dco_out  TBUFIX1
x105 EN_105     OUT2 dco_out  TBUFIX1
x106 EN_106     OUT2 dco_out  TBUFIX1
x107 EN_107     OUT2 dco_out  TBUFIX1
x108 EN_108     OUT2 dco_out  TBUFIX1
x109 EN_109     OUT2 dco_out  TBUFIX1
x110 EN_110     OUT2 dco_out  TBUFIX1
x111 EN_111     OUT2 dco_out  TBUFIX1
x112 EN_112     OUT2 dco_out  TBUFIX1
x113 EN_113     OUT2 dco_out  TBUFIX1
x114 EN_114     OUT2 dco_out  TBUFIX1
x115 EN_115     OUT2 dco_out  TBUFIX1
x116 EN_116     OUT2 dco_out  TBUFIX1
x117 EN_117     OUT2 dco_out  TBUFIX1
x118 EN_118     OUT2 dco_out  TBUFIX1
x119 EN_119     OUT2 dco_out  TBUFIX1
x120 EN_120     OUT2 dco_out  TBUFIX1
x121 EN_121     OUT2 dco_out  TBUFIX1
x122 EN_122     OUT2 dco_out  TBUFIX1
x123 EN_123     OUT2 dco_out  TBUFIX1
x124 EN_124     OUT2 dco_out  TBUFIX1
x125 EN_125     OUT2 dco_out  TBUFIX1
x126 EN_126     OUT2 dco_out  TBUFIX1
x127 EN_127     OUT2 dco_out  TBUFIX1
x128 EN_128     OUT2 dco_out  TBUFIX1
x129 EN_129     OUT2 dco_out  TBUFIX1
x130 EN_130     OUT2 dco_out  TBUFIX1
x131 EN_131     OUT2 dco_out  TBUFIX1
C1 dco_out 0 0.02p
.ends
.end