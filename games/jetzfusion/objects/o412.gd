extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	(GM.f_instance_create(0.0, 0.0, 409.0))
	for _w549 in GM.with_list((409.0), self):
		if _w549._dead:
			continue
		_w549.other = self
		GM.vset(_w549, "v_wrightthis", "Photon Cannon Acquired")
	(GM.f_sound_play(37.0))
	GM.G["photoncannon"] = 1.0
	(GM.f_instance_destroy(self))
func ev_col_17():
	vspeed = 0.0
func ev_col_7():
	(GM.f_instance_create(0.0, 0.0, 409.0))
	for _w550 in GM.with_list((409.0), self):
		if _w550._dead:
			continue
		_w550.other = self
		GM.vset(_w550, "v_wrightthis", "Photon Cannon Acquired")
	(GM.f_sound_play(37.0))
	GM.G["photoncannon"] = 1.0
	(GM.f_instance_destroy(self))
