extends "res://games/jetzrampage/scripts.gd"
var v_alive = 0.0
var v_mypower = 0.0
func ev_create():
	y = 1220.0
	v_mypower = 2.0
	v_alive = 1.0
	if (((GM.vb(0.0, "x") > x))):
		sprite_index = 116.0
		if ((1.0 >= 0.0)):
			image_index = 1.0
		image_speed = 0.0
		(GM.f_action_move(self, "000001000", 5.0, 0.0))
	else:
		sprite_index = 115.0
		if ((1.0 >= 0.0)):
			image_index = 1.0
		image_speed = 0.0
		(GM.f_action_move(self, "000100000", 5.0, 0.0))
func ev_step():
	if (((absf((GM.f_instance_number(115.0)) - 0.0) < 0.00001))):
		if ((((GM.f_distance_to_object(self, 0.0)) < 600.0))):
			if (((GM.G["lives"] > 20.0))):
				if (((x < (GM.vb(0.0, "x") + 300.0)))):
					if (((x > (GM.vb(0.0, "x") - 300.0)))):
						(GM.f_instance_create((x + 0.0), (y + 0.0), 115.0))
						(GM.f_instance_destroy(self))
	if (((hspeed > 0.0))):
		sprite_index = 116.0
		if ((1.0 >= 0.0)):
			image_index = 1.0
		image_speed = 0.0
	if (((hspeed < 0.0))):
		sprite_index = 115.0
		if ((1.0 >= 0.0)):
			image_index = 1.0
		image_speed = 0.0
func ev_col_166():
	if (((absf(sprite_index - 115.0) < 0.00001))):
		(GM.f_instance_create((x + 0.0), (y + 0.0), 176.0))
		(GM.f_instance_destroy(self))
	if (((absf(sprite_index - 116.0) < 0.00001))):
		(GM.f_instance_create((x + 0.0), (y + 0.0), 176.0))
		(GM.f_instance_destroy(self))
func ev_col_103():
	(GM.f_instance_create((x + 0.0), (y + 0.0), 105.0))
	(GM.f_instance_create(0.0, 0.0, 130.0))
	for _r69 in range(int((30.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 134.0))
	(GM.f_instance_destroy(self))
func ev_col_10():
	(GM.f_instance_create((x + 0.0), (y + 0.0), 115.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(self.script_outside_wrap(0.0, 0.0, 0.0, 0.0, 0.0))
