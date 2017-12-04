vcom -work work D_FF.vwf.vht
vsim -novopt -c -t 1ps -L cyclonev -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.D_FF_vhd_vec_tst -voptargs="+acc"
add wave /*
run -all
