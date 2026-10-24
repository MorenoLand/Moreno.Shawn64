extends "res://games/fwm/scripts.gd"
var v_particalspeed = 0.0
func ev_mouse_0():
	if (((v_particalspeed < 50.0))):
		(GM.f_sound_play(0.0))
		for _w4 in GM.with_list((1.0), self):
			if _w4._dead:
				continue
			_w4.other = self
			GM.vset(_w4, "v_particalspeed", GM.vget(_w4, "v_particalspeed") + 0.1)
