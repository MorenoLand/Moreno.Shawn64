extends "res://games/fwm/scripts.gd"
var v_particaltime = 0.0
func ev_mouse_0():
	if (((v_particaltime < 1.0))):
		(GM.f_sound_play(0.0))
		for _w9 in GM.with_list((1.0), self):
			if _w9._dead:
				continue
			_w9.other = self
			GM.vset(_w9, "v_particaltime", GM.vget(_w9, "v_particaltime") + 0.01)
