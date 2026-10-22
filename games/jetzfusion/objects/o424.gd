extends "res://games/jetzfusion/scripts.gd"
var v_image_single = 0.0
func ev_create():
	v_image_single = 0.0
func ev_col_426():
	for _w568 in GM.with_list((self.other), self):
		if _w568._dead:
			continue
		_w568.other = self
		(GM.f_instance_destroy(_w568))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 427.0))
	(GM.f_instance_destroy(self))
