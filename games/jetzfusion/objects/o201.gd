extends "res://games/jetzfusion/objects/o70.gd"
func ev_create():
	image_speed = 0.2
	v_mypower = 5.0
	if (((absf(sprite_index - 73.0) < 0.00001))):
		alarm[int(0.0)] = 1.0
func ev_col_53():
	(GM.f_action_move(self, "000010000", 0.0, 0.0))
