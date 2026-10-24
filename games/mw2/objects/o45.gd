extends "res://games/mw2/scripts.gd"
func ev_create():
	(GM.f_action_move(self, "000001000", 4.0, 0.0))
	alarm[int(0.0)] = 70.0
	alarm[int(1.0)] = 2.0
func ev_alarm_1():
	(GM.f_instance_create((x + 0.0), (y + 0.0), 89.0))
	alarm[int(1.0)] = 2.0
func ev_alarm_0():
	(GM.f_sound_play(12.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 47.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 47.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 47.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 47.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 47.0))
	(GM.f_instance_destroy(self))
func ev_step():
	if (((absf((GM.f_instance_number(123.0)) - 1.0) < 0.00001))):
		(GM.f_sound_play(24.0))
		(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
		(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
		(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
		(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
		(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
		(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
		(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
		(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
		(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
		(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
		(GM.f_instance_destroy(self))
func ev_col_126():
	(GM.f_sound_play(24.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
	(GM.f_instance_destroy(self))
func ev_col_111():
	(GM.f_sound_play(24.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
	(GM.f_instance_destroy(self))
func ev_col_45():
	if (((absf(GM.G["glue"] - 1.0) < 0.00001))):
		(GM.f_action_move(self, "000010000", 0.0, 0.0))
func ev_mouse_0():
	(GM.f_mplay_message_send(0.0, 11.0, 0.0))
	(GM.f_sound_play(24.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
	(GM.f_instance_destroy(self))
