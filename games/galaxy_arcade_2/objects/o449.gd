extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_create():
	(GM.f_sound_play(126.0))
func ev_col_475():
	if (((hspeed > 0.0))):
		hspeed = 0.0
func ev_col_474():
	if (((hspeed < 0.0))):
		hspeed = 0.0
func ev_col_446():
	if (((GM.G["airscore"] > GM.G["airscore2"]))):
		(GM.f_instance_create(120.0, 593.0, 1067.0))
		(GM.f_instance_create(680.0, 593.0, 1067.0))
		(GM.f_sound_stop(127.0))
		(GM.f_action_move(self, "000010000", 0.0, 0.0))
		(GM.f_instance_create((x + 50.0), (y + 85.0), 450.0))
		(GM.f_sound_play(130.0))
		(GM.f_instance_destroy(self))
	else:
		if (((absf(GM.G["airscore"] - GM.G["airscore2"]) < 0.00001))):
			(GM.f_instance_create(120.0, 593.0, 1067.0))
			(GM.f_instance_create(680.0, 593.0, 1067.0))
			(GM.f_sound_stop(127.0))
			(GM.f_action_move(self, "000010000", 0.0, 0.0))
			(GM.f_instance_create((x + 50.0), (y + 85.0), 450.0))
			(GM.f_sound_play(130.0))
			(GM.f_instance_destroy(self))
		else:
			(GM.f_instance_destroy(self))
func ev_col_42():
	hspeed = 0.0
func ev_key_39():
	sprite_index = 442.0
	image_speed = 1.0
	(GM.f_motion_add(self, 0.0, 0.3))
func ev_key_37():
	sprite_index = 443.0
	image_speed = 1.0
	(GM.f_motion_add(self, 180.0, 0.3))
func ev_other_0():
	(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 448.0))
	(GM.f_sound_play(126.0))
	(GM.f_sound_stop(127.0))
	(GM.f_instance_destroy(self))
