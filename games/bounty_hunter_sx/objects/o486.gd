extends "res://games/bounty_hunter_sx/scripts.gd"
var v_mypower = 0.0
func ev_create():
	v_mypower = 10.0
	(GM.f_motion_set(self, (GM.f_random(360.0)), (3.0 + (GM.f_random(3.0)))))
func ev_col_1219():
	(GM.f_move_bounce_solid(self, 0.0))
func ev_col_1201():
	(GM.f_sound_play(293.0))
	for _r26 in range(int((450.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 488.0))
	for _r27 in range(int((2.0))):
		(GM.f_instance_create((x + 25.0), (y + 25.0), 487.0))
	(GM.f_instance_destroy(self))
func ev_col_1177():
	(GM.f_sound_play(293.0))
	for _r28 in range(int((450.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 488.0))
	for _r29 in range(int((2.0))):
		(GM.f_instance_create((x + 25.0), (y + 25.0), 487.0))
	(GM.f_instance_destroy(self))
func ev_col_1087():
	x = (GM.f_random(GM.room_width))
	y = (GM.f_random(GM.room_height))
func ev_col_489():
	if (((v_mypower < 1.0))):
		(GM.f_sound_play(293.0))
		for _r30 in range(int((450.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 488.0))
		for _r31 in range(int((2.0))):
			(GM.f_instance_create((x + 25.0), (y + 25.0), 487.0))
		(GM.f_instance_destroy(self))
	else:
		(GM.f_sound_play(301.0))
func ev_col_482():
	for _r32 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 488.0))
	for _r33 in range(int((2.0))):
		(GM.f_instance_create((x + 25.0), (y + 25.0), 487.0))
	(GM.f_instance_destroy(self))
func ev_other_1():
	(self.script_outside_bounce(0.0, 0.0, 0.0, 0.0, 0.0))
