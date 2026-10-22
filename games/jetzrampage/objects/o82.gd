extends "res://games/jetzrampage/scripts.gd"
func ev_create():
	(GM.f_action_move(self, "000001000", 1.0, 0.0))
func ev_step():
	if (((hspeed > 0.5))):
		(GM.f_instance_create((x + 1.0), (y + 36.0), 14.0))
		sprite_index = 80.0
		if ((1.0 >= 0.0)):
			image_index = 1.0
		image_speed = 0.0
	else:
		(GM.f_instance_create((x + 157.0), (y + 36.0), 11.0))
		sprite_index = 91.0
		if ((1.0 >= 0.0)):
			image_index = 1.0
		image_speed = 0.0
func ev_col_17():
	hspeed = (-hspeed)
func ev_other_0():
	(self.script_outside_wrap(0.0, 0.0, 0.0, 0.0, 0.0))
