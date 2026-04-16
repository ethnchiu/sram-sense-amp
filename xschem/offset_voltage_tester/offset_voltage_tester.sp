*ng_script

set tstop = 10n
set teval = 6.5n
*set teval = 3n

setplot $scratch
let vin_min = -0.05
let vin_max =  0.05
let nbit = 10
let voutd_th = 0

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
    tran 5p $tstop
    set dt = $curplot
    meas tran vop FIND v(voutp) AT=$teval
    meas tran von FIND v(voutn) AT=$teval

    setplot $scratch
    let vod_last = {$dt}.vop - {$dt}.von
    destroy $dt
    let reset_state = 0
    continue
  end

  let vind_val = vind_sar_val
  alterparam vind = $&vind_val
  reset
  tran 5p $tstop
  set dt = $curplot
  meas tran vop FIND v(voutp) AT=$teval
  meas tran von FIND v(voutn) AT=$teval

  setplot $scratch
  let vod_last = {$dt}.vop - {$dt}.von
  destroy $dt

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
      let vos_candidate = vind_sar_val - lsb / 2
    else
      let vos_candidate = vind_sar_val + lsb / 2
    end

    if vind_dir = 1
      let vos_r = vos_candidate
      let vos_r = $&vos_r

      let vind_dir = 0
      let count = 1
      let vind_sar_val = vin_min + vind_range / 2
      let reset_state = 1
      let vind_val = vin_max
      continue
    else
      let vos_f = vos_candidate
      let vos_f = $&vos_f
      break
    end
  end
end
