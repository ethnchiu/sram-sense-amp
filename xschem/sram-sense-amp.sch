v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 4 440 -310 1080 120 {fill=false}
B 4 440 150 1050 510 {fill=false}
P 4 1 680 220 {}
P 4 1 1050 -60 {}
T {Read Steps:
1. Precharge BL, BLB to VDD
2. Assert WL high
3. Two cases
    a. BL goes low (logical 0)
    b. BLB goes low (logical 1)
4. Sense amp reads differential signal across BL/BLB and outputs logical value
5. De-assert WL} -140 -590 0 0 0.4 0.4 {}
T {SRAM Cell + Parasitic Capacitances} 450 90 0 0 0.4 0.4 {}
T {Sense Amplifier} 450 480 0 0 0.4 0.4 {}
T {Write Steps:
1. Init cell
2. Assert complementary BL, BLB
3. Assert WL
4. Deassert WL
} -520 -540 0 0 0.4 0.4 {}
N -170 160 -170 180 {lab=GND}
N -170 80 -170 100 {lab=VDD}
N 660 170 820 170 {lab=VDD}
N 820 170 820 220 {lab=VDD}
N 30 160 30 180 {lab=GND}
N 30 80 30 100 {lab=SE}
N 680 410 700 410 {lab=SE}
N 740 410 740 450 {lab=GND}
N 660 280 660 290 {lab=OUT}
N 660 170 660 220 {lab=VDD}
N 630 170 660 170 {lab=VDD}
N 660 -140 660 -90 {lab=VDD}
N 570 -140 660 -140 {lab=VDD}
N 840 -140 940 -140 {lab=VDD}
N 730 -50 730 10 {lab=qbar}
N 770 -30 770 10 {lab=q}
N 730 -50 840 -50 {lab=qbar}
N 730 -90 730 -50 {lab=qbar}
N 770 -90 770 -30 {lab=q}
N 660 -30 770 -30 {lab=q}
N 660 -30 660 -20 {lab=q}
N 660 -40 660 -30 {lab=q}
N 840 -40 840 -20 {lab=qbar}
N 840 -60 840 -50 {lab=qbar}
N 660 60 840 60 {lab=GND}
N 840 -140 840 -90 {lab=VDD}
N 660 -140 840 -140 {lab=VDD}
N 960 -40 960 20 {lab=GND}
N 570 -40 660 -40 {lab=q}
N 660 -60 660 -40 {lab=q}
N 840 -40 930 -40 {lab=qbar}
N 840 -50 840 -40 {lab=qbar}
N 540 -40 540 20 {lab=GND}
N 490 -40 510 -40 {lab=BL}
N 990 -40 1010 -40 {lab=BLB}
N 540 -100 540 -80 {lab=WL}
N 960 -100 960 -80 {lab=WL}
N 490 -40 490 -10 {lab=BL}
N 1010 -40 1010 -10 {lab=BLB}
N 1010 -70 1010 -40 {lab=BLB}
N 490 -70 490 -40 {lab=BL}
N 790 -290 790 -270 {lab=BLB}
N 720 -290 720 -270 {lab=BL}
N 720 -210 720 -190 {lab=GND}
N 790 -210 790 -190 {lab=GND}
N 700 10 730 10 {lab=qbar}
N 700 -90 730 -90 {lab=qbar}
N 770 -90 800 -90 {lab=q}
N 770 10 800 10 {lab=q}
N -480 300 -480 320 {lab=WL}
N -480 380 -480 400 {lab=GND}
N 840 10 840 60 {lab=GND}
N 660 10 660 60 {lab=GND}
N 760 280 760 320 {lab=OUT}
N 720 260 720 320 {lab=#net1}
N 700 220 720 220 {lab=#net1}
N 700 320 720 320 {lab=#net1}
N 760 220 780 220 {lab=OUT}
N 760 320 780 320 {lab=OUT}
N 820 170 850 170 {lab=VDD}
N 720 260 820 260 {lab=#net1}
N 720 220 720 260 {lab=#net1}
N 820 250 820 260 {lab=#net1}
N 660 280 760 280 {lab=OUT}
N 760 220 760 280 {lab=OUT}
N 740 370 820 370 {lab=#net2}
N 740 370 740 380 {lab=#net2}
N 660 370 740 370 {lab=#net2}
N 660 270 660 280 {lab=OUT}
N 820 270 920 270 {lab=#net1}
N 820 270 820 290 {lab=#net1}
N 660 320 660 370 {lab=#net2}
N 820 320 820 370 {lab=#net2}
N 480 270 480 300 {lab=BL}
N 820 260 820 270 {lab=#net1}
N 1000 270 1000 300 {lab=BLB}
N 480 270 500 270 {lab=BL}
N 480 240 480 270 {lab=BL}
N 560 270 660 270 {lab=OUT}
N 660 240 660 270 {lab=OUT}
N 530 210 530 230 {lab=SE}
N 950 210 950 230 {lab=SE}
N 980 270 1000 270 {lab=BLB}
N 1000 240 1000 270 {lab=BLB}
N 530 270 530 350 {lab=VDD}
N 950 270 950 350 {lab=VDD}
N 270 -310 300 -310 {lab=VDD}
N 90 -310 90 -260 {lab=VDD}
N 60 -310 90 -310 {lab=VDD}
N 270 -310 270 -260 {lab=VDD}
N 90 -310 270 -310 {lab=VDD}
N 90 -230 90 -210 {lab=BL}
N 270 -230 270 -210 {lab=BLB}
N -480 160 -480 180 {lab=GND}
N -480 80 -480 100 {lab=PRE_N}
N -630 -60 -630 -30 {lab=BL}
N -760 50 -760 70 {lab=#net3}
N -760 150 -630 150 {lab=GND}
N -890 150 -760 150 {lab=GND}
N -1030 50 -1030 70 {lab=#net4}
N -1030 -60 -1030 -0 {lab=VDD}
N -760 -60 -760 -0 {lab=VDD}
N -1030 150 -890 150 {lab=GND}
N -1030 100 -1030 150 {lab=GND}
N -890 100 -890 150 {lab=GND}
N -760 100 -760 150 {lab=GND}
N -630 100 -630 150 {lab=GND}
N -890 -60 -890 -30 {lab=BLB}
N -890 0 -890 70 {lab=#net5}
N -630 0 -630 70 {lab=#net6}
N -800 50 -800 100 {lab=#net4}
N -1030 50 -930 50 {lab=#net4}
N -1030 30 -1030 50 {lab=#net4}
N -930 50 -930 100 {lab=#net4}
N -930 50 -800 50 {lab=#net4}
N -800 -0 -800 50 {lab=#net4}
N -760 50 -670 50 {lab=#net3}
N -760 30 -760 50 {lab=#net3}
N -670 50 -670 100 {lab=#net3}
N -160 370 -160 390 {lab=GND}
N -160 290 -160 310 {lab=WE}
N 120 370 120 390 {lab=GND}
N 120 290 120 310 {lab=Din}
N -1070 -0 -1070 100 {lab=Din}
C {vsource.sym} -170 130 0 0 {name=V1 value=\{VDD\} savecurrent=false}
C {gnd.sym} -170 180 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -170 80 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 630 170 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {gnd.sym} 740 450 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 660 260 0 1 {name=p3 sig_type=std_logic lab=OUT}
C {lab_pin.sym} 480 240 0 0 {name=p4 sig_type=std_logic lab=BL}
C {lab_pin.sym} 1000 240 0 1 {name=p5 sig_type=std_logic lab=BLB}
C {lab_pin.sym} 680 410 0 0 {name=p6 sig_type=std_logic lab=SE}
C {code_shown.sym} -520 -340 0 0 {name=s1 only_toplevel=false
value="
.lib cornerMOSlv.lib mos_tt

.param VDD=1.2
.param tr=50p

.ic v(Q)=0 V(qbar)=1

.tran 0.1n 180n

.control
run
set wr_singlescale
set wr_vecnames
*wrdata data.txt v(BL) v(BLB) v(WL) v(SE) v(OUT)
wrdata data.txt v(BL) v(BLB) v(WL) v(WE) v(PRE_N) v(Din) v(q) v(qbar)
.endc
"}
C {vsource.sym} 30 130 0 0 {name=V4 value=0 savecurrent=false}
C {gnd.sym} 30 180 0 0 {name=l6 lab=GND
value=\{VDD-dv\}}
C {lab_pin.sym} 30 80 0 0 {name=p9 sig_type=std_logic lab=SE}
C {sg13g2_pr/sg13_lv_nmos.sym} 720 410 0 0 {name=M8
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 680 320 0 1 {name=M1
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 800 220 0 0 {name=M3
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 680 220 0 1 {name=M2
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 800 320 0 0 {name=M4
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 680 -90 0 1 {name=M5
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 820 -90 0 0 {name=M7
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 680 10 0 1 {name=M10
l=0.13u
w=2*0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 820 10 0 0 {name=M11
l=0.13u
w=2*0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_pin.sym} 570 -140 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {gnd.sym} 750 60 0 0 {name=l7 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 540 -60 3 1 {name=M12
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 960 -60 1 0 {name=M13
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {gnd.sym} 540 20 0 1 {name=l8 lab=GND}
C {gnd.sym} 960 20 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 540 -100 0 0 {name=p13 sig_type=std_logic lab=WL}
C {lab_pin.sym} 960 -100 0 1 {name=p14 sig_type=std_logic lab=WL}
C {lab_pin.sym} 1010 -70 0 1 {name=p12 sig_type=std_logic lab=BLB}
C {lab_pin.sym} 490 -70 0 0 {name=p11 sig_type=std_logic lab=BL}
C {lab_pin.sym} 720 -290 0 0 {name=p15 sig_type=std_logic lab=BL}
C {lab_pin.sym} 790 -290 0 1 {name=p16 sig_type=std_logic lab=BLB}
C {capa.sym} 720 -240 0 0 {name=C1
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 790 -240 0 0 {name=C2
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 720 -190 0 1 {name=l10 lab=GND}
C {gnd.sym} 790 -190 0 1 {name=l11 lab=GND}
C {lab_pin.sym} -480 300 0 0 {name=p17 sig_type=std_logic lab=WL}
C {vsource.sym} -480 350 0 0 {name=V5
value="PWL(
+	0n	0	19n	0
+	20n	\{VDD\}	24n	\{VDD\}
+	24.2n	0	59n	0
+	60n	\{VDD\}	66n	\{VDD\}
+	66.2n	0	99n	0
+	100n	\{VDD\}	104n	\{VDD\}
+	104.2n	0	139n	0
+	140n	\{VDD\}	146n	\{VDD\}
+	146.2n	0	180n	0
)"
savecurrent=false}
C {lab_pin.sym} 660 -50 0 1 {name=p18 sig_type=std_logic lab=q}
C {lab_pin.sym} 840 -30 0 0 {name=p19 sig_type=std_logic lab=qbar}
C {gnd.sym} -480 400 0 0 {name=l4 lab=GND
value=\{VDD-dv\}}
C {sg13g2_pr/sg13_lv_pmos.sym} 530 250 3 1 {name=M6
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 950 250 1 0 {name=M9
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_pin.sym} 530 210 0 0 {name=p7 sig_type=std_logic lab=SE}
C {lab_pin.sym} 950 210 0 0 {name=p8 sig_type=std_logic lab=SE}
C {lab_pin.sym} 530 350 0 0 {name=p20 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 950 350 0 1 {name=p21 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 90 -210 0 0 {name=p23 sig_type=std_logic lab=BL}
C {lab_pin.sym} 270 -210 0 0 {name=p22 sig_type=std_logic lab=BLB}
C {sg13g2_pr/sg13_lv_pmos.sym} 110 -260 0 1 {name=M14
l=0.13u
w=3*0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_pin.sym} 60 -310 0 0 {name=p24 sig_type=std_logic lab=VDD}
C {sg13g2_pr/sg13_lv_pmos.sym} 290 -260 0 1 {name=M15
l=0.13u
w=3*0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_pin.sym} 130 -260 0 1 {name=p29 sig_type=std_logic lab=PRE_N}
C {lab_pin.sym} 310 -260 0 1 {name=p30 sig_type=std_logic lab=PRE_N}
C {vsource.sym} -480 130 0 0 {name=V2 value="PWL(
+	0n		0	10n		0
+	\{10n + tr\}	\{VDD\}	39.999n		\{VDD\}
+	40n		0	50n		0
+	\{50n + tr\}	\{VDD\}	79.999n		\{VDD\}
+	80n		0	90n		0
+	\{90n + tr\}	\{VDD\}	119.999n	\{VDD\}
+	120n		0	130n		0
+	\{130n + tr\}	\{VDD\}	180n		\{VDD\}
)"
savecurrent=false}
C {gnd.sym} -480 180 0 0 {name=l3 lab=GND
value=\{VDD-dv\}}
C {lab_pin.sym} -480 80 0 0 {name=p31 sig_type=std_logic lab=PRE_N}
C {sg13g2_pr/sg13_lv_nmos.sym} -910 0 0 0 {name=M18
l=0.13u
w=24*0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -650 0 0 0 {name=M19
l=0.13u
w=24*0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -910 100 0 0 {name=M20
l=0.13u
w=12*0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -650 100 0 0 {name=M21
l=0.13u
w=12*0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {gnd.sym} -830 150 0 0 {name=l5 lab=GND
value=\{VDD-dv\}}
C {lab_pin.sym} -890 -60 0 0 {name=p32 sig_type=std_logic lab=BLB}
C {lab_pin.sym} -630 -60 0 0 {name=p33 sig_type=std_logic lab=BL}
C {sg13g2_pr/sg13_lv_pmos.sym} -780 0 0 0 {name=M24
l=0.13u
w=12*0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -780 100 0 0 {name=M25
l=0.13u
w=6*0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -1050 0 0 0 {name=M26
l=0.13u
w=18*0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -1050 100 0 0 {name=M27
l=0.13u
w=9*0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_pin.sym} -1030 -60 0 0 {name=p36 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -760 -60 0 0 {name=p37 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -1070 50 0 0 {name=p38 sig_type=std_logic lab=Din}
C {lab_pin.sym} -930 0 0 0 {name=p34 sig_type=std_logic lab=WE}
C {lab_pin.sym} -670 0 0 0 {name=p35 sig_type=std_logic lab=WE}
C {vsource.sym} -160 340 0 0 {name=V3 value="PWL(
+	0n	0	19n	0
+	19.2n	\{VDD\}	24.2n	\{VDD\}
+	24.4n	0	99n	0
+	99.2n	\{VDD\}	104.2n	\{VDD\}
+	104.4n	0	180n	0
)"
savecurrent=false}
C {gnd.sym} -160 390 0 0 {name=l12 lab=GND}
C {lab_pin.sym} -160 290 0 0 {name=p25 sig_type=std_logic lab=WE}
C {vsource.sym} 120 340 0 0 {name=V6 value="PWL(
+	0n	\{VDD\}	80n	\{VDD\}
+	95n	0	180n	0
)"
savecurrent=false}
C {gnd.sym} 120 390 0 0 {name=l13 lab=GND
value="
PWL(
+	0n	\{VDD\}	80n	\{VDD\}
+	95n	0	180n	0
)
"}
C {lab_pin.sym} 120 290 0 0 {name=p26 sig_type=std_logic lab=Din
value="
PWL(
+	0n	\{VDD\}	80n	\{VDD\}
+	95n	0	180n	0
)
"}
