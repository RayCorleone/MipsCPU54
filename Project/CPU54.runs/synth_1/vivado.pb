
?
scannot add Board Part %s available at %s as part %s specified in board_part file is either invalid or not available5*board28
$digilentinc.com:arty-s7-25:part0:1.02default:default2\
HD:/Xilinx/Vivado/2016.2/data/boards/board_files/arty-s7-25/E.0/board.xml2default:default2#
xc7s25csga324-12default:defaultZ49-26h px? 
?
scannot add Board Part %s available at %s as part %s specified in board_part file is either invalid or not available5*board28
$digilentinc.com:arty-s7-50:part0:1.02default:default2\
HD:/Xilinx/Vivado/2016.2/data/boards/board_files/arty-s7-50/B.0/board.xml2default:default2#
xc7s50csga324-12default:defaultZ49-26h px? 
?
scannot add Board Part %s available at %s as part %s specified in board_part file is either invalid or not available5*board28
$digilentinc.com:cmod-s7-25:part0:1.02default:default2\
HD:/Xilinx/Vivado/2016.2/data/boards/board_files/cmod-s7-25/B.0/board.xml2default:default2#
xc7s25csga225-12default:defaultZ49-26h px? 
?
scannot add Board Part %s available at %s as part %s specified in board_part file is either invalid or not available5*board29
%digilentinc.com:cora-z7-07s:part0:1.02default:default2]
ID:/Xilinx/Vivado/2016.2/data/boards/board_files/cora-z7-07s/B.0/board.xml2default:default2$
xc7z007sclg400-12default:defaultZ49-26h px? 
?
scannot add Board Part %s available at %s as part %s specified in board_part file is either invalid or not available5*board25
!digilentinc.com:gzu_3eg:part0:1.02default:default2`
LD:/Xilinx/Vivado/2016.2/data/boards/board_files/genesys-zu-3eg/B.0/board.xml2default:default2'
xczu3eg-sfvc784-1-e2default:defaultZ49-26h px? 
~
Command: %s
53*	vivadotcl2M
9synth_design -top cpu_onboard_test -part xc7a100tcsg324-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-349h px? 
?
YOverwrite of existing file isn't enabled.  Please specify -force to overwrite file  [%s]
322*filemgmt2c
OD:/Ray/Vivado/CPU54/CPU54.runs/synth_1/.Xil/Vivado-10516-RayBeast/imem/imem.dcp2default:defaultZ56-147h px? 
?
%s*synth2?
xStarting RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:08 . Memory (MB): peak = 331.434 ; gain = 124.355
2default:defaulth px? 
?
synthesizing module '%s'638*oasys2$
cpu_onboard_test2default:default2P
:D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/cpu_onboard.v2default:default2
42default:default8@Z8-638h px? 
?
synthesizing module '%s'638*oasys2
divider2default:default2L
6D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/divider.v2default:default2
32default:default8@Z8-638h px? 
]
%s
*synth2E
1	Parameter num bound to: 100000 - type: integer 
2default:defaulth p
x
? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
divider2default:default2
12default:default2
12default:default2L
6D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/divider.v2default:default2
32default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2+
divider__parameterized02default:default2L
6D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/divider.v2default:default2
32default:default8@Z8-638h px? 
X
%s
*synth2@
,	Parameter num bound to: 4 - type: integer 
2default:defaulth p
x
? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2+
divider__parameterized02default:default2
12default:default2
12default:default2L
6D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/divider.v2default:default2
32default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2$
sccomp_dataflow22default:default2U
?D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/sccomp_dataflow2.v2default:default2
32default:default8@Z8-638h px? 
?
synthesizing module '%s'638*oasys2
imem2default:default2l
VD:/Ray/Vivado/CPU54/CPU54.runs/synth_1/.Xil/Vivado-10516-RayBeast/realtime/imem_stub.v2default:default2
62default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
imem2default:default2
22default:default2
12default:default2l
VD:/Ray/Vivado/CPU54/CPU54.runs/synth_1/.Xil/Vivado-10516-RayBeast/realtime/imem_stub.v2default:default2
62default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2
cpu2default:default2H
2D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/cpu.v2default:default2
82default:default8@Z8-638h px? 
?
synthesizing module '%s'638*oasys2
CLZ2default:default2H
2D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/clz.v2default:default2
32default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
CLZ2default:default2
32default:default2
12default:default2H
2D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/clz.v2default:default2
32default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2
MULT2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
42default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
MULT2default:default2
42default:default2
12default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
42default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2
MULTU2default:default2J
4D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/multu.v2default:default2
42default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
MULTU2default:default2
52default:default2
12default:default2J
4D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/multu.v2default:default2
42default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2
ALU2default:default2H
2D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/alu.v2default:default2
32default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
ALU2default:default2
62default:default2
12default:default2H
2D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/alu.v2default:default2
32default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2
DIV2default:default2H
2D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/div.v2default:default2
32default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
DIV2default:default2
72default:default2
12default:default2H
2D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/div.v2default:default2
32default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2
DIVU2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/divu.v2default:default2
32default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
DIVU2default:default2
82default:default2
12default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/divu.v2default:default2
32default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2
control2default:default2L
6D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/control.v2default:default2
32default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
control2default:default2
92default:default2
12default:default2L
6D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/control.v2default:default2
32default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2
regfile2default:default2L
6D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/regfile.v2default:default2
32default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
regfile2default:default2
102default:default2
12default:default2L
6D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/regfile.v2default:default2
32default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2
CP02default:default2H
2D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/cp0.v2default:default2
32default:default8@Z8-638h px? 
S
%s
*synth2;
'	Parameter istatus bound to: 5'b01100 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter icause bound to: 5'b01101 
2default:defaulth p
x
? 
P
%s
*synth28
$	Parameter iepc bound to: 5'b01110 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter SYSCALL bound to: 5'b01000 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter BREAK bound to: 5'b01001 
2default:defaulth p
x
? 
O
%s
*synth27
#	Parameter TEQ bound to: 5'b01101 
2default:defaulth p
x
? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2#
cp0_reg_reg[31]2default:default2
CP02default:default2H
2D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/cp0.v2default:default2
222default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2#
cp0_reg_reg[30]2default:default2
CP02default:default2H
2D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/cp0.v2default:default2
222default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2#
cp0_reg_reg[29]2default:default2
CP02default:default2H
2D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/cp0.v2default:default2
222default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2#
cp0_reg_reg[28]2default:default2
CP02default:default2H
2D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/cp0.v2default:default2
222default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2#
cp0_reg_reg[27]2default:default2
CP02default:default2H
2D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/cp0.v2default:default2
222default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2#
cp0_reg_reg[26]2default:default2
CP02default:default2H
2D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/cp0.v2default:default2
222default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2#
cp0_reg_reg[25]2default:default2
CP02default:default2H
2D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/cp0.v2default:default2
222default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2#
cp0_reg_reg[24]2default:default2
CP02default:default2H
2D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/cp0.v2default:default2
222default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2#
cp0_reg_reg[23]2default:default2
CP02default:default2H
2D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/cp0.v2default:default2
222default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2#
cp0_reg_reg[22]2default:default2
CP02default:default2H
2D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/cp0.v2default:default2
222default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2#
cp0_reg_reg[21]2default:default2
CP02default:default2H
2D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/cp0.v2default:default2
222default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2#
cp0_reg_reg[20]2default:default2
CP02default:default2H
2D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/cp0.v2default:default2
222default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2#
cp0_reg_reg[19]2default:default2
CP02default:default2H
2D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/cp0.v2default:default2
222default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2#
cp0_reg_reg[18]2default:default2
CP02default:default2H
2D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/cp0.v2default:default2
222default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2#
cp0_reg_reg[17]2default:default2
CP02default:default2H
2D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/cp0.v2default:default2
222default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2#
cp0_reg_reg[16]2default:default2
CP02default:default2H
2D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/cp0.v2default:default2
222default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2#
cp0_reg_reg[15]2default:default2
CP02default:default2H
2D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/cp0.v2default:default2
222default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2#
cp0_reg_reg[11]2default:default2
CP02default:default2H
2D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/cp0.v2default:default2
222default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2#
cp0_reg_reg[10]2default:default2
CP02default:default2H
2D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/cp0.v2default:default2
222default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2"
cp0_reg_reg[9]2default:default2
CP02default:default2H
2D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/cp0.v2default:default2
222default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2"
cp0_reg_reg[8]2default:default2
CP02default:default2H
2D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/cp0.v2default:default2
222default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2"
cp0_reg_reg[7]2default:default2
CP02default:default2H
2D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/cp0.v2default:default2
222default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2"
cp0_reg_reg[6]2default:default2
CP02default:default2H
2D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/cp0.v2default:default2
222default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2"
cp0_reg_reg[5]2default:default2
CP02default:default2H
2D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/cp0.v2default:default2
222default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2"
cp0_reg_reg[4]2default:default2
CP02default:default2H
2D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/cp0.v2default:default2
222default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2"
cp0_reg_reg[3]2default:default2
CP02default:default2H
2D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/cp0.v2default:default2
222default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2"
cp0_reg_reg[2]2default:default2
CP02default:default2H
2D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/cp0.v2default:default2
222default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2"
cp0_reg_reg[1]2default:default2
CP02default:default2H
2D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/cp0.v2default:default2
222default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2"
cp0_reg_reg[0]2default:default2
CP02default:default2H
2D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/cp0.v2default:default2
222default:default8@Z8-5788h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
CP02default:default2
112default:default2
12default:default2H
2D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/cp0.v2default:default2
32default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2
add2default:default2H
2D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/add.v2default:default2
112default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
add2default:default2
122default:default2
12default:default2H
2D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/add.v2default:default2
112default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2
NPC2default:default2H
2D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/add.v2default:default2
32default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
NPC2default:default2
132default:default2
12default:default2H
2D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/add.v2default:default2
32default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2
ext52default:default2H
2D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/ext.v2default:default2
32default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
ext52default:default2
142default:default2
12default:default2H
2D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/ext.v2default:default2
32default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2
ext162default:default2H
2D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/ext.v2default:default2
102default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
ext162default:default2
152default:default2
12default:default2H
2D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/ext.v2default:default2
102default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2
ext182default:default2H
2D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/ext.v2default:default2
182default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
ext182default:default2
162default:default2
12default:default2H
2D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/ext.v2default:default2
182default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2
HILO2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/hilo.v2default:default2
32default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
HILO2default:default2
172default:default2
12default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/hilo.v2default:default2
32default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2
PC2default:default2G
1D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/pc.v2default:default2
32default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
PC2default:default2
182default:default2
12default:default2G
1D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/pc.v2default:default2
32default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2
CNW2default:default2H
2D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/cnw.v2default:default2
32default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
CNW2default:default2
192default:default2
12default:default2H
2D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/cnw.v2default:default2
32default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
cpu2default:default2
202default:default2
12default:default2H
2D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/cpu.v2default:default2
82default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2
dmem2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/dmem.v2default:default2
32default:default8@Z8-638h px? 
?
-case statement is not full and has no default155*oasys2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/dmem.v2default:default2
292default:default8@Z8-155h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
dmem2default:default2
212default:default2
12default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/dmem.v2default:default2
32default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2$
sccomp_dataflow22default:default2
222default:default2
12default:default2U
?D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/sccomp_dataflow2.v2default:default2
32default:default8@Z8-256h px? 
?
!label required on module instance387*oasys2P
:D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/cpu_onboard.v2default:default2
212default:default8@Z8-387h px? 
?
synthesizing module '%s'638*oasys2
seg7x162default:default2L
6D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/seg7x16.v2default:default2
242default:default8@Z8-638h px? 
?
-case statement is not full and has no default155*oasys2L
6D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/seg7x16.v2default:default2
872default:default8@Z8-155h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
seg7x162default:default2
232default:default2
12default:default2L
6D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/seg7x16.v2default:default2
242default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2$
cpu_onboard_test2default:default2
242default:default2
12default:default2P
:D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/cpu_onboard.v2default:default2
42default:default8@Z8-256h px? 
?
%s*synth2?
xFinished RTL Elaboration : Time (s): cpu = 00:00:14 ; elapsed = 00:00:17 . Memory (MB): peak = 648.469 ; gain = 441.391
2default:defaulth px? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:16 ; elapsed = 00:00:19 . Memory (MB): peak = 648.469 ; gain = 441.391
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
YOverwrite of existing file isn't enabled.  Please specify -force to overwrite file  [%s]
322*filemgmt2c
OD:/Ray/Vivado/CPU54/CPU54.runs/synth_1/.Xil/Vivado-10516-RayBeast/imem/imem.dcp2default:defaultZ56-147h px? 
?
PCould not resolve non-primitive black box cell '%s' instantiated as '%s' [%s:%s]295*project2
imem2default:default2,
sccomp_dataflow_1/imem_12default:default2U
?D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/sccomp_dataflow2.v2default:default2
192default:default8Z1-486h px? 
W
Loading part %s157*device2$
xc7a100tcsg324-12default:defaultZ21-403h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2m
YD:/Ray/Vivado/CPU54/CPU54.runs/synth_1/.Xil/Vivado-10516-RayBeast/dcp/imem_in_context.xdc2default:default2,
sccomp_dataflow_1/imem_12default:defaultZ20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2m
YD:/Ray/Vivado/CPU54/CPU54.runs/synth_1/.Xil/Vivado-10516-RayBeast/dcp/imem_in_context.xdc2default:default2,
sccomp_dataflow_1/imem_12default:defaultZ20-847h px? 
?
Parsing XDC File [%s]
179*designutils2T
@D:/Ray/Vivado/CPU54/CPU54.srcs/constrs_1/new/cpu_onboard_xdc.xdc2default:defaultZ20-179h px? 
?
No ports matched '%s'.
584*	planAhead2
sw[15]2default:default2V
@D:/Ray/Vivado/CPU54/CPU54.srcs/constrs_1/new/cpu_onboard_xdc.xdc2default:default2
232default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[14]2default:default2V
@D:/Ray/Vivado/CPU54/CPU54.srcs/constrs_1/new/cpu_onboard_xdc.xdc2default:default2
242default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[13]2default:default2V
@D:/Ray/Vivado/CPU54/CPU54.srcs/constrs_1/new/cpu_onboard_xdc.xdc2default:default2
252default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[12]2default:default2V
@D:/Ray/Vivado/CPU54/CPU54.srcs/constrs_1/new/cpu_onboard_xdc.xdc2default:default2
262default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[11]2default:default2V
@D:/Ray/Vivado/CPU54/CPU54.srcs/constrs_1/new/cpu_onboard_xdc.xdc2default:default2
272default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[10]2default:default2V
@D:/Ray/Vivado/CPU54/CPU54.srcs/constrs_1/new/cpu_onboard_xdc.xdc2default:default2
282default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[9]2default:default2V
@D:/Ray/Vivado/CPU54/CPU54.srcs/constrs_1/new/cpu_onboard_xdc.xdc2default:default2
292default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[8]2default:default2V
@D:/Ray/Vivado/CPU54/CPU54.srcs/constrs_1/new/cpu_onboard_xdc.xdc2default:default2
302default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[7]2default:default2V
@D:/Ray/Vivado/CPU54/CPU54.srcs/constrs_1/new/cpu_onboard_xdc.xdc2default:default2
312default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[6]2default:default2V
@D:/Ray/Vivado/CPU54/CPU54.srcs/constrs_1/new/cpu_onboard_xdc.xdc2default:default2
322default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[5]2default:default2V
@D:/Ray/Vivado/CPU54/CPU54.srcs/constrs_1/new/cpu_onboard_xdc.xdc2default:default2
332default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[4]2default:default2V
@D:/Ray/Vivado/CPU54/CPU54.srcs/constrs_1/new/cpu_onboard_xdc.xdc2default:default2
342default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[3]2default:default2V
@D:/Ray/Vivado/CPU54/CPU54.srcs/constrs_1/new/cpu_onboard_xdc.xdc2default:default2
352default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[2]2default:default2V
@D:/Ray/Vivado/CPU54/CPU54.srcs/constrs_1/new/cpu_onboard_xdc.xdc2default:default2
362default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[1]2default:default2V
@D:/Ray/Vivado/CPU54/CPU54.srcs/constrs_1/new/cpu_onboard_xdc.xdc2default:default2
372default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[0]2default:default2V
@D:/Ray/Vivado/CPU54/CPU54.srcs/constrs_1/new/cpu_onboard_xdc.xdc2default:default2
382default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[15]2default:default2V
@D:/Ray/Vivado/CPU54/CPU54.srcs/constrs_1/new/cpu_onboard_xdc.xdc2default:default2
402default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[14]2default:default2V
@D:/Ray/Vivado/CPU54/CPU54.srcs/constrs_1/new/cpu_onboard_xdc.xdc2default:default2
412default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[13]2default:default2V
@D:/Ray/Vivado/CPU54/CPU54.srcs/constrs_1/new/cpu_onboard_xdc.xdc2default:default2
422default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[12]2default:default2V
@D:/Ray/Vivado/CPU54/CPU54.srcs/constrs_1/new/cpu_onboard_xdc.xdc2default:default2
432default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[11]2default:default2V
@D:/Ray/Vivado/CPU54/CPU54.srcs/constrs_1/new/cpu_onboard_xdc.xdc2default:default2
442default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[10]2default:default2V
@D:/Ray/Vivado/CPU54/CPU54.srcs/constrs_1/new/cpu_onboard_xdc.xdc2default:default2
452default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[9]2default:default2V
@D:/Ray/Vivado/CPU54/CPU54.srcs/constrs_1/new/cpu_onboard_xdc.xdc2default:default2
462default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[8]2default:default2V
@D:/Ray/Vivado/CPU54/CPU54.srcs/constrs_1/new/cpu_onboard_xdc.xdc2default:default2
472default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[7]2default:default2V
@D:/Ray/Vivado/CPU54/CPU54.srcs/constrs_1/new/cpu_onboard_xdc.xdc2default:default2
482default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[6]2default:default2V
@D:/Ray/Vivado/CPU54/CPU54.srcs/constrs_1/new/cpu_onboard_xdc.xdc2default:default2
492default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[5]2default:default2V
@D:/Ray/Vivado/CPU54/CPU54.srcs/constrs_1/new/cpu_onboard_xdc.xdc2default:default2
502default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[4]2default:default2V
@D:/Ray/Vivado/CPU54/CPU54.srcs/constrs_1/new/cpu_onboard_xdc.xdc2default:default2
512default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[3]2default:default2V
@D:/Ray/Vivado/CPU54/CPU54.srcs/constrs_1/new/cpu_onboard_xdc.xdc2default:default2
522default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[2]2default:default2V
@D:/Ray/Vivado/CPU54/CPU54.srcs/constrs_1/new/cpu_onboard_xdc.xdc2default:default2
532default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[1]2default:default2V
@D:/Ray/Vivado/CPU54/CPU54.srcs/constrs_1/new/cpu_onboard_xdc.xdc2default:default2
542default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[0]2default:default2V
@D:/Ray/Vivado/CPU54/CPU54.srcs/constrs_1/new/cpu_onboard_xdc.xdc2default:default2
552default:default8@Z12-584h px?
?
Finished Parsing XDC File [%s]
178*designutils2T
@D:/Ray/Vivado/CPU54/CPU54.srcs/constrs_1/new/cpu_onboard_xdc.xdc2default:defaultZ20-178h px? 
?
?One or more constraints failed evaluation while reading constraint file [%s] and the design contains unresolved black boxes. These constraints will be read post-synthesis (as long as their source constraint file is marked as used_in_implementation) and should be applied correctly then. You should review the constraints listed in the file [%s] and check the run log file to verify that these constraints were correctly applied.301*project2T
@D:/Ray/Vivado/CPU54/CPU54.srcs/constrs_1/new/cpu_onboard_xdc.xdc2default:default26
".Xil/cpu_onboard_test_propImpl.xdc2default:defaultZ1-498h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2T
@D:/Ray/Vivado/CPU54/CPU54.srcs/constrs_1/new/cpu_onboard_xdc.xdc2default:default26
".Xil/cpu_onboard_test_propImpl.xdc2default:defaultZ1-236h px? 
?
Parsing XDC File [%s]
179*designutils2Y
ED:/Ray/Vivado/CPU54/CPU54.srcs/constrs_1/new/cpu_onboard_test_xdc.xdc2default:defaultZ20-179h px? 
?
nA clock with name '%s' already exists, creating a clock with the same name will overwrite the previous clock.
576*constraints2
clk_pin2default:default2[
ED:/Ray/Vivado/CPU54/CPU54.srcs/constrs_1/new/cpu_onboard_test_xdc.xdc2default:default2
482default:default8@Z18-619h px?
?
Finished Parsing XDC File [%s]
178*designutils2Y
ED:/Ray/Vivado/CPU54/CPU54.srcs/constrs_1/new/cpu_onboard_test_xdc.xdc2default:defaultZ20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2Y
ED:/Ray/Vivado/CPU54/CPU54.srcs/constrs_1/new/cpu_onboard_test_xdc.xdc2default:default26
".Xil/cpu_onboard_test_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0572default:default2
1032.4802default:default2
0.0002default:defaultZ17-268h px? 
?
YOverwrite of existing file isn't enabled.  Please specify -force to overwrite file  [%s]
322*filemgmt2c
OD:/Ray/Vivado/CPU54/CPU54.runs/synth_1/.Xil/Vivado-10516-RayBeast/imem/imem.dcp2default:defaultZ56-147h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
Finished Constraint Validation : Time (s): cpu = 00:00:34 ; elapsed = 00:00:39 . Memory (MB): peak = 1032.480 ; gain = 825.402
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4031*oasys2
22default:defaultZ8-5580h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Loading part: xc7a100tcsg324-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:34 ; elapsed = 00:00:39 . Memory (MB): peak = 1032.480 ; gain = 825.402
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:35 ; elapsed = 00:00:39 . Memory (MB): peak = 1032.480 ; gain = 825.402
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2?
?INFO: Vivado Synthesis caught shared memory exception 'ϵͳ?Ҳ???ָ?????ļ???'. Continuing without using shared memory (or continuing without helper parallel flow)
2default:defaulth p
x
? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
O_CLK2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
i2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
O_CLK2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
i2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
}HDL ADVISOR - The operator resource <%s> is shared. To prevent sharing consider applying a KEEP on the output of the operator4231*oasys2
adder2default:default2H
2D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/alu.v2default:default2
142default:default8@Z8-5818h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
zero2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
count2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
srt2default:default2
322default:default2
252default:defaultZ8-5545h px? 
t
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
busy2default:defaultZ8-5546h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
count2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
srt2default:default2
322default:default2
252default:defaultZ8-5545h px? 
s
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
srt2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
array_reg_reg[31]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
array_reg_reg[30]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
array_reg_reg[29]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
array_reg_reg[28]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
array_reg_reg[27]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
array_reg_reg[26]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
array_reg_reg[25]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
array_reg_reg[24]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
array_reg_reg[23]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
array_reg_reg[22]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
array_reg_reg[21]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
array_reg_reg[20]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
array_reg_reg[19]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
array_reg_reg[18]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
array_reg_reg[17]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
array_reg_reg[16]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
array_reg_reg[15]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
array_reg_reg[14]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
array_reg_reg[13]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
array_reg_reg[12]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
array_reg_reg[11]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
array_reg_reg[10]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
array_reg_reg[9]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
array_reg_reg[8]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
array_reg_reg[7]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
array_reg_reg[6]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
array_reg_reg[5]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
array_reg_reg[4]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
array_reg_reg[3]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
array_reg_reg[2]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
array_reg_reg[1]2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
array_reg_reg[0]2default:defaultZ8-5546h px? 

8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2#
cp0_reg_reg[31]2default:defaultZ8-5546h px? 

8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2#
cp0_reg_reg[30]2default:defaultZ8-5546h px? 

8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2#
cp0_reg_reg[29]2default:defaultZ8-5546h px? 

8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2#
cp0_reg_reg[28]2default:defaultZ8-5546h px? 

8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2#
cp0_reg_reg[27]2default:defaultZ8-5546h px? 

8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2#
cp0_reg_reg[26]2default:defaultZ8-5546h px? 

8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2#
cp0_reg_reg[25]2default:defaultZ8-5546h px? 

8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2#
cp0_reg_reg[24]2default:defaultZ8-5546h px? 

8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2#
cp0_reg_reg[23]2default:defaultZ8-5546h px? 

8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2#
cp0_reg_reg[22]2default:defaultZ8-5546h px? 

8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2#
cp0_reg_reg[21]2default:defaultZ8-5546h px? 

8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2#
cp0_reg_reg[20]2default:defaultZ8-5546h px? 

8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2#
cp0_reg_reg[19]2default:defaultZ8-5546h px? 

8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2#
cp0_reg_reg[18]2default:defaultZ8-5546h px? 

8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2#
cp0_reg_reg[17]2default:defaultZ8-5546h px? 

8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2#
cp0_reg_reg[16]2default:defaultZ8-5546h px? 

8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2#
cp0_reg_reg[15]2default:defaultZ8-5546h px? 

8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2#
cp0_reg_reg[14]2default:defaultZ8-5546h px? 

8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2#
cp0_reg_reg[13]2default:defaultZ8-5546h px? 

8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2#
cp0_reg_reg[12]2default:defaultZ8-5546h px? 

8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2#
cp0_reg_reg[11]2default:defaultZ8-5546h px? 

8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2#
cp0_reg_reg[10]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
cp0_reg_reg[9]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
cp0_reg_reg[8]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
cp0_reg_reg[7]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
cp0_reg_reg[6]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
cp0_reg_reg[5]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
cp0_reg_reg[4]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
cp0_reg_reg[3]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
cp0_reg_reg[2]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
cp0_reg_reg[1]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
cp0_reg_reg[0]2default:defaultZ8-5546h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[551]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[551]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[551]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[550]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[550]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[550]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[549]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[549]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[549]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[548]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[548]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[548]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[547]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[547]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[547]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[546]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[546]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[546]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[545]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[545]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[545]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[544]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[544]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[544]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[543]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[543]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[543]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[542]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[542]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[542]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[541]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[541]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[541]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[540]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[540]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[540]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[539]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[539]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[539]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[538]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[538]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[538]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[537]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[537]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[537]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[536]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[536]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[536]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[535]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[535]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[535]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[534]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[534]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[534]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[533]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[533]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[533]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[532]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[532]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[532]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[531]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[531]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[531]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[530]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[530]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[530]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[529]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[529]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[529]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[528]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[528]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[528]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[527]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[527]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[527]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[526]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[526]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[526]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[525]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[525]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[525]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[524]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[524]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[524]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[523]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[523]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[523]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[522]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[522]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[522]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
memory_reg[521]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-55452default:default2
1002default:defaultZ17-14h px? 
w
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
o_seg_r2default:defaultZ8-5546h px? 
?
!inferring latch for variable '%s'327*oasys2

z_sign_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
452default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
temp_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
452default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
	flag5_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
502default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add16_31_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
672default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add00_15_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
672default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
	flag4_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
502default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add24_31_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
662default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add16_23_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
662default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add08_15_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
662default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add00_07_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
662default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
	flag3_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
502default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add28_31_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
652default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add24_27_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
652default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add20_23_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
652default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add16_19_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
652default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add12_15_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
642default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add08_11_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
642default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add04_07_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
642default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add00_03_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
642default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
	flag2_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
502default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add30_31_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
632default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add28_29_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
632default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add26_27_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
632default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add24_25_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
632default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add22_23_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
622default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add20_21_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
622default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add18_19_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
622default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add16_17_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
622default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add14_15_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
612default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add12_13_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
612default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add10_11_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
612default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add08_09_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
612default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add06_07_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
602default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add04_05_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
602default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add02_03_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
602default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add00_01_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
602default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
	flag1_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
502default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
stored31_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
582default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
stored30_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
582default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
stored29_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
582default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
stored28_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
582default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
stored27_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
572default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
stored26_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
572default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
stored25_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
572default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
stored24_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
572default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
stored23_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
562default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
stored22_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
562default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
stored21_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
562default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
stored20_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
562default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
stored19_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
552default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
stored18_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
552default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
stored17_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
552default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
stored16_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
552default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
stored15_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
542default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
stored14_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
542default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
stored13_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
542default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
stored12_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
542default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
stored11_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
532default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
stored10_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
532default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
stored09_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
532default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
stored08_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
532default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
stored07_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
522default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
stored06_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
522default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
stored05_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
522default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
stored04_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
522default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
stored03_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
512default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
stored02_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
512default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
stored01_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
512default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
stored00_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
512default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
flag_reg2default:default2I
3D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/mult.v2default:default2
722default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
temp_reg2default:default2J
4D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/multu.v2default:default2
342default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add16_31_reg2default:default2J
4D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/multu.v2default:default2
542default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add00_15_reg2default:default2J
4D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/multu.v2default:default2
542default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
	flag5_reg2default:default2J
4D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/multu.v2default:default2
372default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add24_31_reg2default:default2J
4D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/multu.v2default:default2
532default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add16_23_reg2default:default2J
4D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/multu.v2default:default2
532default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
	flag4_reg2default:default2J
4D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/multu.v2default:default2
372default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add08_15_reg2default:default2J
4D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/multu.v2default:default2
532default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add00_07_reg2default:default2J
4D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/multu.v2default:default2
532default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add28_31_reg2default:default2J
4D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/multu.v2default:default2
522default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add24_27_reg2default:default2J
4D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/multu.v2default:default2
522default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
	flag3_reg2default:default2J
4D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/multu.v2default:default2
372default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add20_23_reg2default:default2J
4D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/multu.v2default:default2
522default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add16_19_reg2default:default2J
4D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/multu.v2default:default2
522default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add12_15_reg2default:default2J
4D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/multu.v2default:default2
512default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add08_11_reg2default:default2J
4D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/multu.v2default:default2
512default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add04_07_reg2default:default2J
4D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/multu.v2default:default2
512default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add00_03_reg2default:default2J
4D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/multu.v2default:default2
512default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add30_31_reg2default:default2J
4D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/multu.v2default:default2
502default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add28_29_reg2default:default2J
4D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/multu.v2default:default2
502default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
	flag2_reg2default:default2J
4D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/multu.v2default:default2
372default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add26_27_reg2default:default2J
4D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/multu.v2default:default2
502default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add24_25_reg2default:default2J
4D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/multu.v2default:default2
502default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add22_23_reg2default:default2J
4D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/multu.v2default:default2
492default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add20_21_reg2default:default2J
4D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/multu.v2default:default2
492default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add18_19_reg2default:default2J
4D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/multu.v2default:default2
492default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add16_17_reg2default:default2J
4D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/multu.v2default:default2
492default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add14_15_reg2default:default2J
4D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/multu.v2default:default2
482default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add12_13_reg2default:default2J
4D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/multu.v2default:default2
482default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
add10_11_reg2default:default2J
4D:/Ray/Vivado/CPU54/CPU54.srcs/sources_1/new/multu.v2default:default2
482default:default8@Z8-327h px? 
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Synth 8-3272default:default2
1002default:defaultZ17-14h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:01:38 ; elapsed = 00:01:46 . Memory (MB): peak = 1230.594 ; gain = 1023.516
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 