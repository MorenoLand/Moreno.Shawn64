extends "res://games/fwm/scripts.gd"
var v_particalcolor2 = 0.0
func ev_mouse_4():
	if (((v_particalcolor2 > 0.0))):
		(GM.f_sound_play(0.0))
		for _w19 in GM.with_list((1.0), self):
			if _w19._dead:
				continue
			_w19.other = self
			GM.vset(_w19, "v_particalcolor2", GM.vget(_w19, "v_particalcolor2") + (-1.0))
