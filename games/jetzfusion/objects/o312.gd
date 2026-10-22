extends "res://games/jetzfusion/scripts.gd"
var v_image_single = 0.0
func ev_create():
	v_image_single = 3.0
func ev_col_7():
	(GM.f_instance_create(0.0, 0.0, 409.0))
	for _w430 in GM.with_list((409.0), self):
		if _w430._dead:
			continue
		_w430.other = self
		GM.vset(_w430, "v_wrightthis", "Boomerang Acquired")
	for _w431 in GM.with_list((311.0), self):
		if _w431._dead:
			continue
		_w431.other = self
		(GM.f_instance_create((_w431.x + 0.0), (_w431.y + 0.0), 246.0))
	for _w432 in GM.with_list((311.0), self):
		if _w432._dead:
			continue
		_w432.other = self
		(GM.f_instance_destroy(_w432))
	for _w433 in GM.with_list((170.0), self):
		if _w433._dead:
			continue
		_w433.other = self
		(GM.f_instance_destroy(_w433))
	(GM.f_sound_play(37.0))
	GM.G["boomerang"] = 1.0
	(GM.f_instance_destroy(self))
