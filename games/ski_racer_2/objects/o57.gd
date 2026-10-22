extends "res://games/ski_racer_2/scripts.gd"
func ev_create():
	(GM.f_action_move(self, "000000010", 2.0, 0.0))
func ev_step():
	if (((y < (GM.view_yview[0] - sprite_height)))):
		y = (GM.view_yview[0] + 768.0)
