extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	GM.G["nitrounlocked"] = 1.0
	(GM.f_sound_play(37.0))
	alarm[int(0.0)] = 100.0
func ev_alarm_0():
	(GM.f_instance_create(0.0, 0.0, 467.0))
func ev_draw():
	GM.font_align = 1.0
	(GM.f_action_draw_font("Dot-Matrix", 48.0, 0.0, 0.0))
	(GM.f_draw_set_color(65535.0))
	(GM.f_draw_text((GM.view_xview[0] + 400.0), (GM.view_yview[0] + 250.0), "LEVEL CLEAR"))
