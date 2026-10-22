extends "res://games/ski_racer_2/scripts.gd"
func ev_create():
	if ((((GM.f_random(2.0)) < 1.0))):
		sprite_index = 57.0
		direction = 0.0
		speed = (5.0 + (GM.f_random(10.0)))
		x = (GM.f_random((GM.room_width - sprite_width)))
		y = (GM.view_yview[0] + 768.0)
	else:
		sprite_index = 56.0
		direction = 180.0
		speed = (5.0 + (GM.f_random(10.0)))
		x = (GM.f_random((GM.room_width - sprite_width)))
		y = (GM.view_yview[0] + 768.0)
func ev_step():
	if ((y < (GM.view_yview[0] - sprite_height))):
		(GM.f_instance_destroy(self))
