extends "res://games/galaxy_arcade/scripts.gd"
func ev_col_229():
	(GM.f_action_move(self, "000010000", 0.0, 0.0))
func ev_col_216():
	(GM.f_action_move(self, "000010000", 0.0, 0.0))
func ev_col_203():
	(GM.f_action_move(self, "000010000", 0.0, 0.0))
func ev_col_202():
	(GM.f_action_move(self, "000010000", 0.0, 0.0))
func ev_col_196():
	GM.G["bombsp3"] = GM.G["bombsp3"] + 1.0
func ev_col_194():
	(GM.f_sound_play(5.0))
	(GM.f_instance_destroy(self))
func ev_col_193():
	(GM.f_sound_play(5.0))
	(GM.f_instance_destroy(self))
func ev_col_192():
	GM.G["firep3"] = GM.G["firep3"] + 3.5
func ev_col_180():
	(GM.f_action_move(self, "000010000", 0.0, 0.0))
func ev_col_179():
	(GM.f_action_move(self, "000010000", 0.0, 0.0))
func ev_col_167():
	hspeed = 0.0
	vspeed = 0.0
func ev_key_104():
	if ((((GM.f_place_free(self, (x + 0.0), (y + (-4.0))))))) >= 0.5:
		(GM.f_action_move(self, "000000010", GM.G["speedp3"], 0.0))
		image_speed = 1.0
		sprite_index = 138.0
		image_speed = 1.0
func ev_key_102():
	if ((((GM.f_place_free(self, (x + 4.0), (y + 0.0)))))) >= 0.5:
		(GM.f_action_move(self, "000001000", GM.G["speedp3"], 0.0))
		image_speed = 1.0
		sprite_index = 136.0
		image_speed = 1.0
func ev_key_101():
	if ((((GM.f_place_free(self, (x + 0.0), (y + 4.0)))))) >= 0.5:
		(GM.f_action_move(self, "010000000", GM.G["speedp3"], 0.0))
		image_speed = 1.0
		sprite_index = 135.0
		image_speed = 1.0
func ev_key_100():
	if ((((GM.f_place_free(self, (x + (-4.0)), (y + 0.0)))))) >= 0.5:
		(GM.f_action_move(self, "000100000", GM.G["speedp3"], 0.0))
		image_speed = 1.0
		sprite_index = 137.0
		image_speed = 1.0
func ev_key_99():
	if ((((GM.f_instance_number(215.0)) < GM.G["bombsp3"]))):
		if ((((GM.f_instance_number(216.0)) < GM.G["bombsp3"]))):
			if (not ((((GM.f_place_meeting(self, (x + 5.0), (y + 5.0), 215.0)))) >= 0.5)):
				(GM.f_sound_play(14.0))
				(GM.f_instance_create((x + 0.0), (y + 0.0), 215.0))
func ev_key_0():
	(GM.f_action_move(self, "000010000", 0.0, 0.0))
	image_speed = 0.0
