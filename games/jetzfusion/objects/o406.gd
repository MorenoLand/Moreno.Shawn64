extends "res://games/jetzfusion/scripts.gd"
var v_s0 = 0.0
var v_s1 = 0.0
var v_s10 = 0.0
var v_s11 = 0.0
var v_s12 = 0.0
var v_s13 = 0.0
var v_s14 = 0.0
var v_s15 = 0.0
var v_s2 = 0.0
var v_s3 = 0.0
var v_s4 = 0.0
var v_s5 = 0.0
var v_s6 = 0.0
var v_s7 = 0.0
var v_s8 = 0.0
var v_s9 = 0.0
func ev_create():
	GM.G["deaths"] = 0.0
	(GM.f_sound_loop(64.0))
	v_s0 = 1.0
	v_s1 = 1.0
	v_s2 = 1.0
	v_s3 = 1.0
	v_s4 = 1.0
	v_s5 = 1.0
	v_s6 = 1.0
	v_s7 = 1.0
	v_s8 = 1.0
	v_s9 = 1.0
	v_s10 = 1.0
	v_s11 = 1.0
	v_s12 = 1.0
	v_s13 = 1.0
	v_s14 = 1.0
	v_s15 = 1.0
func ev_keypress_27():
	(GM.f_sound_stop_all())
	(GM.f_room_goto(1.0))
