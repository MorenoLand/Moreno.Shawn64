extends "res://games/fwm/scripts.gd"
var v_particalcolor = 0.0
func ev_mouse_4():
	if (((v_particalcolor < 4.0))):
		(GM.f_sound_play(0.0))
		for _w11 in GM.with_list((1.0), self):
			if _w11._dead:
				continue
			_w11.other = self
			GM.vset(_w11, "v_particalcolor", GM.vget(_w11, "v_particalcolor") + 1.0)
