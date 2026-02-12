v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 4 440 -310 1080 120 {fill=false}
B 4 520 160 1010 510 {fill=false}
P 4 1 650 240 {}
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
T {Sense Amplifier} 530 480 0 0 0.4 0.4 {}
N 690 240 710 240 {lab=#net1}
N 630 280 630 290 {lab=#net1}
N 630 350 690 350 {lab=#net2}
N 670 240 690 240 {lab=#net1}
N 630 280 690 280 {lab=#net1}
N -60 160 -60 180 {lab=GND}
N -60 80 -60 100 {lab=VDD}
N 630 190 750 190 {lab=VDD}
N 750 190 750 240 {lab=VDD}
N 750 280 850 280 {lab=#net3}
N 750 270 750 280 {lab=#net3}
N 890 280 890 290 {lab=OUT}
N 890 280 920 280 {lab=OUT}
N 890 270 890 280 {lab=OUT}
N 750 190 890 190 {lab=VDD}
N 30 160 30 180 {lab=GND}
N 30 80 30 100 {lab=SE}
N 630 400 650 400 {lab=SE}
N 690 350 690 370 {lab=#net2}
N 850 280 850 320 {lab=#net3}
N 890 320 890 370 {lab=GND}
N 890 190 890 240 {lab=VDD}
N 850 240 850 280 {lab=#net3}
N 690 400 690 440 {lab=GND}
N 890 190 920 190 {lab=VDD}
N 790 290 790 350 {lab=BL}
N 590 290 590 350 {lab=BLB}
N 690 240 690 280 {lab=#net1}
N 750 280 750 290 {lab=#net3}
N 750 320 750 350 {lab=#net2}
N 690 350 750 350 {lab=#net2}
N 630 320 630 350 {lab=#net2}
N 630 260 630 280 {lab=#net1}
N 630 190 630 240 {lab=VDD}
N 600 190 630 190 {lab=VDD}
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
C {vsource.sym} -60 130 0 0 {name=V1 value=\{VDD\} savecurrent=false}
C {gnd.sym} -60 180 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -60 80 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 600 190 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {gnd.sym} 690 440 0 0 {name=l2 lab=GND}
C {gnd.sym} 890 370 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 920 280 0 1 {name=p3 sig_type=std_logic lab=OUT}
C {lab_pin.sym} 790 350 0 1 {name=p4 sig_type=std_logic lab=BL}
C {lab_pin.sym} 590 350 0 0 {name=p5 sig_type=std_logic lab=BLB}
C {lab_pin.sym} 630 400 0 0 {name=p6 sig_type=std_logic lab=SE}
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
C {sg13g2_pr/sg13_lv_nmos.sym} 670 400 0 0 {name=M8
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 870 240 0 0 {name=M9
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X}
C {sg13g2_pr/sg13_lv_nmos.sym} 610 320 0 0 {name=M1
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 730 240 0 0 {name=M3
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 650 240 0 1 {name=M2
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 870 320 0 0 {name=M6
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X}
C {sg13g2_pr/sg13_lv_nmos.sym} 770 320 0 1 {name=M4
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
