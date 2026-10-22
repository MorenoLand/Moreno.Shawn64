extends "res://games/bounty_hunter_sx/scripts.gd"
func ev_create():
	(GM.f_sound_play(339.0))
	alarm[int(0.0)] = 100.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_action_draw_font("Arial", 24.0, 0.0, 0.0))
	(GM.f_draw_set_color(12632256.0))
	(GM.f_draw_text((GM.view_xview[0] + 512.0), (GM.view_yview[0] + 150.0), "SPECIAL ITEMS 2 UNLOCKED"))
