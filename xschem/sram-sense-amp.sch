v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 -40 -90 {}
N -0 -90 20 -90 {lab=#net1}
N -60 -50 -60 -40 {lab=#net1}
N -60 20 -0 20 {lab=#net2}
N -20 -90 0 -90 {lab=#net1}
N -60 -50 -0 -50 {lab=#net1}
N -90 250 -90 270 {lab=GND}
N -90 170 -90 190 {lab=VDD}
N -60 -140 60 -140 {lab=VDD}
N 60 -140 60 -90 {lab=VDD}
N 60 -50 160 -50 {lab=#net3}
N 60 -60 60 -50 {lab=#net3}
N 200 -50 200 -40 {lab=OUT}
N 200 -50 230 -50 {lab=OUT}
N 200 -60 200 -50 {lab=OUT}
N 60 -140 200 -140 {lab=VDD}
N 10 250 10 270 {lab=GND}
N 10 170 10 190 {lab=BLB}
N 120 250 120 270 {lab=GND}
N 120 170 120 190 {lab=BL}
N 220 250 220 270 {lab=GND}
N 220 170 220 190 {lab=SE}
N -60 70 -40 70 {lab=SE}
N -0 20 0 40 {lab=#net2}
N 160 -50 160 -10 {lab=#net3}
N 200 -10 200 40 {lab=GND}
N 200 -140 200 -90 {lab=VDD}
N 160 -90 160 -50 {lab=#net3}
N -0 70 0 110 {lab=GND}
N 200 -140 230 -140 {lab=VDD}
N 100 -40 100 20 {lab=BL}
N -100 -40 -100 20 {lab=BLB}
N -0 -90 -0 -50 {lab=#net1}
N 60 -50 60 -40 {lab=#net3}
N 60 -10 60 20 {lab=#net2}
N 0 20 60 20 {lab=#net2}
N -60 -10 -60 20 {lab=#net2}
N -60 -70 -60 -50 {lab=#net1}
N -60 -140 -60 -90 {lab=VDD}
N -90 -140 -60 -140 {lab=VDD}
C {vsource.sym} -90 220 0 0 {name=V1 value=\{VDD\} savecurrent=false}
C {gnd.sym} -90 270 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -90 170 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -90 -140 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {gnd.sym} 0 110 0 0 {name=l2 lab=GND}
C {gnd.sym} 200 40 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 230 -50 0 1 {name=p3 sig_type=std_logic lab=OUT}
C {lab_pin.sym} 100 20 0 1 {name=p4 sig_type=std_logic lab=BL}
C {lab_pin.sym} -100 20 0 0 {name=p5 sig_type=std_logic lab=BLB}
C {lab_pin.sym} -60 70 0 0 {name=p6 sig_type=std_logic lab=SE}
C {code_shown.sym} -510 -100 0 0 {name=s1 only_toplevel=false
value="
.lib cornerMOSlv.lib mos_tt

.param VDD=1.2
.param dv=0.02

.tran 0.1p 10n

.control
run
set wr_singlescale
set wr_vecnames
wrdata data.txt v(BL) v(BLB) v(SE) v(OUT)
.endc
"}
C {vsource.sym} 10 220 0 0 {name=V2 value="\{VDD - dv\}" savecurrent=false}
C {gnd.sym} 10 270 0 0 {name=l4 lab=GND
value=\{VDD-dv\}}
C {lab_pin.sym} 10 170 0 0 {name=p7 sig_type=std_logic lab=BLB}
C {vsource.sym} 120 220 0 0 {name=V3 value=\{VDD\} savecurrent=false}
C {gnd.sym} 120 270 0 0 {name=l5 lab=GND
value=\{VDD-dv\}}
C {lab_pin.sym} 120 170 0 0 {name=p8 sig_type=std_logic lab=BL}
C {vsource.sym} 220 220 0 0 {name=V4 value="PULSE(0 \{VDD\} 2n 10p 10p 2n 5n)" savecurrent=false}
C {gnd.sym} 220 270 0 0 {name=l6 lab=GND
value=\{VDD-dv\}}
C {lab_pin.sym} 220 170 0 0 {name=p9 sig_type=std_logic lab=SE}
C {sg13g2_pr/sg13_lv_nmos.sym} -20 70 0 0 {name=M8
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 180 -90 0 0 {name=M9
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X}
C {sg13g2_pr/sg13_lv_nmos.sym} -80 -10 0 0 {name=M1
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 40 -90 0 0 {name=M3
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -40 -90 0 1 {name=M2
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 180 -10 0 0 {name=M6
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X}
C {sg13g2_pr/sg13_lv_nmos.sym} 80 -10 0 1 {name=M4
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
