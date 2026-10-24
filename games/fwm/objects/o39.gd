extends "res://games/fwm/scripts.gd"
var v_shotnumber = 0.0
func ev_mouse_4():
	if (((v_shotnumber > 1.0))):
		(GM.f_sound_play(0.0))
		for _w23 in GM.with_list((1.0), self):
			if _w23._dead:
				continue
			_w23.other = self
			GM.vset(_w23, "v_shotnumber", GM.vget(_w23, "v_shotnumber") + (-1.0))
