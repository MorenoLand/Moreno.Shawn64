extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 300.0
	direction = (40.0 + (GM.f_random(100.0)))
	speed = (10.0 + (GM.f_random(5.0)))
	gravity_direction = 270.0
	gravity = 0.4
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	if (((speed > 0.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 16.0))
	image_speed = (speed / 15.0)
func ev_col_17():
	friction = 0.3
	vspeed = 0.0
func ev_col_7():
	if (((absf((GM.f_instance_number(328.0)) - 1.0) < 0.00001))):
		for _r143 in range(int((50.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 26.0))
		(GM.f_sound_play(30.0))
		(GM.f_instance_destroy(self))
		GM.vset(328.0, "v_bricker", GM.vget(328.0, "v_bricker") + 1.0)
	if (((absf((GM.f_instance_number(329.0)) - 1.0) < 0.00001))):
		(GM.f_sound_play(19.0))
		(GM.f_instance_destroy(self))
		GM.vset(329.0, "v_bricker", GM.vget(329.0, "v_bricker") + 1.0)
