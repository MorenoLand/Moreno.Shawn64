extends "res://games/jetzrampage/objects/o126.gd"
func ev_create():
	(GM.f_sound_play(8.0))
	(GM.f_motion_set(self, 0.0, (GM.vb(71.0, "speed") + 10.0)))
	vspeed = GM.vb(71.0, "vspeed")
