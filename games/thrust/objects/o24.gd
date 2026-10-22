extends "res://games/thrust/scripts.gd"
func ev_col_0():
	(GM.f_instance_create((x + 0.0), (y + 0.0), 27.0))
	(GM.f_instance_create(0.0, 0.0, 25.0))
	(GM.f_sound_play(3.0))
	for _w20 in GM.with_list((0.0), self):
		if _w20._dead:
			continue
		_w20.other = self
		GM.vset(_w20, "v_havekey", 1.0)
	(GM.f_instance_destroy(self))
