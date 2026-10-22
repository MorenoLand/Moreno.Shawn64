extends "res://games/ski_racer_2/scripts.gd"
func ev_create():
	(GM.f_action_move(self, "000001000", 10.0, 0.0))
	(GM.f_sound_loop(23.0))
func ev_destroy():
	(GM.f_sound_stop(23.0))
func ev_step():
	if (((x > (GM.room_width + 1300.0)))):
		(GM.f_instance_destroy(self))
	if (((y < (GM.view_yview[0] - sprite_height)))):
		(GM.f_instance_destroy(self))
