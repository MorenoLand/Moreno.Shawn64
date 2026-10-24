extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_create():
	(GM.f_motion_set(self, (GM.f_random(360.0)), (3.0 + (GM.f_random(3.0)))))
func ev_destroy():
	GM.G["roids"] = GM.G["roids"] + 1.0
func ev_col_1245():
	(GM.f_sound_play(135.0))
	for _r120 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 488.0))
	for _r121 in range(int((4.0))):
		(GM.f_instance_create((x + 12.5), (y + 12.5), 490.0))
	(GM.f_instance_destroy(self))
func ev_col_489():
	(GM.f_sound_play(135.0))
	for _r122 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 488.0))
	for _r123 in range(int((4.0))):
		(GM.f_instance_create((x + 12.5), (y + 12.5), 490.0))
	(GM.f_instance_destroy(self))
func ev_col_482():
	(GM.f_sound_play(135.0))
	for _r124 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 488.0))
	for _r125 in range(int((4.0))):
		(GM.f_instance_create((x + 12.5), (y + 12.5), 490.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(self.script_outside_wrap(0.0, 0.0, 0.0, 0.0, 0.0))
