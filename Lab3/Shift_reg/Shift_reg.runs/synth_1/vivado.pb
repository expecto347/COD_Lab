
q
Command: %s
53*	vivadotcl2@
,synth_design -top Top -part xc7a100tcsg324-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-349h px� 
W
Loading part %s157*device2$
xc7a100tcsg324-12default:defaultZ21-403h px� 
�
%s*synth2�
�Starting RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 1681.812 ; gain = 152.719 ; free physical = 4114 ; free virtual = 7183
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2
Top2default:default2
 2default:default2H
2/root/COD_Lab/Lab3/Shift_reg/PDU_src/PDU_src/Top.v2default:default2
72default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
PDU2default:default2
 2default:default2H
2/root/COD_Lab/Lab3/Shift_reg/PDU_src/PDU_src/PDU.v2default:default2
82default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
Receive2default:default2
 2default:default2L
6/root/COD_Lab/Lab3/Shift_reg/PDU_src/PDU_src/Receive.v2default:default2
92default:default8@Z8-6157h px� 
Y
%s
*synth2A
-	Parameter DIV_CNT bound to: 10'b1101100011 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter HDIV_CNT bound to: 10'b0110110001 
2default:defaulth p
x
� 
Q
%s
*synth29
%	Parameter RX_CNT bound to: 4'b1000 
2default:defaulth p
x
� 
N
%s
*synth26
"	Parameter C_IDLE bound to: 1'b0 
2default:defaulth p
x
� 
L
%s
*synth24
 	Parameter C_RX bound to: 1'b1 
2default:defaulth p
x
� 
�
-case statement is not full and has no default155*oasys2L
6/root/COD_Lab/Lab3/Shift_reg/PDU_src/PDU_src/Receive.v2default:default2
862default:default8@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Receive2default:default2
 2default:default2
12default:default2
12default:default2L
6/root/COD_Lab/Lab3/Shift_reg/PDU_src/PDU_src/Receive.v2default:default2
92default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
Ded2default:default2
 2default:default2H
2/root/COD_Lab/Lab3/Shift_reg/PDU_src/PDU_src/Ded.v2default:default2
82default:default8@Z8-6157h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
sw_1_reg2default:default2
Ded2default:default2H
2/root/COD_Lab/Lab3/Shift_reg/PDU_src/PDU_src/Ded.v2default:default2
262default:default8@Z8-5788h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
sw_2_reg2default:default2
Ded2default:default2H
2/root/COD_Lab/Lab3/Shift_reg/PDU_src/PDU_src/Ded.v2default:default2
272default:default8@Z8-5788h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
sw_3_reg2default:default2
Ded2default:default2H
2/root/COD_Lab/Lab3/Shift_reg/PDU_src/PDU_src/Ded.v2default:default2
282default:default8@Z8-5788h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Ded2default:default2
 2default:default2
22default:default2
12default:default2H
2/root/COD_Lab/Lab3/Shift_reg/PDU_src/PDU_src/Ded.v2default:default2
82default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
Decode2default:default2
 2default:default2K
5/root/COD_Lab/Lab3/Shift_reg/PDU_src/PDU_src/Decode.v2default:default2
82default:default8@Z8-6157h px� 
Y
%s
*synth2A
-	Parameter WAIT bound to: 0 - type: integer 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter DECODE bound to: 1 - type: integer 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter SET_1 bound to: 10 - type: integer 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter SET_2 bound to: 11 - type: integer 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter SET_3 bound to: 12 - type: integer 
2default:defaulth p
x
� 
Y
%s
*synth2A
-	Parameter SET bound to: 13 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter SET_DONE bound to: 14 - type: integer 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter ADD_1 bound to: 20 - type: integer 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter ADD_2 bound to: 21 - type: integer 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter ADD_3 bound to: 22 - type: integer 
2default:defaulth p
x
� 
Y
%s
*synth2A
-	Parameter ADD bound to: 23 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter ADD_DONE bound to: 24 - type: integer 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter DEL_1 bound to: 30 - type: integer 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter DEL_2 bound to: 31 - type: integer 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter DEL_3 bound to: 32 - type: integer 
2default:defaulth p
x
� 
Y
%s
*synth2A
-	Parameter DEL bound to: 33 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter DEL_DONE bound to: 34 - type: integer 
2default:defaulth p
x
� 
�
-case statement is not full and has no default155*oasys2K
5/root/COD_Lab/Lab3/Shift_reg/PDU_src/PDU_src/Decode.v2default:default2
572default:default8@Z8-155h px� 
�
-case statement is not full and has no default155*oasys2K
5/root/COD_Lab/Lab3/Shift_reg/PDU_src/PDU_src/Decode.v2default:default2
1672default:default8@Z8-155h px� 
�
-case statement is not full and has no default155*oasys2K
5/root/COD_Lab/Lab3/Shift_reg/PDU_src/PDU_src/Decode.v2default:default2
1822default:default8@Z8-155h px� 
�
-case statement is not full and has no default155*oasys2K
5/root/COD_Lab/Lab3/Shift_reg/PDU_src/PDU_src/Decode.v2default:default2
2112default:default8@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Decode2default:default2
 2default:default2
