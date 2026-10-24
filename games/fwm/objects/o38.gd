extends "res://games/fwm/scripts.gd"
var v_shotnumber = 0.0
func ev_mouse_4():
	if (((v_shotnumber < 50.0))):
		(GM.f_sound_play(0.0))
		for _w22 in GM.with_list((1.0), self):
			if _w22._dead:
				continue
			_w22.other = self
			GM.vset(_w22, "v_shotnumber", GM.vget(_w22, "v_shotnumber") + 1.0)
