extends "res://games/jetzrampage/scripts.gd"
var v_mypower = 0.0
func ev_create():
	v_mypower = 2.0
	(GM.f_action_move(self, "000001000", 3.0, 0.0))
func ev_col_80():
	hspeed = (-hspeed)
	if (((absf(sprite_index - 82.0) < 0.00001))):
		sprite_index = 85.0
		if ((1.0 >= 0.0)):
			image_index = 1.0
		image_speed = 0.0
	else:
		if (((absf(sprite_index - 85.0) < 0.00001))):
			sprite_index = 82.0
			if ((1.0 >= 0.0)):
				image_index = 1.0
			image_speed = 0.0
	if (((absf(sprite_index - 83.0) < 0.00001))):
		sprite_index = 84.0
		if ((1.0 >= 0.0)):
			image_index = 1.0
		image_speed = 0.0
	else:
		if (((absf(sprite_index - 84.0) < 0.00001))):
			sprite_index = 83.0
			if ((1.0 >= 0.0)):
				image_index = 1.0
			image_speed = 0.0
func ev_col_10():
	v_mypower = v_mypower + (-1.0)
	if (((absf(v_mypower - 0.0) < 0.00001))):
		for _r67 in range(int((15.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
		(GM.f_instance_destroy(self))
	else:
		for _r68 in range(int((15.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
func ev_other_0():
	(self.script_outside_wrap(0.0, 0.0, 0.0, 0.0, 0.0))
