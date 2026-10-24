extends "res://games/missilewave3d/scripts.gd"
func ev_step():
	(GM.f_instance_create((GM.view_xview[int(0.0)] + (GM.f_random(800.0))), (GM.view_yview[int(0.0)] + (GM.f_random(600.0))), 23.0))
	if (((absf((GM.f_instance_number(108.0)) - 0.0) < 0.00001))):
		sprite_index = 66.0
		if ((1.0 >= 0.0)):
			image_index = 1.0
		image_speed = 0.0
	if (not ((((GM.f_sound_isplaying(19.0)))) >= 0.5)):
		if (((absf((GM.f_instance_number(108.0)) - 0.0) < 0.00001))):
			(GM.f_room_goto_next())
