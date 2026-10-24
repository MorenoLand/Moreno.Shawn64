extends "res://games/fwm/scripts.gd"
var v_particalcolor2 = 0.0
func ev_mouse_4():
	if (((v_particalcolor2 < 4.0))):
		(GM.f_sound_play(0.0))
		for _w18 in GM.with_list((1.0), self):
			if _w18._dead:
				continue
			_w18.other = self
			GM.vset(_w18, "v_particalcolor2", GM.vget(_w18, "v_particalcolor2") + 1.0)
