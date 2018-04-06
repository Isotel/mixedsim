*version 8.0 3129569691
u 70
U? 4
R? 4
V? 3
? 4
I? 3
@libraries
@analysis
.AC 0 3 1
+0 101
+1 10
+2 100MEG
+3 V(RL:2)
+4 Vs
+5 10
.DC 0 0 0 2 1 1
+ 0 0 ILoad
+ 0 4 0
+ 0 5 50
+ 0 6 100m
.TRAN 1 0 0 0
+0 5us
+1 100us
+3 200n
@targets
@attributes
@translators
a 0 u 13 0 0 0 hln 100 TANGO=PCB
a 0 u 13 0 0 0 hln 100 SCICARDS=PCB
a 0 u 13 0 0 0 hln 100 PROTEL=PCB
a 0 u 13 0 0 0 hln 100 PCBOARDS=PCB
a 0 u 13 0 0 0 hln 100 PCAD=PCB
a 0 u 13 0 0 0 hln 100 PADS=PCB
a 0 u 13 0 0 0 hln 100 ORCAD=PCB
a 0 u 13 0 0 0 hln 100 EDIF=PCB
a 0 u 13 0 0 0 hln 100 CADSTAR=PCB
a 0 u 13 0 0 0 hln 100 PSPICE=PSPICE
a 0 u 13 0 0 0 hln 100 XILINX=XILINX
@setup
unconnectedPins 0
connectViaLabel 0
connectViaLocalLabels 0
NoStim4ExtIFPortsWarnings 1
AutoGenStim4ExtIFPorts 1
@index
pageloc 1 0 3105 
@status
e 0 100:09:10:15:29:26;971216966 e 
n 0 100:09:11:14:59:24;971301564 e 
s 0 100:09:11:14:59:30;971301570 e 
*page 1 0 1520 970 iB
@ports
port 9 AGND 430 170 h
port 10 AGND 440 360 h
port 11 AGND 280 340 h
port 63 AGND 100 170 h
@parts
part 5 R 440 350 v
a 0 u 13 0 3 -1 hln 100 VALUE=50k
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=RL
a 0 xp 9 0 25 0 hln 100 REFDES=RL
part 66 IPULSE 430 120 h
a 1 u 0 0 0 0 hcn 100 TD=20u
a 0 x 0:13 0 0 0 hln 100 PKGREF=ILoad
a 1 xp 9 0 -22 14 hcn 100 REFDES=ILoad
a 1 u 0 0 0 0 hcn 100 I1=0
a 1 u 0 0 0 0 hcn 100 TR=10n
a 1 u 0 0 0 0 hcn 100 TF=10n
a 1 u 0 0 0 0 hcn 100 PW=40u
a 1 u 0 0 0 0 hcn 100 PER=1m
a 1 u 0 0 0 0 hcn 100 I2=10
a 1 u 0 0 0 0 hcn 100 DC=10
a 1 u 0 0 0 0 hcn 100 AC=10
part 4 R 280 90 h
a 0 u 13 0 5 35 hln 100 VALUE=0.01
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
part 51 INA138 240 210 h
a 0 x 0:13 0 0 0 hln 100 PKGREF=U1
a 0 xp 9 0 0 0 hln 100 REFDES=U1
a 0 s 11 0 12 127 hln 100 PART=INA138
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=
part 7 VDC 100 120 h
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 x 0:13 0 0 0 hln 100 PKGREF=Vs
a 1 u 13 0 35 40 hcn 100 DC=12V
a 1 xp 9 0 32 9 hcn 100 REFDES=Vs
part 1 titleblk 1520 970 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=B
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 300 95 hrn 100 PAGENO=1
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
part 52 nodeMarker 440 310 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=1
@conn
w 29
a 0 up 0:33 0 0 0 hln 100 V=
s 440 350 440 360 28
a 0 up 33 0 442 355 hlt 100 V=
w 31
s 280 340 280 320 30
w 25
a 0 up 0:33 0 0 0 hln 100 V=
s 380 290 440 290 24
a 0 up 33 0 410 289 hct 100 V=
s 440 290 440 310 26
w 23
a 0 up 0:33 0 0 0 hln 100 V=
s 430 160 430 170 22
a 0 up 33 0 432 165 hlt 100 V=
w 45
a 0 up 0:33 0 0 0 hln 100 V=
s 320 160 320 140 44
s 320 140 330 140 46
s 320 90 330 90 18
s 430 90 430 120 20
s 330 90 430 90 50
a 0 up 33 0 380 89 hct 100 V=
s 330 140 330 90 48
w 62
a 0 up 0:33 0 0 0 hln 100 V=
s 100 170 100 160 61
a 0 up 33 0 102 165 hlt 100 V=
w 59
a 0 up 0:33 0 0 0 hln 100 V=
s 240 210 190 210 32
a 0 up 33 0 215 209 hct 100 V=
s 290 160 290 140 37
s 290 140 270 140 39
s 100 90 190 90 16
a 0 up 33 0 185 89 hct 100 V=
s 270 90 280 90 43
s 270 140 270 90 41
s 100 90 100 120 57
s 190 90 270 90 69
s 190 210 190 90 67
@junction
j 430 170
+ s 9
+ w 23
j 440 310
+ p 5 2
+ w 25
j 440 350
+ p 5 1
+ w 29
j 440 360
+ s 10
+ w 29
j 280 340
+ s 11
+ w 31
j 270 90
+ w 59
+ w 59
j 320 90
+ p 4 2
+ w 45
j 330 90
+ w 45
+ w 45
j 280 320
+ p 51 GND
+ w 31
j 240 210
+ p 51 Vs
+ w 59
j 320 160
+ p 51 -
+ w 45
j 380 290
+ p 51 OUT
+ w 25
j 440 310
+ p 52 pin1
+ p 5 2
j 440 310
+ p 52 pin1
+ w 25
j 100 170
+ s 63
+ w 62
j 430 120
+ p 66 +
+ w 45
j 430 160
+ p 66 -
+ w 23
j 100 160
+ p 7 -
+ w 62
j 280 90
+ p 4 1
+ w 59
j 290 160
+ p 51 +
+ w 59
j 100 120
+ p 7 +
+ w 59
j 190 90
+ w 59
+ w 59
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=B
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
