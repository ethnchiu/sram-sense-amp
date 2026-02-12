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
5. De-assert WL} -510 -180 0 0 0.4 0.4 {}
T {SRAM Cell + Parasitic Capacitances} 450 90 0 0 0.4 0.4 {}
T {Sense Amplifier} 450 480 0 0 0.4 0.4 {}
N -60 160 -60 180 {lab=GND}
N -60 80 -60 100 {lab=VDD}
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
N 30 220 30 240 {lab=WL}
N 30 300 30 320 {lab=GND}
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
C {vsource.sym} -60 130 0 0 {name=V1 value=\{VDD\} savecurrent=false}
C {gnd.sym} -60 180 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -60 80 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 630 170 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {gnd.sym} 740 450 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 660 260 0 1 {name=p3 sig_type=std_logic lab=OUT}
C {lab_pin.sym} 480 240 0 0 {name=p4 sig_type=std_logic lab=BL}
C {lab_pin.sym} 1000 240 0 1 {name=p5 sig_type=std_logic lab=BLB}
C {lab_pin.sym} 680 410 0 0 {name=p6 sig_type=std_logic lab=SE}
C {code_shown.sym} -530 60 0 0 {name=s1 only_toplevel=false
value="
.lib cornerMOSlv.lib mos_tt

.param VDD=1.2
.param T_read=2n
.param T_rise=100p
.param D_se=500p

.ic v(BL)=VDD v(BLB)=VDD v(Q)=VDD V(qbar)=0

.tran 0.1p 10n

.control
run
set wr_singlescale
set wr_vecnames
wrdata data.txt v(BL) v(BLB) v(WL) v(SE) v(OUT)
.endc
"}
C {vsource.sym} 30 130 0 0 {name=V4 value="PULSE(0 \{VDD\} \{T_read + D_se\} \{T_rise\} \{T_rise\} 1n 10n)" savecurrent=false}
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
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 820 10 0 0 {name=M11
l=0.13u
w=0.15u
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
C {lab_pin.sym} 30 220 0 0 {name=p17 sig_type=std_logic lab=WL}
C {vsource.sym} 30 270 0 0 {name=V5 value="PULSE(0 \{VDD\} \{T_read\} \{T_rise\} \{T_rise\} 2n 10n)" savecurrent=false}
C {lab_pin.sym} 660 -50 0 1 {name=p18 sig_type=std_logic lab=q}
C {lab_pin.sym} 840 -30 0 0 {name=p19 sig_type=std_logic lab=qbar}
C {gnd.sym} 30 320 0 0 {name=l4 lab=GND
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
