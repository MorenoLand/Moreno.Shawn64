extends "res://games/fwm/scripts.gd"
var v_particalcolor3 = 0.0
func ev_mouse_4():
	if (((v_particalcolor3 < 4.0))):
		(GM.f_sound_play(0.0))
		for _w20 in GM.with_list((1.0), self):
			if _w20._dead:
				continue
			_w20.other = self
			GM.vset(_w20, "v_particalcolor3", GM.vget(_w20, "v_particalcolor3") + 1.0)
