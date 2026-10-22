extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_wee = 0.0
var v_wowe = 0.0
func ev_create():
	alarm[int(0.0)] = 20.0
	(GM.f_file_open_read("J4_Credits.txt"))
func ev_alarm_1():
	(GM.f_instance_create(0.0, 0.0, 569.0))
	(GM.f_instance_destroy(self))
func ev_alarm_0():
	v_wee = (GM.f_instance_create(800.0, 80.0, 991.0))
	alarm[int(0.0)] = 30.0
	GM.vset(v_wee, "v_text", (GM.f_file_read_string()))
	(GM.f_file_readln())
func ev_draw():
	(GM.f_action_draw_font("Times New Roman", 48.0, 0.0, 0.0))
	(GM.f_draw_set_color(8388608.0))
	GM.font_align = 1.0
	v_wowe = 495.0
	(GM.f_draw_text((GM.room_width / 2.0), v_wowe, "Enter - Back"))
func ev_keypress_13():
	alarm[int(1.0)] = 1.0
