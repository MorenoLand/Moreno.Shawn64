extends "res://games/jetzrampage/scripts.gd"
var v_image_single = 0.0
func ev_create():
	v_image_single = (GM.f_random(3.0))
	(GM.f_action_move(self, "000001000", 15.0, 0.0))
func ev_col_142():
	(GM.f_sound_play(15.0))
	for _r100 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 90.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(self.script_outside_wrap(0.0, 0.0, 0.0, 0.0, 0.0))
