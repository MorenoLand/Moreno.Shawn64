extends "res://games/fwm/scripts.gd"
var v_particalcolor3 = 0.0
func ev_mouse_4():
	if (((v_particalcolor3 > 0.0))):
		(GM.f_sound_play(0.0))
		for _w21 in GM.with_list((1.0), self):
			if _w21._dead:
				continue
			_w21.other = self
			GM.vset(_w21, "v_particalcolor3", GM.vget(_w21, "v_particalcolor3") + (-1.0))
