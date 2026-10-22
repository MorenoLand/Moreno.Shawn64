extends "res://games/jetz_rampage_4_revenge/objects/o502.gd"
func ev_create():
	(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 545.0))
	alarm[int(1.0)] = 1.0
	hspeed = hspeed + GM.vb(7.0, "hspeed")
	vspeed = vspeed + GM.vb(7.0, "vspeed")
	alarm[int(0.0)] = 20.0
	(GM.f_sound_play(225.0))
func ev_alarm_1():
	if ((absf(GM.vget(7.0, "v_guyright") - 1.0) < 0.00001)):
		(GM.f_motion_add(self, 0.0, 25.0))
	else:
		(GM.f_motion_add(self, 180.0, 25.0))
