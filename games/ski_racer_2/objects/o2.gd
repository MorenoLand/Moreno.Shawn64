extends "res://games/ski_racer_2/scripts.gd"
func ev_create():
	(GM.f_sound_loop(6.0))
	if ((GM.G["p1"] == "s64")):
		sprite_index = 2.0
	if ((GM.G["p1"] == "dex")):
		sprite_index = 10.0
	if ((GM.G["p1"] == "snow")):
		sprite_index = 14.0
	if ((GM.G["p1"] == "elf")):
		sprite_index = 33.0
	if ((GM.G["p1"] == "blink")):
		sprite_index = 35.0
	GM.view_object[0] = 2.0
	if ((absf(GM.room - 3.0) < 0.00001)):
		GM.view_hborder[0] = ((512.0 / 2.0) - (sprite_width / 2.0))
	else:
		GM.view_hborder[0] = ((1024.0 / 2.0) - (sprite_width / 2.0))
	GM.view_vborder[0] = ((768.0 / 2.0) - (sprite_height / 2.0))
	gravity_direction = 270.0
	gravity = 0.2
func ev_step():
	if (((absf(sprite_index - 14.0) < 0.00001))):
		(GM.f_instance_create((x + (GM.f_random((sprite_width - 10.0)))), (y + (GM.f_random((sprite_height - 10.0)))), 16.0))
	for _r7 in range(int((speed))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 4.0))
	if (((speed > 15.0))):
		if (((absf(sprite_index - 14.0) < 0.00001))):
			(GM.f_sound_play(5.0))
		(GM.f_instance_change(self, 0.0, 1.0))
func ev_other_7():
	if (not (((absf(sprite_index - 14.0) < 0.00001)))):
		(GM.f_sound_play(1.0))
