extends "res://games/fwm/scripts.gd"
var v_shotspeed = 0.0
func ev_mouse_0():
	if (((v_shotspeed < 100.0))):
		(GM.f_sound_play(0.0))
		for _w24 in GM.with_list((1.0), self):
			if _w24._dead:
				continue
			_w24.other = self
			GM.vset(_w24, "v_shotspeed", GM.vget(_w24, "v_shotspeed") + 1.0)
