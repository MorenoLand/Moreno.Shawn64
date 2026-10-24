extends "res://games/gm_hoops/scripts.gd"
var v_starts = 0.0
func ev_create():
	v_starts = 1.0
func ev_step():
	(self.script_hover(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_mouse_4():
	if (((absf(v_starts - 1.0) < 0.00001))):
		(GM.f_instance_create(0.0, 0.0, 29.0))
		(GM.f_sound_play(6.0))
		for _w13 in GM.with_list((28.0), self):
			if _w13._dead:
				continue
			_w13.other = self
			GM.vset(_w13, "v_blah", 0.0)
		v_starts = 0.0
