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
	GM.G["bombsp2"] = GM.G["bombsp2"] + 1.0
func ev_col_194():
	(GM.f_sound_play(5.0))
	(GM.f_instance_destroy(self))
func ev_col_193():
	(GM.f_sound_play(5.0))
	(GM.f_instance_destroy(self))
func ev_col_192():
	GM.G["firep2"] = GM.G["firep2"] + 3.5
func ev_col_180():
	(GM.f_action_move(self, "000010000", 0.0, 0.0))
func ev_col_179():
	(GM.f_action_move(self, "000010000", 0.0, 0.0))
func ev_col_167():
	hspeed = 0.0
	vspeed = 0.0
func ev_key_87():
	if ((((GM.f_place_free(self, (x + 0.0), (y + (-4.0))))))) >= 0.5:
		(GM.f_action_move(self, "000000010", GM.G["speedp2"], 0.0))
		image_speed = 1.0
		sprite_index = 127.0
		image_speed = 1.0
func ev_key_83():
	if ((((GM.f_place_free(self, (x + 0.0), (y + 4.0)))))) >= 0.5:
		(GM.f_action_move(self, "010000000", GM.G["speedp2"], 0.0))
		image_speed = 1.0
		sprite_index = 124.0
		image_speed = 1.0
func ev_key_71():
	if ((((GM.f_instance_number(200.0)) < GM.G["bombsp2"]))):
		if ((((GM.f_instance_number(203.0)) < GM.G["bombsp2"]))):
			if (not ((((GM.f_place_meeting(self, (x + 5.0), (y + 5.0), 200.0)))) >= 0.5)):
				(GM.f_sound_play(14.0))
				(GM.f_instance_create((x + 0.0), (y + 0.0), 200.0))
func ev_key_68():
	if ((((GM.f_place_free(self, (x + 4.0), (y + 0.0)))))) >= 0.5:
		(GM.f_action_move(self, "000001000", GM.G["speedp2"], 0.0))
		image_speed = 1.0
		sprite_index = 125.0
		image_speed = 1.0
func ev_key_65():
	if ((((GM.f_place_free(self, (x + (-4.0)), (y + 0.0)))))) >= 0.5:
		(GM.f_action_move(self, "000100000", GM.G["speedp2"], 0.0))
		image_speed = 1.0
		sprite_index = 126.0
		image_speed = 1.0
func ev_key_0():
	(GM.f_action_move(self, "000010000", 0.0, 0.0))
	image_speed = 0.0
