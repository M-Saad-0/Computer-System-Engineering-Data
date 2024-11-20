*version 9.1 522625676
u 57
R? 6
V? 2
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
pageloc 1 0 2386 
@status
n 0 122:06:05:03:29:22;1657016962 e 
s 2832 122:06:05:03:29:27;1657016967 e 
*page 1 0 970 720 iA
@ports
port 56 GND_EARTH 350 340 h
@parts
part 2 r 350 110 v
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
a 0 u 13 0 15 25 hln 100 VALUE=2
part 3 r 580 110 v
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R2
a 0 ap 9 0 15 0 hln 100 REFDES=R2
a 0 u 13 0 15 25 hln 100 VALUE=10
part 5 r 350 240 d
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R4
a 0 ap 9 0 15 0 hln 100 REFDES=R4
a 0 u 13 0 15 25 hln 100 VALUE=3
part 6 r 580 250 d
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R5
a 0 ap 9 0 15 0 hln 100 REFDES=R5
a 0 u 13 0 15 25 hln 100 VALUE=10
part 4 r 480 190 u
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R3
a 0 ap 9 0 15 0 hln 100 REFDES=R3
a 0 u 13 0 15 25 hln 100 VALUE=5
part 55 VDC 170 180 h
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 a 0:13 0 0 0 hln 100 PKGREF=V1
a 1 ap 9 0 24 7 hcn 100 REFDES=V1
a 1 u 13 0 -11 18 hcn 100 DC=10V
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 300 95 hrn 100 PAGENO=1
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
@conn
w 10
s 580 110 580 190 27
s 580 190 580 250 52
s 480 190 580 190 25
w 22
s 350 240 350 190 21
s 350 190 440 190 23
s 350 110 350 190 28
w 37
s 170 180 170 70 36
s 350 70 580 70 7
s 170 70 350 70 38
w 14
s 350 340 350 280 19
s 350 340 170 340 32
s 170 340 170 220 34
s 580 340 580 290 45
s 580 340 350 340 13
@junction
j 350 280
+ p 5 2
+ w 14
j 350 70
+ p 2 2
+ w 37
j 580 70
+ p 3 2
+ w 37
j 350 340
+ w 14
+ w 14
j 580 290
+ p 6 2
+ w 14
j 580 110
+ p 3 1
+ w 10
j 580 250
+ p 6 1
+ w 10
j 580 190
+ w 10
+ w 10
j 480 190
+ p 4 1
+ w 10
j 350 240
+ p 5 1
+ w 22
j 440 190
+ p 4 2
+ w 22
j 350 110
+ p 2 1
+ w 22
j 350 190
+ w 22
+ w 22
j 170 180
+ p 55 +
+ w 37
j 170 220
+ p 55 -
+ w 14
j 350 340
+ s 56
+ w 14
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
