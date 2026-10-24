extends "res://games/fwm/scripts.gd"
var v_shotgravity = 0.0
func ev_mouse_0():
	if (((v_shotgravity < 2.0))):
		(GM.f_sound_play(0.0))
		for _w26 in GM.with_list((1.0), self):
			if _w26._dead:
				continue
			_w26.other = self
			GM.vset(_w26, "v_shotgravity", GM.vget(_w26, "v_shotgravity") + 0.05)
