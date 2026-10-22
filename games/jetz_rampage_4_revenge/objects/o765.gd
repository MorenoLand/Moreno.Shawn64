extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_wow = 0.0
func ev_create():
	alarm[int(0.0)] = 25.0
	(GM.f_sound_play(212.0))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	for _r439 in range(int((2.0))):
		(GM.f_instance_create((GM.vb(7.0, "x") + (GM.f_random(GM.vb(7.0, "sprite_width")))), (GM.vb(7.0, "y") + (GM.f_random(GM.vb(7.0, "sprite_height")))), 691.0))
	(GM.f_instance_create((GM.vb(7.0, "x") + (GM.f_random((GM.vb(7.0, "sprite_width") - 5.0)))), (GM.vb(7.0, "y") + (GM.f_random((GM.vb(7.0, "sprite_height") - 5.0)))), 734.0))
	v_wow = (GM.f_round((GM.f_random(1.0))))
	if (GM.eq(v_wow, 0.0)):
		(self.script_takedamagejetz())
