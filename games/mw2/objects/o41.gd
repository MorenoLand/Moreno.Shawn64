extends "res://games/mw2/scripts.gd"
func ev_create():
	(GM.f_sound_loop(30.0))
	GM.G["color"] = 0.0
	gravity_direction = 0.0
	gravity = 0.2
	alarm[int(0.0)] = 40.0
func ev_destroy():
	(GM.f_instance_create((x + 45.0), (y + 45.0), 106.0))
	(GM.f_sound_stop(30.0))
func ev_alarm_1():
	(GM.f_instance_destroy(self))
func ev_alarm_0():
	(GM.f_instance_create((x + 0.0), (y + 0.0), 42.0))
	alarm[int(0.0)] = 10.0
func ev_step():
	if (((absf(GM.G["glue"] - 1.0) < 0.00001))):
		(GM.f_action_move(self, "000010000", 0.0, 0.0))
	if (((absf((GM.f_instance_number(123.0)) - 1.0) < 0.00001))):
		(GM.f_instance_destroy(self))
	if (((absf(GM.G["color"] - 3.0) < 0.00001))):
		(GM.f_sound_play(14.0))
		(GM.f_instance_create((x + 66.0), (y + 42.0), 56.0))
		(GM.f_instance_create((x + 66.0), (y + 42.0), 56.0))
		(GM.f_instance_create((x + 66.0), (y + 42.0), 56.0))
		(GM.f_instance_create((x + 66.0), (y + 42.0), 56.0))
		(GM.f_instance_create((x + 66.0), (y + 42.0), 56.0))
		(GM.f_instance_create((x + 66.0), (y + 42.0), 56.0))
		(GM.f_instance_create((x + 66.0), (y + 42.0), 56.0))
		(GM.f_instance_create((x + 66.0), (y + 42.0), 56.0))
		(GM.f_instance_create((x + 66.0), (y + 42.0), 56.0))
		(GM.f_instance_create((x + 66.0), (y + 42.0), 56.0))
		(GM.f_instance_create((x + 66.0), (y + 42.0), 56.0))
		(GM.f_instance_create((x + 66.0), (y + 42.0), 56.0))
		(GM.f_instance_create((x + 66.0), (y + 42.0), 56.0))
		(GM.f_instance_create((x + 66.0), (y + 42.0), 56.0))
		(GM.f_instance_create((x + 66.0), (y + 42.0), 56.0))
		(GM.f_instance_create(0.0, 0.0, 92.0))
		(GM.f_instance_create(0.0, 0.0, 92.0))
		(GM.f_instance_create(0.0, 0.0, 92.0))
		(GM.f_instance_create(0.0, 0.0, 92.0))
		(GM.f_instance_create(0.0, 0.0, 92.0))
		(GM.f_instance_destroy(self))
func ev_col_126():
	(GM.f_sound_play(13.0))
	GM.G["color"] = GM.G["color"] + 1.0
func ev_col_111():
	(GM.f_sound_play(13.0))
	GM.G["color"] = GM.G["color"] + 1.0
func ev_col_15():
	alarm[int(1.0)] = 15.0
func ev_mouse_0():
	(GM.f_sound_play(13.0))
	GM.G["color"] = GM.G["color"] + 1.0
func ev_draw():
	(GM.f_draw_sprite(48.0, GM.G["color"], (x + 0.0), (y + 0.0)))
