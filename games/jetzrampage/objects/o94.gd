extends "res://games/jetzrampage/scripts.gd"
func ev_create():
	x = (GM.f_random(GM.room_width))
	y = (GM.f_random(900.0))
	if ((((GM.f_random(2.0)) < 1.0))):
		(GM.f_action_move(self, "000001000", 5.0, 0.0))
		sprite_index = 94.0
		if ((1.0 >= 0.0)):
			image_index = 1.0
		image_speed = 0.0
	else:
		(GM.f_action_move(self, "000100000", 5.0, 0.0))
		sprite_index = 95.0
		if ((1.0 >= 0.0)):
			image_index = 1.0
		image_speed = 0.0
func ev_col_166():
	for _r48 in range(int((15.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
	(GM.f_instance_destroy(self))
func ev_col_103():
	for _r49 in range(int((15.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
	(GM.f_instance_destroy(self))
func ev_col_10():
	for _r50 in range(int((15.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(self.script_outside_wrap(0.0, 0.0, 0.0, 0.0, 0.0))
