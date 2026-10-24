extends "res://games/fwm/scripts.gd"
var v_shotgravity = 0.0
func ev_mouse_0():
	if (((v_shotgravity > 0.05))):
		(GM.f_sound_play(0.0))
		for _w27 in GM.with_list((1.0), self):
			if _w27._dead:
				continue
			_w27.other = self
			GM.vset(_w27, "v_shotgravity", GM.vget(_w27, "v_shotgravity") + (-0.05))
