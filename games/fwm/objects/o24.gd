extends "res://games/fwm/scripts.gd"
var v_particaltime = 0.0
func ev_mouse_0():
	if (((v_particaltime > 0.0))):
		(GM.f_sound_play(0.0))
		for _w10 in GM.with_list((1.0), self):
			if _w10._dead:
				continue
			_w10.other = self
			GM.vset(_w10, "v_particaltime", GM.vget(_w10, "v_particaltime") + (-0.01))
