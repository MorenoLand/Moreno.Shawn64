extends "res://games/bubblegum/scripts.gd"
var v_image_single = 0.0
func ev_step():
	if (((absf((GM.f_keyboard_check(37.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_keyboard_check(39.0)) - 0.0) < 0.00001))):
			(GM.f_action_move(self, "000010000", 0.0, 0.0))
			v_image_single = 0.0
		else:
			v_image_single = (-1.0)
func ev_col_9():
	hspeed = 0.0
func ev_col_1():
	hspeed = 0.0
func ev_key_39():
	(GM.f_action_move(self, "000001000", 3.0, 0.0))
	sprite_index = 20.0
	if ((1.0 >= 0.0)):
		image_index = 1.0
	image_speed = 0.0
func ev_key_37():
	(GM.f_action_move(self, "000100000", 3.0, 0.0))
	sprite_index = 19.0
	if ((1.0 >= 0.0)):
		image_index = 1.0
	image_speed = 0.0
func ev_keypress_40():
	GM.view_object[int(0.0)] = 0.0
	(GM.f_instance_create((x + 0.0), (y + 17.0), 0.0))
	(GM.f_instance_destroy(self))
