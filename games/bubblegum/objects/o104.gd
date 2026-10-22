extends "res://games/bubblegum/scripts.gd"
var v_twoboss = 0.0
func ev_create():
	(GM.f_action_move(self, "000001000", 2.0, 0.0))
func ev_step():
	if ((((GM.f_random(20.0)) < 1.0))):
		(GM.f_motion_add(self, 90.0, 1.0))
func ev_col_79():
	if ((GM.eq(GM.room, v_twoboss))):
		(GM.f_sound_play(4.0))
		(GM.f_instance_create(0.0, 0.0, 105.0))
	(GM.f_move_bounce_solid(self, 0.0))
func ev_col_7():
	(GM.f_move_bounce_solid(self, 0.0))
