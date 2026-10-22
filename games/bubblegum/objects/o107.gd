extends "res://games/bubblegum/scripts.gd"
var v_poo = 0.0
func ev_create():
	(GM.f_motion_set(self, (GM.f_random(360.0)), 3.0))
func ev_step():
	if (((absf((GM.f_instance_number(24.0)) - 1.0) < 0.00001))):
		if ((((GM.f_distance_to_object(self, 24.0)) < 120.0))):
			v_poo = (GM.f_point_direction(x, y, GM.vb(24.0, "x"), GM.vb(24.0, "y")))
			(GM.f_motion_add(self, v_poo, 0.1))
	if (((hspeed > 0.0))):
		sprite_index = 78.0
		if ((1.0 >= 0.0)):
			image_index = 1.0
		image_speed = 0.0
	else:
		sprite_index = 79.0
		if ((1.0 >= 0.0)):
			image_index = 1.0
		image_speed = 0.0
	if (((speed > 5.0))):
		speed = 5.0
	if ((((GM.f_random(2.0)) < 1.0))):
		(GM.f_instance_create((x + 0.0), (y + 0.0), 101.0))
func ev_col_109():
	(GM.f_move_bounce_solid(self, 0.0))
func ev_col_108():
	(GM.f_move_bounce_solid(self, 0.0))
func ev_col_79():
	(GM.f_move_bounce_solid(self, 0.0))
func ev_col_10():
	(GM.f_move_bounce_solid(self, 0.0))
func ev_col_1():
	(GM.f_move_bounce_solid(self, 0.0))
