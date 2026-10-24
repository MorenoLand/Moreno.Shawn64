extends "res://games/galaxy_arcade_2/scripts.gd"
var v_hey = 0.0
func ev_create():
	v_hey = 1.0
	alarm[int(3.0)] = 4000.0
func ev_alarm_3():
	(GM.f_sound_stop(347.0))
	(GM.f_sound_stop(336.0))
	(GM.f_sound_stop(335.0))
	(GM.f_sound_stop(348.0))
	(GM.f_sound_stop(339.0))
	(GM.f_sound_stop(345.0))
	(GM.f_sound_play(131.0))
	if (((GM.G["ppscore"] > GM.G["pphigh"]))):
		GM.G["pphigh"] = GM.G["ppscore"]
	(GM.f_room_goto(1.0))
func ev_step():
	if (((absf(v_hey - 1.0) < 0.00001))):
		if (((GM.G["ppscore"] > 9999.0))):
			(GM.f_instance_create((-39.0), 2384.0, 1200.0))
			v_hey = 0.0
func ev_other_4():
	GM.G["ppscore"] = 0.0
	GM.G["missileamo"] = 25.0
func ev_draw():
	(GM.f_action_draw_font("Times New Roman", 18.0, 1.0, 0.0))
	(GM.f_draw_set_color(255.0))
	(GM.f_draw_text((20.0 + GM.view_xview[int(0.0)]), (20.0 + GM.view_yview[int(0.0)]), "Time:"))
	(GM.f_draw_text((20.0 + GM.view_xview[int(0.0)]), (50.0 + GM.view_yview[int(0.0)]), (GM.f_string(alarm[int(3.0)]))))
	(GM.f_draw_text((20.0 + GM.view_xview[int(0.0)]), (90.0 + GM.view_yview[int(0.0)]), "Score:"))
	(GM.f_draw_text((20.0 + GM.view_xview[int(0.0)]), (120.0 + GM.view_yview[int(0.0)]), (GM.f_string(GM.G["ppscore"]))))
	(GM.f_draw_text((20.0 + GM.view_xview[int(0.0)]), (160.0 + GM.view_yview[int(0.0)]), "Missiles:"))
	(GM.f_draw_text((20.0 + GM.view_xview[int(0.0)]), (180.0 + GM.view_yview[int(0.0)]), (GM.f_string(GM.G["missileamo"]))))
