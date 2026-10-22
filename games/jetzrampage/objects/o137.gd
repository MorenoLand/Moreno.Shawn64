extends "res://games/jetzrampage/scripts.gd"
var v_shotready = 0.0
func ev_create():
	v_shotready = 1.0
	(GM.f_action_move(self, "010000000", 3.0, 0.0))
func ev_alarm_0():
	v_shotready = 1.0
func ev_step():
	if (((GM.vb(0.0, "x") > x))):
		sprite_index = 132.0
		if ((1.0 >= 0.0)):
			image_index = 1.0
		image_speed = 0.0
		if ((((GM.f_distance_to_object(self, 0.0)) < 800.0))):
			if (((y > (GM.vb(0.0, "y") - 80.0)))):
				if (((y < (GM.vb(0.0, "y") + 80.0)))):
					if ((((GM.f_random(5.0)) < 1.0))):
						if (((absf(v_shotready - 1.0) < 0.00001))):
							(GM.f_instance_create((x + 35.0), (y + 52.0), 139.0))
							v_shotready = 0.0
							alarm[int(0.0)] = 5.0
	else:
		sprite_index = 131.0
		if ((1.0 >= 0.0)):
			image_index = 1.0
		image_speed = 0.0
		if ((((GM.f_distance_to_object(self, 0.0)) < 800.0))):
			if (((y > (GM.vb(0.0, "y") - 80.0)))):
				if (((y < (GM.vb(0.0, "y") + 80.0)))):
					if ((((GM.f_random(5.0)) < 1.0))):
						if (((absf(v_shotready - 1.0) < 0.00001))):
							(GM.f_instance_create((x + 35.0), (y + 52.0), 140.0))
							v_shotready = 0.0
							alarm[int(0.0)] = 5.0
func ev_col_103():
	gravity_direction = 270.0
	gravity = 0.3
	(GM.f_instance_create(0.0, 0.0, 130.0))
	(GM.f_instance_change(self, 138.0, 0.0))
func ev_col_16():
	(GM.f_instance_create((x + 0.0), (y + 0.0), 114.0))
	(GM.f_instance_destroy(self))
func ev_col_10():
	gravity_direction = 270.0
	gravity = 0.3
	(GM.f_instance_create(0.0, 0.0, 130.0))
	(GM.f_instance_change(self, 138.0, 0.0))
