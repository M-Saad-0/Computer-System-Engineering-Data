*version 9.1 3603116403
u 40
V? 2
U? 3
R? 2
C? 2
? 2
@libraries
@analysis
.TRAN 1 0 1 0
+0 0ns
+1 1000000ns
@targets
@attributes
@translators
a 0 u 13 0 0 0 hln 100 PCBOARDS=PCB
a 0 u 13 0 0 0 hln 100 PSPICE=PSPICE
a 0 u 13 0 0 0 hln 100 XILINX=XILINX
@setup
unconnectedPins 0
connectViaLabel 0
connectViaLocalLabels 0
NoStim4ExtIFPortsWarnings 1
AutoGenStim4ExtIFPorts 1
@index
pageloc 1 0 2079 
@status
n 0 122:05:28:03:45:07;1656413107 e 
s 2832 122:05:28:03:45:08;1656413108 e 
*page 1 0 970 720 iA
@ports
port 34 GND_EARTH 590 270 h
@parts
part 2 VDC 400 210 h
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 a 0:13 0 0 0 hln 100 PKGREF=V1
a 1 ap 9 0 24 7 hcn 100 REFDES=V1
a 1 u 13 0 -11 18 hcn 100 DC=20v
part 19 Sw_tClose 450 120 h
a 0 sp 0 0 0 24 hln 100 PART=Sw_tClose
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=U2
a 0 ap 9 0 0 20 hln 100 REFDES=U2
a 0 u 13 13 -2 -4 hln 100 tClose=0
part 25 c 710 210 v
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C1
a 0 ap 9 0 15 0 hln 100 REFDES=C1
a 0 u 13 0 15 25 hln 100 VALUE=10uf
part 24 r 590 130 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
a 0 u 13 0 15 25 hln 100 VALUE=11
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
part 37 nodeMarker 710 180 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=1
@conn
w 8
a 0 up 0:33 0 0 0 hln 100 V=
s 400 250 400 270 7
s 400 270 590 270 9
a 0 up 33 0 495 269 hct 100 V=
s 710 210 710 270 32
s 590 270 710 270 35
w 4
a 0 up 0:33 0 0 0 hln 100 V=
s 400 210 400 130 3
a 0 up 33 0 402 170 hlt 100 V=
s 400 130 450 130 5
w 27
a 0 up 0:33 0 0 0 hln 100 V=
s 490 130 590 130 39
a 0 up 33 0 540 129 hct 100 V=
w 29
a 0 up 0:33 0 0 0 hln 100 V=
s 630 130 710 130 28
a 0 up 33 0 670 129 hct 100 V=
s 710 130 710 180 38
@junction
j 400 250
+ p 2 -
+ w 8
j 400 210
+ p 2 +
+ w 4
j 710 180
+ p 25 2
+ w 29
j 710 210
+ p 25 1
+ w 8
j 590 270
+ s 34
+ w 8
j 450 130
+ p 19 1
+ w 4
j 490 130
+ p 19 2
+ w 27
j 710 180
+ p 37 pin1
+ p 25 2
j 710 180
+ p 37 pin1
+ w 29
j 590 130
+ p 24 1
+ w 27
j 630 130
+ p 24 2
+ w 29
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
