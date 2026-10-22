extends "res://games/bubblegum/scripts.gd"
var v_image_single = 0.0
func ev_step():
	if (((absf((GM.f_keyboard_check(38.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_keyboard_check(40.0)) - 0.0) < 0.00001))):
			(GM.f_action_move(self, "000010000", 0.0, 0.0))
			v_image_single = 0.0
		else:
			v_image_single = (-1.0)
func ev_col_92():
	GM.view_object[int(0.0)] = 67.0
	(GM.f_instance_create((x + 0.0), (y + 0.0), 67.0))
	for _w62 in GM.with_list((76.0), self):
		if _w62._dead:
			continue
		_w62.other = self
		GM.vset(_w62, "v_mypower", 3.0)
	(GM.f_instance_destroy(self))
func ev_col_7():
	vspeed = 0.0
func ev_key_40():
	(GM.f_action_move(self, "010000000", 3.0, 0.0))
func ev_key_38():
	(GM.f_action_move(self, "000000010", 3.0, 0.0))
func ev_key_37():
	GM.view_object[int(0.0)] = 0.0
	(GM.f_instance_create((x + (-5.0)), (y + 0.0), 0.0))
	GM.vsetb(0.0, "hspeed", (-6.0))
	GM.vsetb(0.0, "vspeed", (-3.0))
	(GM.f_instance_destroy(self))
