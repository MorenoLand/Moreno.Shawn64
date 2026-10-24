extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_val1 = 0.0
var v_val2 = 0.0
var v_val3 = 0.0
func ev_create():
	(GM.f_file_open_read(GM.add(GM.working_directory, "J4_Settings.txt")))
	(GM.f_file_readln())
	(GM.f_file_readln())
	(GM.f_file_readln())
	(GM.f_file_readln())
	(GM.f_file_readln())
	(GM.f_file_readln())
	(GM.f_file_readln())
	v_val1 = (GM.f_real((GM.f_file_read_string())))
	(GM.f_file_readln())
	(GM.f_file_readln())
	(GM.f_file_readln())
	(GM.f_file_readln())
	(GM.f_file_readln())
	(GM.f_file_readln())
	(GM.f_file_readln())
	v_val2 = (GM.f_real((GM.f_file_read_string())))
	(GM.f_file_readln())
	(GM.f_file_readln())
	(GM.f_file_readln())
	(GM.f_file_readln())
	(GM.f_file_readln())
	(GM.f_file_readln())
	(GM.f_file_readln())
	v_val3 = (GM.f_real((GM.f_file_read_string())))
	(GM.f_file_readln())
	(GM.f_file_readln())
	(GM.f_file_readln())
	(GM.f_file_readln())
	(GM.f_file_readln())
	(GM.f_file_readln())
	(GM.f_file_readln())
	GM.G["maxparticles"] = (GM.f_real((GM.f_file_read_string())))
	(GM.f_file_close())
	if (((absf(v_val1 - 16.0) < 0.00001) and (absf(v_val2 - 1.0) < 0.00001))):
		(GM.f_set_graphics_mode(1.0, 800.0, 16.0, 100.0, 1.0, 1.0, 1.0))
	if (((absf(v_val1 - 32.0) < 0.00001) and (absf(v_val2 - 1.0) < 0.00001))):
		(GM.f_set_graphics_mode(1.0, 800.0, 32.0, 100.0, 1.0, 1.0, 1.0))
	if (((absf(v_val1 - 16.0) < 0.00001) and (absf(v_val2 - 2.0) < 0.00001))):
		(GM.f_set_graphics_mode(1.0, 800.0, 16.0, 100.0, 0.0, 1.0, 1.0))
	if (((absf(v_val1 - 32.0) < 0.00001) and (absf(v_val2 - 2.0) < 0.00001))):
		(GM.f_set_graphics_mode(1.0, 800.0, 32.0, 100.0, 0.0, 1.0, 1.0))
