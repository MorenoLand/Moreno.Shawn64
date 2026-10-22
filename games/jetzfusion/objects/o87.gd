extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	x = ((GM.room_width / 2.0) - (sprite_width / 2.0))
	y = ((GM.room_height / 2.0) - (sprite_height / 2.0))
	GM.G["colory"] = 16.0
	(GM.f_sound_play(6.0))
	for _r112 in range(int((100.0))):
		(GM.f_instance_create(0.0, 0.0, 88.0))
func ev_step():
	if (not ((((GM.f_sound_isplaying(6.0)))) >= 0.5)):
		if (((absf((GM.f_instance_number(468.0)) - 0.0) < 0.00001))):
			(GM.f_instance_create(0.0, 0.0, 468.0))
