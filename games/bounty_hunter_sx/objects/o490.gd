extends "res://games/bounty_hunter_sx/scripts.gd"
var v_mypower = 0.0
func ev_create():
	v_mypower = 3.0
	(GM.f_motion_set(self, (GM.f_random(360.0)), (3.0 + (GM.f_random(3.0)))))
func ev_col_1219():
	(GM.f_move_bounce_solid(self, 0.0))
func ev_col_1201():
	if ((((GM.f_instance_number(490.0)) < 300.0))):
		(GM.f_instance_create((GM.f_random(GM.room_width)), (GM.f_random(GM.room_height)), 1066.0))
	else:
		if ((((GM.f_instance_number(487.0)) < 50.0))):
			(GM.f_instance_create((GM.f_random(GM.room_width)), (GM.f_random(GM.room_height)), 487.0))
		else:
			if ((((GM.f_instance_number(486.0)) < 25.0))):
				(GM.f_instance_create((GM.f_random(GM.room_width)), (GM.f_random(GM.room_height)), 486.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 1075.0))
	(GM.f_sound_play(293.0))
	for _r45 in range(int((200.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 488.0))
	(GM.f_instance_destroy(self))
func ev_col_1177():
	if ((((GM.f_instance_number(490.0)) < 300.0))):
		(GM.f_instance_create((GM.f_random(GM.room_width)), (GM.f_random(GM.room_height)), 1066.0))
	else:
		if ((((GM.f_instance_number(487.0)) < 50.0))):
			(GM.f_instance_create((GM.f_random(GM.room_width)), (GM.f_random(GM.room_height)), 487.0))
		else:
			if ((((GM.f_instance_number(486.0)) < 25.0))):
				(GM.f_instance_create((GM.f_random(GM.room_width)), (GM.f_random(GM.room_height)), 486.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 1075.0))
	(GM.f_sound_play(293.0))
	for _r46 in range(int((200.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 488.0))
	(GM.f_instance_destroy(self))
func ev_col_1087():
	x = (GM.f_random(GM.room_width))
	y = (GM.f_random(GM.room_height))
func ev_col_489():
	if (((v_mypower < 1.0))):
		if ((((GM.f_instance_number(490.0)) < 300.0))):
			(GM.f_instance_create((GM.f_random(GM.room_width)), (GM.f_random(GM.room_height)), 1066.0))
		else:
			if ((((GM.f_instance_number(487.0)) < 50.0))):
				(GM.f_instance_create((GM.f_random(GM.room_width)), (GM.f_random(GM.room_height)), 487.0))
			else:
				if ((((GM.f_instance_number(486.0)) < 25.0))):
					(GM.f_instance_create((GM.f_random(GM.room_width)), (GM.f_random(GM.room_height)), 486.0))
		(GM.f_instance_create((x + 0.0), (y + 0.0), 1075.0))
		(GM.f_sound_play(293.0))
		for _r47 in range(int((200.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 488.0))
		(GM.f_instance_destroy(self))
	else:
		(GM.f_sound_play(301.0))
func ev_col_482():
	for _r48 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 488.0))
	(GM.f_instance_destroy(self))
func ev_other_1():
	(self.script_outside_bounce(0.0, 0.0, 0.0, 0.0, 0.0))
