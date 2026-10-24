extends "res://games/fwm/scripts.gd"
var v_particalcolor = 0.0
func ev_mouse_4():
	if (((v_particalcolor > 0.0))):
		(GM.f_sound_play(0.0))
		for _w12 in GM.with_list((1.0), self):
			if _w12._dead:
				continue
			_w12.other = self
			GM.vset(_w12, "v_particalcolor", GM.vget(_w12, "v_particalcolor") + (-1.0))
