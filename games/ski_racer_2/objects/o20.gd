extends "res://games/ski_racer_2/scripts.gd"
var v_rool = 0.0
func ev_create():
	v_rool = (GM.f_round((GM.f_random(3.0))))
	if ((absf(v_rool - 0.0) < 0.00001)):
		sprite_index = 2.0
	if ((absf(v_rool - 1.0) < 0.00001)):
		sprite_index = 10.0
	if ((absf(v_rool - 2.0) < 0.00001)):
		sprite_index = 33.0
	if ((absf(v_rool - 3.0) < 0.00001)):
		sprite_index = 35.0
	(GM.f_action_move(self, "010000000", (5.0 + (GM.f_random(5.0))), 0.0))
func ev_step():
	if (((absf(GM.room - 3.0) < 0.00001))):
		if ((GM.view_yview[int(0.0)] < GM.view_yview[int(1.0)])):
			if ((y < (GM.view_yview[int(0.0)] - sprite_height))):
				(GM.f_instance_destroy(self))
		if ((GM.view_yview[int(1.0)] < GM.view_yview[int(0.0)])):
			if ((y < (GM.view_yview[int(1.0)] - sprite_height))):
				(GM.f_instance_destroy(self))
	else:
		if (((y < (GM.view_yview[0] - sprite_height)))):
			(GM.f_instance_destroy(self))
func ev_other_7():
	(GM.f_sound_play(1.0))
