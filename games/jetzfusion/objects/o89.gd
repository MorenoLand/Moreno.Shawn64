extends "res://games/jetzfusion/scripts.gd"
var v_image_single = 0.0
func ev_create():
	alarm[int(0.0)] = 100.0
	depth = 3.0
func ev_alarm_0():
	if (((((((((((((absf(sprite_index - 92.0) < 0.00001) or (absf(sprite_index - 96.0) < 0.00001)) or (absf(sprite_index - 100.0) < 0.00001)) or (absf(sprite_index - 108.0) < 0.00001)) or (absf(sprite_index - 112.0) < 0.00001)) or (absf(sprite_index - 118.0) < 0.00001)) or (absf(sprite_index - 122.0) < 0.00001)) or (absf(sprite_index - 126.0) < 0.00001)) or (absf(sprite_index - 132.0) < 0.00001)) or (absf(sprite_index - 138.0) < 0.00001)) or (absf(sprite_index - 142.0) < 0.00001)) or (absf(sprite_index - 146.0) < 0.00001))):
		(GM.f_instance_create(x, y, 191.0))
	else:
		(GM.f_instance_create(x, y, 192.0))
	(GM.f_instance_destroy(self))
func ev_other_7():
	v_image_single = (image_number - 1.0)
