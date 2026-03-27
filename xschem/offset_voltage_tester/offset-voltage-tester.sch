v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 4 -300 -180 310 180 {fill=false}
P 4 1 -60 -110 {}
T {Sense Amplifier} -290 150 0 0 0.4 0.4 {}
N -80 -160 80 -160 {lab=VDD}
N 80 -160 80 -110 {lab=VDD}
N -60 80 -40 80 {lab=SE}
N 0 80 0 120 {lab=GND}
N -80 -50 -80 -40 {lab=Voutp}
N -80 -160 -80 -110 {lab=VDD}
N -110 -160 -80 -160 {lab=VDD}
N 20 -50 20 -10 {lab=Voutp}
N -20 -70 -20 -10 {lab=Voutn}
N -40 -110 -20 -110 {lab=Voutn}
N -40 -10 -20 -10 {lab=Voutn}
N 20 -110 40 -110 {lab=Voutp}
N 20 -10 40 -10 {lab=Voutp}
N 80 -160 110 -160 {lab=VDD}
N -20 -70 80 -70 {lab=Voutn}
N -20 -110 -20 -70 {lab=Voutn}
N 80 -80 80 -70 {lab=Voutn}
N -80 -50 20 -50 {lab=Voutp}
N 20 -110 20 -50 {lab=Voutp}
N 0 40 80 40 {lab=#net1}
N 0 40 0 50 {lab=#net1}
N -80 40 0 40 {lab=#net1}
N -80 -60 -80 -50 {lab=Voutp}
N 80 -60 180 -60 {lab=Voutn}
N 80 -60 80 -40 {lab=Voutn}
N -80 -10 -80 40 {lab=#net1}
N 80 -10 80 40 {lab=#net1}
N -260 -60 -260 -30 {lab=BL}
N 80 -70 80 -60 {lab=Voutn}
N 260 -60 260 -30 {lab=BLB}
N -260 -60 -240 -60 {lab=BL}
N -260 -90 -260 -60 {lab=BL}
N -180 -60 -80 -60 {lab=Voutp}
N -80 -90 -80 -60 {lab=Voutp}
N -210 -120 -210 -100 {lab=SE}
N 210 -120 210 -100 {lab=SE}
N 240 -60 260 -60 {lab=BLB}
N 260 -90 260 -60 {lab=BLB}
N -210 -60 -210 20 {lab=VDD}
N 210 -60 210 20 {lab=VDD}
N -30 -350 -30 -330 {lab=BLB}
N -100 -350 -100 -330 {lab=BL}
N -30 -270 -30 -250 {lab=GND}
N -100 -270 -100 -250 {lab=GND}
C {lab_pin.sym} -110 -160 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {gnd.sym} 0 120 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -80 -70 0 0 {name=p3 sig_type=std_logic lab=Voutp}
C {lab_pin.sym} -260 -90 0 0 {name=p4 sig_type=std_logic lab=BL}
C {lab_pin.sym} 260 -90 0 1 {name=p5 sig_type=std_logic lab=BLB}
C {lab_pin.sym} -60 80 0 0 {name=p6 sig_type=std_logic lab=SE}
C {sg13g2_pr/sg13_lv_nmos.sym} -20 80 0 0 {name=M8
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -60 -10 0 1 {name=M1
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 60 -110 0 0 {name=M3
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -60 -110 0 1 {name=M2
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 60 -10 0 0 {name=M4
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -210 -80 3 1 {name=M6
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 210 -80 1 0 {name=M9
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_pin.sym} -210 -120 0 0 {name=p7 sig_type=std_logic lab=SE}
C {lab_pin.sym} 210 -120 0 0 {name=p8 sig_type=std_logic lab=SE}
C {lab_pin.sym} -210 20 0 0 {name=p20 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 210 20 0 1 {name=p21 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 80 -50 0 1 {name=p1 sig_type=std_logic lab=Voutn}
C {simulator_commands.sym} 350 -120 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.lib cornerMOSlv.lib mos_tt_mismatch

.param VDD=1.2
.param VCM=1.2
.param vind=0

.param TPER=10n
.param TSE_DLY=4n
.param TSE_W=3n
.param TR=100p
.param TF=100p
.param TEVAL=6.5n

VDD_S VDD 0 \{VDD\}
VSE SE 0 PULSE(0 \{VDD\} \{TSE_DLY\} \{TR\} \{TF\} \{TSE_W\} \{TPER\})
* SE Pulse:
* 0V -> VDD @ TSE_DLY
* Stays high for TSE_W
* Repeats every TPER

B_BLDRV BLDRV 0 V = \{VCM + vind / 2\}
B_BLBDRV BLBDRV 0 V = \{VCM - vind / 2\}

RBL BLDRV BL 50
RBLB BLBDRV BLB 50

.control
set noaskquit
set numdgt=10

let vin_min = -0.005
let vin_max =  0.005
let nbit = 12
let voutd_th = 0

let tstop = 10n
let teval = 6.5n

let vind_range = vin_max - vin_min
let vind_dir = 1
let reset_state = 1
let count = 1
let vind_sar_val = vin_min + vind_range / 2
let vind_val = vin_min
let vos_r = 0
let vos_f = 0
let vod_last = 0
let lsb = 0
let vos_candidate = 0

while 1

  if reset_state = 1
    if vind_dir = 1
      let vind_val = vin_min
    else
      let vind_val = vin_max
    end

    alterparam vind = $&vind_val
    reset
    tran 5p $&tstop
    meas tran vop FIND v(voutp) AT=$&teval
    meas tran von FIND v(voutn) AT=$&teval
    let vod_last = $&vop - $&von

    let reset_state = 0
    continue
  end

  let vind_val = vind_sar_val
  alterparam vind = $&vind_val
  reset
  tran 5p $&tstop
  meas tran vop FIND v(voutp) AT=$&teval
  meas tran von FIND v(voutn) AT=$&teval
  let vod_last = $&vop - $&von

  if count < nbit
    let count = count + 1

    if vod_last > voutd_th
      let vind_sar_val = vind_sar_val - vind_range / (2^count)
      if vind_dir = 1
        let reset_state = 1
      end
    else
      let vind_sar_val = vind_sar_val + vind_range / (2^count)
      if vind_dir = 0
        let reset_state = 1
      end
    end

  else
    let lsb = vind_range / (2^count)

    if vod_last > voutd_th
      let vos_candidate = vind_sar_val - lsb/2
    else
      let vos_candidate = vind_sar_val + lsb/2
    end

    if vind_dir = 1
      let vos_r = $&vos_candidate

      let vind_dir = 0
      let count = 1
      let vind_sar_val = vin_min + vind_range / 2
      let reset_state = 1
      let vind_val = vin_max
      continue
    else
      let vos_f = $&vos_candidate
      break
    end
  end

end

let vos_avg = (vos_r + vos_f) / 2
let vos_diff = vos_r - vos_f

echo 'vos_r = ' $&vos_r
echo 'vos_f = ' $&vos_f
echo 'diff  = ' $&vos_diff
.endc
"}
C {noconn.sym} 210 -120 1 0 {name=l1}
C {noconn.sym} 260 -90 1 0 {name=l3}
C {noconn.sym} -260 -90 1 0 {name=l4}
C {lab_pin.sym} -100 -350 0 0 {name=p9 sig_type=std_logic lab=BL}
C {lab_pin.sym} -30 -350 0 1 {name=p10 sig_type=std_logic lab=BLB}
C {capa.sym} -100 -300 0 0 {name=C1
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} -30 -300 0 0 {name=C2
m=1
value=0.5p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -100 -250 0 0 {name=l5 lab=GND}
C {gnd.sym} -30 -250 0 0 {name=l6 lab=GND}