32default:default2
12default:default2K
5/root/COD_Lab/Lab3/Shift_reg/PDU_src/PDU_src/Decode.v2default:default2
82default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
Segment2default:default2
 2default:default2L
6/root/COD_Lab/Lab3/Shift_reg/PDU_src/PDU_src/Segment.v2default:default2
82default:default8@Z8-6157h px� 
b
%s
*synth2J
6	Parameter TIME_1MS bound to: 100000 - type: integer 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter SEG_NUM bound to: 8 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Segment2default:default2
 2default:default2
42default:default2
12default:default2L
6/root/COD_Lab/Lab3/Shift_reg/PDU_src/PDU_src/Segment.v2default:default2
82default:default8@Z8-6155h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
	uart_dout2default:default2
PDU2default:default2H
2/root/COD_Lab/Lab3/Shift_reg/PDU_src/PDU_src/PDU.v2default:default2
222default:default8@Z8-3848h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
PDU2default:default2
 2default:default2
52default:default2
12default:default2H
2/root/COD_Lab/Lab3/Shift_reg/PDU_src/PDU_src/PDU.v2default:default2
82default:default8@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
42default:default2
hex2default:default2
322default:default2
PDU2default:default2H
2/root/COD_Lab/Lab3/Shift_reg/PDU_src/PDU_src/Top.v2default:default2
502default:default8@Z8-689h px� 
�
synthesizing module '%s'%s4497*oasys2
	Shift_reg2default:default2
 2default:default2N
8/root/COD_Lab/Lab3/Shift_reg/PDU_src/PDU_src/Shift_reg.v2default:default2
32default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	Shift_reg2default:default2
 2default:default2
62default:default2
12default:default2N
8/root/COD_Lab/Lab3/Shift_reg/PDU_src/PDU_src/Shift_reg.v2default:default2
32default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Top2default:default2
 2default:default2
