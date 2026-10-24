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
	GM.G["bombsp1"] = GM.G["bombsp1"] + 1.0
func ev_col_194():
	(GM.f_sound_play(5.0))
	(GM.f_instance_destroy(self))
func ev_col_193():
	(GM.f_sound_play(5.0))
	(GM.f_instance_destroy(self))
func ev_col_192():
	GM.G["firep1"] = GM.G["firep1"] + 3.5
func ev_col_180():
	(GM.f_action_move(self, "000010000", 0.0, 0.0))
func ev_col_179():
	(GM.f_action_move(self, "000010000", 0.0, 0.0))
func ev_col_167():
	hspeed = 0.0
	vspeed = 0.0
func ev_key_40():
	if ((((GM.f_place_free(self, (x + 0.0), (y + 4.0)))))) >= 0.5:
		(GM.f_action_move(self, "010000000", GM.G["speedp1"], 0.0))
		image_speed = 1.0
		sprite_index = 111.0
		image_speed = 1.0
func ev_key_39():
	if ((((GM.f_place_free(self, (x + 4.0), (y + 0.0)))))) >= 0.5:
		(GM.f_action_move(self, "000001000", GM.G["speedp1"], 0.0))
		image_speed = 1.0
		sprite_index = 109.0
		image_speed = 1.0
func ev_key_38():
	if ((((GM.f_place_free(self, (x + 0.0), (y + (-4.0))))))) >= 0.5:
		(GM.f_action_move(self, "000000010", GM.G["speedp1"], 0.0))
		image_speed = 1.0
		sprite_index = 108.0
		image_speed = 1.0
func ev_key_37():
	if ((((GM.f_place_free(self, (x + (-4.0)), (y + 0.0)))))) >= 0.5:
		(GM.f_action_move(self, "000100000", GM.G["speedp1"], 0.0))
		image_speed = 1.0
		sprite_index = 112.0
		image_speed = 1.0
func ev_key_17():
	if ((((GM.f_instance_number(183.0)) < GM.G["bombsp1"]))):
		if ((((GM.f_instance_number(202.0)) < GM.G["bombsp1"]))):
			if (not ((((GM.f_place_meeting(self, (x + 5.0), (y + 5.0), 183.0)))) >= 0.5)):
				(GM.f_sound_play(14.0))
				(GM.f_instance_create((x + 0.0), (y + 0.0), 183.0))
func ev_key_0():
	(GM.f_action_move(self, "000010000", 0.0, 0.0))
	image_speed = 0.0
