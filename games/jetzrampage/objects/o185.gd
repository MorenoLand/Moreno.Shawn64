extends "res://games/jetzrampage/scripts.gd"
var v_alive = 0.0
func ev_create():
	v_alive = 1.0
func ev_col_103():
	if (((absf(v_alive - 1.0) < 0.00001))):
		GM.G["lives"] = GM.G["lives"] + 0.5
		(GM.f_sound_play(18.0))
		(GM.f_instance_create(0.0, 0.0, 132.0))
		(GM.f_instance_create((x + 0.0), (y + 0.0), 107.0))
		for _r101 in range(int((50.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 90.0))
		x = x + 0.0
		y = y + 80.0
		sprite_index = 168.0
		if ((1.0 >= 0.0)):
			image_index = 1.0
		image_speed = 0.0
		v_alive = 0.0
