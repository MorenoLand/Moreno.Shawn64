extends "res://games/fwm/scripts.gd"
var v_myshots = 0.0
func ev_mouse_4():
	if (((absf((GM.f_instance_number(13.0)) - 0.0) < 0.00001))):
		if (((absf(v_myshots - 0.0) < 0.00001))):
			for _w14 in GM.with_list((18.0), self):
				if _w14._dead:
					continue
				_w14.other = self
				GM.vset(_w14, "v_sparky", 1.0)
			(GM.f_sound_loop(1.0))
			GM.vset(18.0, "v_myshots", GM.vget(1.0, "v_shotnumber"))
			for _w15 in GM.with_list((18.0), self):
				if _w15._dead:
					continue
				_w15.other = self
				_w15.alarm[int(0.0)] = 50.0
