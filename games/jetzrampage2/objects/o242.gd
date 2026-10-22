extends "res://games/jetzrampage2/objects/o114.gd"
func ev_create():
	v_mypower = 2.0
	v_alive = 1.0
	if (((GM.vb(0.0, "x") > x))):
		sprite_index = 116.0
		if ((1.0 >= 0.0)):
			image_index = 1.0
		image_speed = 0.0
		(GM.f_action_move(self, "000001000", 5.0, 0.0))
	else:
		sprite_index = 115.0
		if ((1.0 >= 0.0)):
			image_index = 1.0
		image_speed = 0.0
		(GM.f_action_move(self, "000100000", 5.0, 0.0))
