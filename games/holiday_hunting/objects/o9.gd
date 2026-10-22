extends "res://games/holiday_hunting/scripts.gd"
var v_image_scale = 0.0
func ev_create():
	v_image_scale = (1.0 / ((GM.room_height / GM.mouse_y)))
func ev_step():
	x = ((GM.mouse_x + 66.0) - (sprite_width / 2.0))
	y = (GM.room_height - (sprite_height / 3.0))
	v_image_scale = (1.0 / ((GM.room_height / GM.mouse_y)))
func ev_other_7():
	(GM.f_instance_create((x + 0.0), (y + 0.0), 8.0))
	(GM.f_instance_destroy(self))
