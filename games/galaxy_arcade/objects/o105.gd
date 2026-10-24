extends "res://games/galaxy_arcade/scripts.gd"
func ev_alarm_0():
	await GM.f_show_message("next time put out youre parachute with enter!!!")
	(GM.f_room_goto(3.0))
func ev_col_122():
	(GM.f_sound_play(7.0))
func ev_col_115():
	(GM.f_instance_create((x + 0.0), (y + 0.0), 123.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 123.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 123.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 123.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 123.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 123.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 123.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 123.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 123.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 123.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 123.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 123.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 123.0))
	alarm[int(0.0)] = 50.0
func ev_key_39():
	sprite_index = 48.0
	image_speed = 1.0
	(GM.f_action_move(self, "000001000", 6.0, 0.0))
func ev_key_38():
	(GM.f_action_move(self, "000010000", 0.0, 0.0))
func ev_key_37():
	sprite_index = 49.0
	image_speed = 1.0
	(GM.f_action_move(self, "000100000", 6.0, 0.0))
func ev_key_13():
	(GM.f_sound_play(11.0))
	GM.background_hspeed[int(0.0)] = 0.0
	GM.background_vspeed[int(0.0)] = (-10.0)
	(GM.f_instance_create((x + (-40.0)), (y + (-80.0)), 109.0))
	(GM.f_instance_destroy(self))
