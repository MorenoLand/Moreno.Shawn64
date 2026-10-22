extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_create():
	direction = (70.0 + (GM.f_random(40.0)))
	speed = (1.0 + (GM.f_random(3.0)))
	if (((self.script_view_check(self)))) >= 0.5:
		if not ((((GM.f_sound_isplaying(237.0)))) >= 0.5):
			(GM.f_sound_play(237.0))
func ev_col_551():
	(GM.f_instance_destroy(self))
func ev_other_7():
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
