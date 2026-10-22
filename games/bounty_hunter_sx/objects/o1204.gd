extends "res://games/bounty_hunter_sx/scripts.gd"
func ev_create():
	x = (GM.f_random(GM.room_width))
	y = (GM.f_random(GM.room_height))
	(GM.f_action_move(self, "101000101", 1.0, 0.0))
func ev_step():
	(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 1205.0))
func ev_col_1219():
	(GM.f_move_bounce_solid(self, 0.0))
func ev_col_1087():
	x = (GM.f_random(GM.room_width))
	y = (GM.f_random(GM.room_height))
func ev_other_1():
	(self.script_outside_bounce(0.0, 0.0, 0.0, 0.0, 0.0))
