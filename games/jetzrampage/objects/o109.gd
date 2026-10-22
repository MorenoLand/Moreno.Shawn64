extends "res://games/jetzrampage/scripts.gd"
func ev_step():
	if ((((GM.f_place_free(self, (x + 0.0), (y + 4.0)))))) >= 0.5:
		(GM.f_action_move(self, "010000000", 4.0, 0.0))
	else:
		(GM.f_instance_create((x + 0.0), (y + 0.0), 17.0))
		(GM.f_instance_destroy(self))
func ev_col_101():
	GM.G["lives"] = GM.G["lives"] + 0.5
	(GM.f_sound_play(15.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 106.0))
	for _r66 in range(int((100.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 108.0))
	(GM.f_instance_destroy(self))
