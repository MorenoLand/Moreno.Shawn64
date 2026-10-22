extends "res://games/ski_racer_2/scripts.gd"
func ev_create():
	if ((GM.G["p2"] == "s64")):
		sprite_index = 2.0
	if ((GM.G["p2"] == "dex")):
		sprite_index = 10.0
	if ((GM.G["p2"] == "snow")):
		sprite_index = 14.0
	if ((GM.G["p2"] == "elf")):
		sprite_index = 33.0
	if ((GM.G["p2"] == "blink")):
		sprite_index = 35.0
	GM.view_object[int(1.0)] = 67.0
	GM.view_hborder[int(1.0)] = ((512.0 / 2.0) - (sprite_width / 2.0))
	GM.view_vborder[int(1.0)] = ((768.0 / 2.0) - (sprite_height / 2.0))
	gravity_direction = 270.0
	gravity = 0.2
func ev_step():
	if (((absf(sprite_index - 14.0) < 0.00001))):
		(GM.f_instance_create((x + (GM.f_random((sprite_width - 10.0)))), (y + (GM.f_random((sprite_height - 10.0)))), 16.0))
	if (((speed > 15.0))):
		if (((absf(sprite_index - 14.0) < 0.00001))):
			(GM.f_sound_play(5.0))
		(GM.f_instance_change(self, 66.0, 1.0))
func ev_other_7():
	if (not (((absf(sprite_index - 14.0) < 0.00001)))):
		(GM.f_sound_play(1.0))
