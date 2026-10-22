extends "res://games/holiday_hunting/scripts.gd"
var v_image_scale = 0.0
var v_image_single = 0.0
var v_what = 0.0
func ev_create():
	v_what = y
	v_image_single = (GM.f_floor((y / ((GM.room_height / 10.0)))))
	v_image_scale = (1.0 / ((GM.room_height / y)))
	if ((y > GM.vb(15.0, "y"))):
		depth = 1.0
	else:
		if ((y > GM.vb(14.0, "y"))):
			depth = 2.0
		else:
			if ((y > GM.vb(13.0, "y"))):
				depth = 3.0
			else:
				if ((y > GM.vb(12.0, "y"))):
					depth = 4.0
				else:
					if ((y > GM.vb(11.0, "y"))):
						depth = 5.0
					else:
						if ((y > GM.vb(13.0, "y"))):
							depth = 6.0
						else:
							depth = 7.0
	(GM.f_motion_set(self, (45.0 + (GM.f_random(90.0))), ((GM.f_random(GM.mouse_y)) / 40.0)))
	gravity_direction = 270.0
	gravity = 0.5
func ev_step():
	if (((y > GM.add(v_what, 10.0)))):
		(GM.f_instance_destroy(self))
