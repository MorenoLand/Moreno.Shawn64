extends "res://games/jetzrampage2/scripts.gd"
var v_roop = 0.0
func ev_create():
	v_roop = (GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), (GM.vb(485.0, "x") + (GM.vb(485.0, "sprite_width") / 2.0)), (GM.vb(485.0, "y") + (GM.vb(485.0, "sprite_height") / 2.0))))
	direction = v_roop
	speed = 8.0
	if (((hspeed > 0.0))):
		sprite_index = 94.0
		if ((1.0 >= 0.0)):
			image_index = 1.0
		image_speed = 0.0
	else:
		sprite_index = 95.0
		if ((1.0 >= 0.0)):
			image_index = 1.0
		image_speed = 0.0
func ev_col_485():
	if (((absf((GM.f_instance_number(432.0)) - 0.0) < 0.00001))):
		(GM.f_instance_create(((GM.vb(0.0, "x") + (GM.vb(0.0, "sprite_width") / 2.0)) - 16.0), ((GM.vb(0.0, "y") + (GM.vb(0.0, "sprite_height") / 2.0)) - 16.0), 480.0))
		(GM.f_instance_create(((GM.vb(0.0, "x") + (GM.vb(0.0, "sprite_width") / 2.0)) - 16.0), ((GM.vb(0.0, "y") + (GM.vb(0.0, "sprite_height") / 2.0)) - 16.0), 480.0))
		for _w212 in GM.with_list((67.0), self):
			if _w212._dead:
				continue
			_w212.other = self
			GM.vset(_w212, "v_currentmoney", GM.vget(_w212, "v_currentmoney") + 100.0)
		(GM.f_sound_play(88.0))
		for _w213 in GM.with_list((485.0), self):
			if _w213._dead:
				continue
			_w213.other = self
			(GM.f_instance_destroy(_w213))
		for _w214 in GM.with_list((250.0), self):
			if _w214._dead:
				continue
			_w214.other = self
			(GM.f_instance_destroy(_w214))
		(GM.f_instance_destroy(self))
