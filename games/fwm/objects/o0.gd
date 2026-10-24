extends "res://games/fwm/scripts.gd"
var v_particalnumber = 0.0
func ev_mouse_0():
	if (((v_particalnumber < 1000.0))):
		(GM.f_sound_play(0.0))
		for _w1 in GM.with_list((1.0), self):
			if _w1._dead:
				continue
			_w1.other = self
			GM.vset(_w1, "v_particalnumber", GM.vget(_w1, "v_particalnumber") + 1.0)
