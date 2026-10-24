extends "res://games/fwm/scripts.gd"
var v_particalspeed = 0.0
func ev_mouse_0():
	if (((v_particalspeed > 0.1))):
		(GM.f_sound_play(0.0))
		for _w5 in GM.with_list((1.0), self):
			if _w5._dead:
				continue
			_w5.other = self
			GM.vset(_w5, "v_particalspeed", GM.vget(_w5, "v_particalspeed") + (-0.1))
