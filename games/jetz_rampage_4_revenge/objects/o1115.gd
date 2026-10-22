extends "res://games/jetz_rampage_4_revenge/objects/o655.gd"
var v_wow = 0.0
func ev_create():
	direction = (GM.f_point_direction(x, y, (GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)), (GM.vb(7.0, "y") + (GM.vb(7.0, "sprite_height") / 2.0))))
	speed = 25.0
	(GM.f_sound_play(154.0))
	(GM.f_sound_play(251.0))
	alarm[int(0.0)] = 30.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	v_wow = (GM.f_round((GM.f_random(5.0))))
	if (GM.eq(v_wow, 0.0)):
		(GM.f_instance_create(x, y, 497.0))
	if (GM.eq(v_wow, 1.0)):
		(GM.f_instance_create(x, y, 618.0))
	if (GM.eq(v_wow, 2.0)):
		(GM.f_sound_play(146.0))
func ev_col_1049():
	pass
func ev_col_7():
	self.ev_user(0.0)
