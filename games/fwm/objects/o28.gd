extends "res://games/fwm/scripts.gd"
func ev_mouse_4():
	for _w13 in GM.with_list((1.0), self):
		if _w13._dead:
			continue
		_w13.other = self
		GM.vset(18.0, "v_myshots", GM.vget(1.0, "v_shotnumber"))
	(GM.f_sound_replace(6.0, (GM.f_get_open_filename("wav files|*.wav", "")), 1.0, 0.0, 1.0))