72default:default2
12default:default2H
2/root/COD_Lab/Lab3/Shift_reg/PDU_src/PDU_src/Top.v2default:default2
72default:default8@Z8-6155h px� 
{
!design %s has unconnected port %s3331*oasys2
PDU2default:default2
	uart_dout2default:defaultZ8-3331h px� 
�
%s*synth2�
�Finished RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:07 . Memory (MB): peak = 1735.562 ; gain = 206.469 ; free physical = 4138 ; free virtual = 7207
2default:defaulth px� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:06 ; elapsed = 00:00:08 . Memory (MB): peak = 1741.500 ; gain = 212.406 ; free physical = 4136 ; free virtual = 7206
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:06 ; elapsed = 00:00:08 . Memory (MB): peak = 1741.500 ; gain = 212.406 ; free physical = 4136 ; free virtual = 7205
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2R
</root/COD_Lab/Lab3/Shift_reg/PDU_src/PDU_src/constraints.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2R
</root/COD_Lab/Lab3/Shift_reg/PDU_src/PDU_src/constraints.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2P
</root/COD_Lab/Lab3/Shift_reg/PDU_src/PDU_src/constraints.xdc2default:default2)
.Xil/Top_propImpl.xdc2default:defaultZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1903.1882default:default2
0.0002default:default2
40462default:default2
71152default:defaultZ17-722h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2
00:00:00.012default:default2
1903.1882default:default2
0.0002default:default2
40462default:default2
71152default:defaultZ17-722h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Constraint Validation : Time (s): cpu = 00:00:13 ; elapsed = 00:00:17 . Memory (MB): peak = 1903.188 ; gain = 374.094 ; free physical = 4112 ; free virtual = 7182
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Loading part: xc7a100tcsg324-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:13 ; elapsed = 00:00:17 . Memory (MB): peak = 1903.188 ; gain = 374.094 ; free physical = 4112 ; free virtual = 7182
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:13 ; elapsed = 00:00:17 . Memory (MB): peak = 1903.188 ; gain = 374.094 ; free physical = 4112 ; free virtual = 7181
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2%
current_state_reg2default:default2
Decode2default:defaultZ8-802h px� 
t
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
dout2default:defaultZ8-5546h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                    WAIT |                  000000000000001 |                      00000000000
2default:defaulth p
x
� 
�
%s
*synth2s
_                   SET_1 |                  000000000000010 |                      00000001010
2default:defaulth p
x
� 
�
%s
*synth2s
_                   SET_2 |                  000000000000100 |                      00000001011
2default:defaulth p
x
� 
�
%s
*synth2s
_                   SET_3 |                  000000000001000 |                      00000001100
2default:defaulth p
x
� 
�
%s
*synth2s
_                     SET |                  000000000010000 |                      00000001101
2default:defaulth p
x
� 
�
%s
*synth2s
_                SET_DONE |                  000000000100000 |                      00000001110
2default:defaulth p
x
� 
�
%s
*synth2s
_                   ADD_1 |                  000000001000000 |                      00000010100
2default:defaulth p
x
� 
�
%s
*synth2s
_                   ADD_2 |                  000000010000000 |                      00000010101
2default:defaulth p
x
� 
�
%s
*synth2s
_                   ADD_3 |                  000000100000000 |                      00000010110
2default:defaulth p
x
� 
�
%s
*synth2s
_                     ADD |                  000001000000000 |                      00000010111
2default:defaulth p
x
� 
�
%s
*synth2s
_                ADD_DONE |                  000010000000000 |                      00000011000
2default:defaulth p
x
� 
�
%s
*synth2s
_                   DEL_1 |                  000100000000000 |                      00000011110
2default:defaulth p
x
� 
�
%s
*synth2s
_                   DEL_2 |                  001000000000000 |                      00000011111
2default:defaulth p
x
� 
�
%s
*synth2s
_                     DEL |                  010000000000000 |                      00000100001
2default:defaulth p
x
� 
�
%s
*synth2s
_                DEL_DONE |                  100000000000000 |                      00000100010
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2%
current_state_reg2default:default2
one-hot2default:default2
Decode2default:defaultZ8-3354h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:14 ; elapsed = 00:00:18 . Memory (MB): peak = 1903.188 ; gain = 374.094 ; free physical = 4106 ; free virtual = 7176
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     10 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 6     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               11 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               10 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 11    
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  17 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  15 Input     15 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     15 Bit        Muxes := 10    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  16 Input     11 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     10 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      6 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 5     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   6 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   9 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  18 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   6 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 16    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   8 Input      1 Bit        Muxes := 8     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  15 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  17 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
� 
<
%s
*synth2$
Module Receive 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     10 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               10 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 10    
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     10 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 8     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   8 Input      1 Bit        Muxes := 8     
2default:defaulth p
x
� 
8
%s
*synth2 
Module Ded 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 6     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 3     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   6 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   9 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   6 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
;
%s
*synth2#
Module Decode 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               11 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  17 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  15 Input     15 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     15 Bit        Muxes := 10    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  16 Input     11 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      6 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  18 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 5     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  15 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  17 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
<
%s
*synth2$
Module Segment 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
Module PDU 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
>
%s
*synth2&
Module Shift_reg 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
]
%s
*synth2E
1Warning: Parallel synthesis criteria is not met 
2default:defaulth p
x
� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
pdu/decoder/dout2default:defaultZ8-5546h px� 
�
+design %s has port %s driven by constant %s3447*oasys2
Top2default:default2
led[7]2default:default2
12default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2
Top2default:default2
led[6]2default:default2
12default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2
Top2default:default2
led[5]2default:default2
12default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2
Top2default:default2
led[4]2default:default2
12default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2
Top2default:default2
led[3]2default:default2
12default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2
Top2default:default2
led[2]2default:default2
12default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2
Top2default:default2
led[1]2default:default2
12default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2
Top2default:default2
led[0]2default:default2
12default:defaultZ8-3917h px� 
{
!design %s has unconnected port %s3331*oasys2
Top2default:default2
	uart_dout2default:defaultZ8-3331h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys25
!pdu/decoder/current_state_reg[10]2default:default2
FDCE2default:default24
 pdu/decoder/current_state_reg[6]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys24
 pdu/decoder/current_state_reg[9]2default:default2
FDCE2default:default24
 pdu/decoder/current_state_reg[6]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys24
 pdu/decoder/current_state_reg[8]2default:default2
FDCE2default:default24
 pdu/decoder/current_state_reg[6]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys24
 pdu/decoder/current_state_reg[7]2default:default2
FDCE2default:default24
 pdu/decoder/current_state_reg[6]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default26
"\pdu/decoder/current_state_reg[6] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys20
i_30/pdu/seg/cnt_1ms_reg[22]2default:default2
FDCE2default:default20
i_30/pdu/seg/cnt_1ms_reg[18]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys20
i_30/pdu/seg/cnt_1ms_reg[19]2default:default2
FDCE2default:default20
i_30/pdu/seg/cnt_1ms_reg[18]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys20
i_30/pdu/seg/cnt_1ms_reg[21]2default:default2
FDCE2default:default20
i_30/pdu/seg/cnt_1ms_reg[18]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys20
i_30/pdu/seg/cnt_1ms_reg[20]2default:default2
FDCE2default:default20
i_30/pdu/seg/cnt_1ms_reg[18]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys20
i_30/pdu/seg/cnt_1ms_reg[18]2default:default2
FDCE2default:default20
i_30/pdu/seg/cnt_1ms_reg[23]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys20
i_30/pdu/seg/cnt_1ms_reg[25]2default:default2
FDCE2default:default20
i_30/pdu/seg/cnt_1ms_reg[23]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys20
i_30/pdu/seg/cnt_1ms_reg[24]2default:default2
FDCE2default:default20
i_30/pdu/seg/cnt_1ms_reg[23]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default22
i_30/\pdu/seg/cnt_1ms_reg[23] 2default:defaultZ8-3333h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:16 ; elapsed = 00:00:21 . Memory (MB): peak = 1903.188 ; gain = 374.094 ; free physical = 4083 ; free virtual = 7155
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:24 ; elapsed = 00:00:29 . Memory (MB): peak = 1903.188 ; gain = 374.094 ; free physical = 3970 ; free virtual = 7043
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Timing Optimization : Time (s): cpu = 00:00:24 ; elapsed = 00:00:29 . Memory (MB): peak = 1903.188 ; gain = 374.094 ; free physical = 3971 ; free virtual = 7043
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Technology Mapping : Time (s): cpu = 00:00:24 ; elapsed = 00:00:29 . Memory (MB): peak = 1903.188 ; gain = 374.094 ; free physical = 3969 ; free virtual = 7042
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished IO Insertion : Time (s): cpu = 00:00:26 ; elapsed = 00:00:31 . Memory (MB): peak = 1903.188 ; gain = 374.094 ; free physical = 3969 ; free virtual = 7041
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:26 ; elapsed = 00:00:31 . Memory (MB): peak = 1903.188 ; gain = 374.094 ; free physical = 3969 ; free virtual = 7041
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:26 ; elapsed = 00:00:31 . Memory (MB): peak = 1903.188 ; gain = 374.094 ; free physical = 3971 ; free virtual = 7043
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:26 ; elapsed = 00:00:31 . Memory (MB): peak = 1903.188 ; gain = 374.094 ; free physical = 3971 ; free virtual = 7043
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:26 ; elapsed = 00:00:31 . Memory (MB): peak = 1903.188 ; gain = 374.094 ; free physical = 3971 ; free virtual = 7043
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:26 ; elapsed = 00:00:31 . Memory (MB): peak = 1903.188 ; gain = 374.094 ; free physical = 3970 ; free virtual = 7043
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
D
%s*synth2,
|1     |BUFG   |     1|
2default:defaulth px� 
D
%s*synth2,
|2     |CARRY4 |     5|
2default:defaulth px� 
D
%s*synth2,
|3     |LUT2   |    54|
2default:defaulth px� 
D
%s*synth2,
|4     |LUT3   |    53|
2default:defaulth px� 
D
%s*synth2,
|5     |LUT4   |    25|
2default:defaulth px� 
D
%s*synth2,
|6     |LUT5   |    51|
2default:defaulth px� 
D
%s*synth2,
|7     |LUT6   |    69|
2default:defaulth px� 
D
%s*synth2,
|8     |MUXF7  |     4|
2default:defaulth px� 
D
%s*synth2,
|9     |FDCE   |   116|
2default:defaulth px� 
D
%s*synth2,
|10    |FDPE   |    23|
2default:defaulth px� 
D
%s*synth2,
|11    |FDRE   |    40|
2default:defaulth px� 
D
%s*synth2,
|12    |LDC    |     6|
2default:defaulth px� 
D
%s*synth2,
|13    |IBUF   |    11|
2default:defaulth px� 
D
%s*synth2,
|14    |OBUF   |    15|
2default:defaulth px� 
D
%s*synth2,
|15    |OBUFT  |     1|
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
� 
T
%s
*synth2<
(+------+------------+----------+------+
2default:defaulth p
x
� 
T
%s
*synth2<
(|      |Instance    |Module    |Cells |
2default:defaulth p
x
� 
T
%s
*synth2<
(+------+------------+----------+------+
2default:defaulth p
x
� 
T
%s
*synth2<
(|1     |top         |          |   474|
2default:defaulth p
x
� 
T
%s
*synth2<
(|2     |  pdu       |PDU       |   401|
2default:defaulth p
x
� 
T
%s
*synth2<
(|3     |    decoder |Decode    |   160|
2default:defaulth p
x
� 
T
%s
*synth2<
(|4     |    my_ded  |Ded       |    86|
2default:defaulth p
x
� 
T
%s
*synth2<
(|5     |    rcv     |Receive   |   100|
2default:defaulth p
x
� 
T
%s
*synth2<
(|6     |    seg     |Segment   |    55|
2default:defaulth p
x
� 
T
%s
*synth2<
(|7     |  sreg      |Shift_reg |    45|
2default:defaulth p
x
� 
T
%s
*synth2<
(+------+------------+----------+------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:26 ; elapsed = 00:00:31 . Memory (MB): peak = 1903.188 ; gain = 374.094 ; free physical = 3970 ; free virtual = 7043
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 9 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:24 ; elapsed = 00:00:28 . Memory (MB): peak = 1903.188 ; gain = 212.406 ; free physical = 4022 ; free virtual = 7095
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:26 ; elapsed = 00:00:31 . Memory (MB): peak = 1903.188 ; gain = 374.094 ; free physical = 4022 ; free virtual = 7095
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
152default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1909.1252default:default2
0.0002default:default2
39702default:default2
70422default:defaultZ17-722h px� 
�
!Unisim Transformation Summary:
%s111*project2Z
F  A total of 6 instances were transformed.
  LDC => LDCE: 6 instances
2default:defaultZ1-111h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
482default:default2
152default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
synth_design: 2default:default2
00:00:332default:default2
00:00:382default:default2
1909.1252default:default2
531.2892default:default2
40692default:default2
71412default:defaultZ17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1909.1252default:default2
0.0002default:default2
40692default:default2
71412default:defaultZ17-722h px� 
K
"No constraints selected for write.1103*constraintsZ18-5210h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2O
;/root/COD_Lab/Lab3/Shift_reg/Shift_reg.runs/synth_1/Top.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2p
\Executing : report_utilization -file Top_utilization_synth.rpt -pb Top_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Wed Apr 19 17:47:57 20232default:defaultZ17-206h px� 


End Record