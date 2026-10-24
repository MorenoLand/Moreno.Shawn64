extends "res://games/mw2/scripts.gd"
var v_rdy = 0.0
var v_rdy2 = 0.0
var v_rdy3 = 0.0
var v_rdy4 = 0.0
func ev_create():
	v_rdy = 1.0
	v_rdy2 = 1.0
	v_rdy3 = 1.0
	v_rdy4 = 1.0
func ev_alarm_4():
	(GM.f_screen_gamma(0.0, 0.0, 0.0))
func ev_alarm_3():
	v_rdy4 = 1.0
func ev_alarm_2():
	v_rdy3 = 1.0
func ev_alarm_1():
	v_rdy2 = 1.0
func ev_alarm_0():
	v_rdy = 1.0
func ev_step():
	if (((absf((GM.f_instance_number(150.0)) - 0.0) < 0.00001))):
		if ((((GM.f_mouse_check_button(1.0))))) >= 0.5:
			if (((absf((GM.f_instance_number(107.0)) - 1.0) < 0.00001))):
				(GM.f_instance_create(0.0, 0.0, 94.0))
				if (((absf((GM.f_instance_number(108.0)) - 0.0) < 0.00001))):
					(GM.f_instance_create(0.0, 0.0, 108.0))
			if (((absf((GM.f_instance_number(66.0)) - 1.0) < 0.00001))):
				if (((absf(v_rdy - 1.0) < 0.00001))):
					(GM.f_instance_create(0.0, 0.0, 94.0))
					(GM.f_sound_play(3.0))
					v_rdy = 0.0
					alarm[int(0.0)] = 10.0
			if (((absf((GM.f_instance_number(113.0)) - 1.0) < 0.00001))):
				(GM.f_instance_create((GM.mouse_x - 10.0), (GM.mouse_y - 10.0), 111.0))
				(GM.f_sound_play(37.0))
				v_rdy2 = 0.0
				alarm[int(1.0)] = 1.0
	if (((GM.G["missils"] < 100.0))):
		GM.G["missils"] = 100.0
func ev_key_99():
	if (((absf(v_rdy4 - 1.0) < 0.00001))):
		if (((GM.G["brines"] > 0.0))):
			GM.G["brines"] = GM.G["brines"] + (-1.0)
			(GM.f_instance_create((GM.mouse_x - 20.0), (GM.mouse_y - 20.0), 178.0))
			(GM.f_sound_play(12.0))
			v_rdy4 = 0.0
			alarm[int(3.0)] = 10.0
func ev_key_98():
	if (((GM.G["mega"] > 0.0))):
		if (((absf(v_rdy3 - 1.0) < 0.00001))):
			GM.G["mega"] = GM.G["mega"] + (-1.0)
			if (((absf((GM.f_instance_number(176.0)) - 0.0) < 0.00001))):
				(GM.f_screen_gamma(0.5, (-0.5), (-0.5)))
				alarm[int(4.0)] = 2.0
			(GM.f_instance_create(0.0, 0.0, 134.0))
			(GM.f_instance_create(0.0, 0.0, 123.0))
			(GM.f_sound_play(12.0))
			v_rdy3 = 0.0
			alarm[int(2.0)] = 10.0
func ev_key_97():
	if (((absf(v_rdy3 - 1.0) < 0.00001))):
		if (((GM.G["boom"] > 0.0))):
			GM.G["boom"] = GM.G["boom"] + (-1.0)
			(GM.f_instance_create((GM.mouse_x - 80.0), (GM.mouse_y - 80.0), 119.0))
			(GM.f_sound_play(43.0))
			v_rdy3 = 0.0
			alarm[int(2.0)] = 10.0
func ev_mouse_0():
	(GM.f_sound_play(4.0))
	(GM.f_game_end())
func ev_other_2():
	GM.G["answer"] = 0.0
