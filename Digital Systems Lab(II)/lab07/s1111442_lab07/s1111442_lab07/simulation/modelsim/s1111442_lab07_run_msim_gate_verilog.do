transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {s1111442_lab07.vo}

vlog -vlog01compat -work work +incdir+C:/Users/User/OneDrive/Desktop/2/work/s1111442_lab07 {C:/Users/User/OneDrive/Desktop/2/work/s1111442_lab07/test.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L stratixii_ver -L gate_work -L work -voptargs="+acc" test

add wave *
view structure
view signals
run 1 us
