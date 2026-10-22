extends "res://games/jetzfusion/scripts.gd"
var v_image_single = 0.0
func ev_create():
	v_image_single = 0.0
func ev_col_7():
	for _w520 in GM.with_list((390.0), self):
		if _w520._dead:
			continue
		_w520.other = self
		(GM.f_instance_create((_w520.x + 0.0), (_w520.y + 0.0), 246.0))
	for _w521 in GM.with_list((390.0), self):
		if _w521._dead:
			continue
		_w521.other = self
		(GM.f_instance_destroy(_w521))
	(GM.f_instance_create(0.0, 0.0, 409.0))
	for _w522 in GM.with_list((409.0), self):
		if _w522._dead:
			continue
		_w522.other = self
		GM.vset(_w522, "v_wrightthis", "Lightsaber Acquired")
	for _w523 in GM.with_list((170.0), self):
		if _w523._dead:
			continue
		_w523.other = self
		(GM.f_instance_destroy(_w523))
	(GM.f_sound_play(37.0))
	GM.G["lightsaber"] = 1.0
	(GM.f_instance_destroy(self))
