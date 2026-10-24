extends "res://games/galaxy_arcade/scripts.gd"
func ev_create():
	(GM.f_action_move(self, "000001000", 3.0, 0.0))
	if ((((GM.f_random(2.0)) < 1.0))):
		sprite_index = 41.0
		image_speed = 1.0
	alarm[int(0.0)] = 1000.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_col_98():
	(GM.f_sound_play(5.0))
	GM.G["guymisses"] = GM.G["guymisses"] + (-1.0)
	(GM.f_instance_destroy(self))
func ev_col_69():
	GM.score = GM.score + 100.0
	(GM.f_instance_destroy(self))
