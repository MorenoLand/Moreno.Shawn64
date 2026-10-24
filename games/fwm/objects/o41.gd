extends "res://games/fwm/scripts.gd"
var v_shotspeed = 0.0
func ev_mouse_0():
	if (((v_shotspeed > 0.0))):
		(GM.f_sound_play(0.0))
		for _w25 in GM.with_list((1.0), self):
			if _w25._dead:
				continue
			_w25.other = self
			GM.vset(_w25, "v_shotspeed", GM.vget(_w25, "v_shotspeed") + (-1.0))
