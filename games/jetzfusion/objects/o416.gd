extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	image_single = 0.0
	gravity_direction = 270.0
	gravity = 0.2
func ev_col_17():
	vspeed = 0.0
func ev_col_7():
	(GM.f_instance_create(0.0, 0.0, 409.0))
	for _w552 in GM.with_list((409.0), self):
		if _w552._dead:
			continue
		_w552.other = self
		GM.vset(_w552, "v_wrightthis", "Shotgun Acquired")
	(GM.f_sound_play(37.0))
	GM.G["shotgun"] = 1.0
	(GM.f_instance_destroy(self))
