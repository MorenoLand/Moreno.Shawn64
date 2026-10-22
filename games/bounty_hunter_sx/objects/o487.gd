extends "res://games/bounty_hunter_sx/scripts.gd"
var v_mypower = 0.0
func ev_create():
	v_mypower = 5.0
	(GM.f_motion_set(self, (GM.f_random(360.0)), (3.0 + (GM.f_random(3.0)))))
func ev_col_1219():
	(GM.f_move_bounce_solid(self, 0.0))
func ev_col_1201():
	(GM.f_sound_play(293.0))
	for _r34 in range(int((300.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 488.0))
	for _r35 in range(int((4.0))):
		(GM.f_instance_create((x + 12.5), (y + 12.5), 490.0))
	(GM.f_instance_destroy(self))
func ev_col_1177():
	(GM.f_sound_play(293.0))
	for _r36 in range(int((300.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 488.0))
	for _r37 in range(int((4.0))):
		(GM.f_instance_create((x + 12.5), (y + 12.5), 490.0))
	(GM.f_instance_destroy(self))
func ev_col_1087():
	x = (GM.f_random(GM.room_width))
	y = (GM.f_random(GM.room_height))
func ev_col_489():
	if (((v_mypower < 1.0))):
		(GM.f_sound_play(293.0))
		for _r38 in range(int((300.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 488.0))
		for _r39 in range(int((4.0))):
			(GM.f_instance_create((x + 12.5), (y + 12.5), 490.0))
		(GM.f_instance_destroy(self))
	else:
		(GM.f_sound_play(301.0))
func ev_col_482():
	for _r40 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 488.0))
	for _r41 in range(int((4.0))):
		(GM.f_instance_create((x + 12.5), (y + 12.5), 490.0))
	(GM.f_instance_destroy(self))
func ev_other_1():
	(self.script_outside_bounce(0.0, 0.0, 0.0, 0.0, 0.0))
