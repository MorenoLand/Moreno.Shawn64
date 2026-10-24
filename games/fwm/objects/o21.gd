extends "res://games/fwm/scripts.gd"
var v_particalgravity = 0.0
func ev_mouse_0():
	if (((v_particalgravity < 2.0))):
		(GM.f_sound_play(0.0))
		for _w7 in GM.with_list((1.0), self):
			if _w7._dead:
				continue
			_w7.other = self
			GM.vset(_w7, "v_particalgravity", GM.vget(_w7, "v_particalgravity") + 0.05)
