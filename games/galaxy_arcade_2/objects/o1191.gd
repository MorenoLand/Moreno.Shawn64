extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 15.0
func ev_alarm_0():
	GM.G["ppscore"] = GM.G["ppscore"] + 500.0
	(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_action_draw_font("Times New Roman", 18.0, 1.0, 0.0))
	(GM.f_draw_set_color(255.0))
	(GM.f_draw_text((x + 0.0), (y + 0.0), "500"))
