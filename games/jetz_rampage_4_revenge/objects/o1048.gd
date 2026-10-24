extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_create():
	image_single = 0.0
	vspeed = (-3.0)
	visible = 0.0
	alarm[int(1.0)] = 10.0
	(GM.f_sound_play(249.0))
func ev_alarm_1():
	visible = 1.0
func ev_alarm_0():
	(GM.f_instance_create(x, y, 1049.0))
	(GM.f_instance_destroy(self))
func ev_step():
	if (not ((((GM.f_place_meeting(self, (x + 0.0), (y + 0.0), 894.0)))) >= 0.5)):
		vspeed = 0.0
		if ((absf(alarm[int(0.0)] - (-1.0)) < 0.00001)):
			alarm[int(0.0)] = 30.0
func ev_draw():
	(GM.f_draw_sprite(874.0, 0.0, x, y))
	(GM.f_draw_sprite(1019.0, 25.0, x, y))
