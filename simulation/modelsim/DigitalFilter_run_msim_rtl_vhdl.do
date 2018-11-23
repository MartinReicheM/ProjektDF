transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Martin/OneDrive/Dokument/Projekt15/DigitalFilter.vhd}
vcom -93 -work work {C:/Users/Martin/OneDrive/Dokument/Projekt15/clock_divider.vhd}
vcom -93 -work work {C:/Users/Martin/OneDrive/Dokument/Projekt15/i2c.vhd}
vcom -93 -work work {C:/Users/Martin/OneDrive/Dokument/Projekt15/WM8731.vhd}

