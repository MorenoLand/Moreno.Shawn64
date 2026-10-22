extends "res://games/jetz_rampage_4_revenge/objects/o680.gd"
func ev_create():
	GM.vsetb(742.0, "visible", 0.0)
	GM.vsetb(881.0, "visible", 0.0)
	(GM.f_sound_play(219.0))
	alarm[int(0.0)] = (40.0 * 30.0)
