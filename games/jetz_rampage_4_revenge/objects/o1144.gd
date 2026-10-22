extends "res://games/jetz_rampage_4_revenge/objects/o502.gd"
func ev_create():
	alarm[int(1.0)] = 1.0
	(GM.f_sound_play(117.0))
	hspeed = hspeed + GM.vb(1143.0, "hspeed")
	vspeed = vspeed + GM.vb(1143.0, "vspeed")
	alarm[int(0.0)] = 20.0
func ev_alarm_1():
	if ((absf(GM.vget(1143.0, "v_guyright") - 1.0) < 0.00001)):
		(GM.f_motion_add(self, 0.0, 20.0))
	else:
		(GM.f_motion_add(self, 180.0, 20.0))
func ev_col_979():
	self.ev_user(0.0)
func ev_col_962():
	self.ev_user(0.0)
