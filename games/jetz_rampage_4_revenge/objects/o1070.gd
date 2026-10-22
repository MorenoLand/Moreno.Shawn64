extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_create():
	image_speed = 0.3
func ev_col_7():
	if (((GM.f_instance_number(1071.0)) > 0.0)):
		GM.vset(1071.0, "v_coins", GM.vget(1071.0, "v_coins") + 1.0)
	if (((GM.f_instance_number(1072.0)) > 0.0)):
		GM.vset(1072.0, "v_coins", GM.vget(1072.0, "v_coins") + 1.0)
	(GM.f_sound_play(161.0))
	(GM.f_instance_destroy(self))
