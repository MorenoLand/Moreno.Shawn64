extends "res://games/fwm/scripts.gd"
var v_particalgravity = 0.0
func ev_mouse_0():
	if (((v_particalgravity > 0.05))):
		(GM.f_sound_play(0.0))
		for _w8 in GM.with_list((1.0), self):
			if _w8._dead:
				continue
			_w8.other = self
			GM.vset(_w8, "v_particalgravity", GM.vget(_w8, "v_particalgravity") + (-0.05))
