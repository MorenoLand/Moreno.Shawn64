extends "res://games/jetzfusion/scripts.gd"
func ev_col_7():
	(GM.f_instance_create(0.0, 0.0, 409.0))
	for _w164 in GM.with_list((409.0), self):
		if _w164._dead:
			continue
		_w164.other = self
		GM.vset(_w164, "v_wrightthis", "Chainsaw Acquired")
	(GM.f_sound_play(37.0))
	GM.G["chainsaw"] = 1.0
	(GM.f_instance_destroy(self))
