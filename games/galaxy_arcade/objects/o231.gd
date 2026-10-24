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
	GM.G["bombsp4"] = GM.G["bombsp4"] + 1.0
func ev_col_194():
	(GM.f_sound_play(5.0))
	(GM.f_instance_destroy(self))
func ev_col_193():
	(GM.f_sound_play(5.0))
	(GM.f_instance_destroy(self))
func ev_col_192():
	GM.G["firep4"] = GM.G["firep4"] + 3.5
func ev_col_180():
	(GM.f_action_move(self, "000010000", 0.0, 0.0))
func ev_col_179():
	(GM.f_action_move(self, "000010000", 0.0, 0.0))
func ev_col_167():
	hspeed = 0.0
	vspeed = 0.0
func ev_key_85():
	if ((((GM.f_place_free(self, (x + 0.0), (y + (-4.0))))))) >= 0.5:
		(GM.f_action_move(self, "000000010", GM.G["speedp4"], 0.0))
		image_speed = 1.0
		sprite_index = 142.0
		image_speed = 1.0
func ev_key_76():
	if ((((GM.f_instance_number(230.0)) < GM.G["bombsp4"]))):
		if ((((GM.f_instance_number(229.0)) < GM.G["bombsp4"]))):
			if (not ((((GM.f_place_meeting(self, (x + 5.0), (y + 5.0), 230.0)))) >= 0.5)):
				(GM.f_sound_play(14.0))
				(GM.f_instance_create((x + 0.0), (y + 0.0), 230.0))
func ev_key_75():
	if ((((GM.f_place_free(self, (x + 4.0), (y + 0.0)))))) >= 0.5:
		(GM.f_action_move(self, "000001000", GM.G["speedp4"], 0.0))
		image_speed = 1.0
		sprite_index = 140.0
		image_speed = 1.0
func ev_key_74():
	if ((((GM.f_place_free(self, (x + 0.0), (y + 4.0)))))) >= 0.5:
		(GM.f_action_move(self, "010000000", GM.G["speedp4"], 0.0))
		image_speed = 1.0
		sprite_index = 139.0
		image_speed = 1.0
func ev_key_72():
	if ((((GM.f_place_free(self, (x + (-4.0)), (y + 0.0)))))) >= 0.5:
		(GM.f_action_move(self, "000100000", GM.G["speedp4"], 0.0))
		image_speed = 1.0
		sprite_index = 141.0
		image_speed = 1.0
func ev_key_0():
	(GM.f_action_move(self, "000010000", 0.0, 0.0))
	image_speed = 0.0
