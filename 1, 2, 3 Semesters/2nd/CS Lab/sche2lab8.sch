*version 9.1 2880303123
u 40
R? 6
V? 3
@libraries
@analysis
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
pageloc 1 0 2578 
@status
n 0 122:05:06:15:22:03;1654554123 e 
s 2832 122:05:06:15:22:04;1654554124 e 
*page 1 0 970 720 iA
@ports
port 39 GND_EARTH 540 350 h
@parts
part 8 VDC 370 240 h
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 a 0:13 0 0 0 hln 100 PKGREF=V2
a 1 ap 9 0 24 7 hcn 100 REFDES=V2
a 1 u 13 0 -11 18 hcn 100 DC=12
part 7 VDC 680 240 h
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 a 0:13 0 0 0 hln 100 PKGREF=V1
a 1 ap 9 0 24 7 hcn 100 REFDES=V1
a 1 u 13 0 -11 18 hcn 100 DC=8
part 2 r 410 170 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
a 0 u 13 0 15 25 hln 100 VALUE=3
part 3 r 620 170 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R2
a 0 ap 9 0 15 0 hln 100 REFDES=R2
a 0 u 13 0 15 25 hln 100 VALUE=2
part 4 r 540 270 v
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R3
a 0 ap 9 0 15 0 hln 100 REFDES=R3
a 0 u 13 0 15 25 hln 100 VALUE=1
part 5 r 450 350 u
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R4
a 0 ap 9 0 15 0 hln 100 REFDES=R4
a 0 u 13 0 15 25 hln 100 VALUE=5
part 6 r 660 350 u
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R5
a 0 ap 9 0 15 0 hln 100 REFDES=R5
a 0 u 13 0 15 25 hln 100 VALUE=6
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 300 95 hrn 100 PAGENO=1
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
@conn
w 10
s 410 170 370 170 9
s 370 170 370 240 11
w 14
s 370 280 370 350 13
s 370 350 410 350 15
w 26
s 660 170 680 170 25
s 680 170 680 240 27
w 30
s 680 280 680 350 29
s 680 350 660 350 31
w 22
s 540 230 540 170 21
s 540 170 620 170 23
s 450 170 540 170 35
w 18
s 450 350 540 350 17
s 540 350 540 270 19
s 620 350 540 350 33
@junction
j 410 170
+ p 2 1
+ w 10
j 370 240
+ p 8 +
+ w 10
j 370 280
+ p 8 -
+ w 14
j 410 350
+ p 5 2
+ w 14
j 450 350
+ p 5 1
+ w 18
j 540 270
+ p 4 1
+ w 18
j 540 230
+ p 4 2
+ w 22
j 620 170
+ p 3 1
+ w 22
j 660 170
+ p 3 2
+ w 26
j 680 240
+ p 7 +
+ w 26
j 680 280
+ p 7 -
+ w 30
j 660 350
+ p 6 1
+ w 30
j 620 350
+ p 6 2
+ w 18
j 540 350
+ w 18
+ w 18
j 450 170
+ p 2 2
+ w 22
j 540 170
+ w 22
+ w 22
j 540 350
+ s 39
+ w 18
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
