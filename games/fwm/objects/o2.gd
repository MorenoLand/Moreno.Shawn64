extends "res://games/fwm/scripts.gd"
var v_particalnumber = 0.0
func ev_mouse_0():
	if (((v_particalnumber > 0.0))):
		(GM.f_sound_play(0.0))
		for _w2 in GM.with_list((1.0), self):
			if _w2._dead:
				continue
			_w2.other = self
			GM.vset(_w2, "v_particalnumber", GM.vget(_w2, "v_particalnumber") + (-1.0))
