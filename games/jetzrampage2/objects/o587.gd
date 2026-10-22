extends "res://games/jetzrampage2/scripts.gd"
var v_roop = 0.0
func ev_create():
	v_roop = (GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), (GM.vb(584.0, "x") + (GM.vb(584.0, "sprite_width") / 2.0)), (GM.vb(584.0, "y") + (GM.vb(584.0, "sprite_height") / 2.0))))
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
func ev_col_584():
	(GM.f_instance_create(((GM.vb(0.0, "x") + (GM.vb(0.0, "sprite_width") / 2.0)) - 16.0), ((GM.vb(0.0, "y") + (GM.vb(0.0, "sprite_height") / 2.0)) - 16.0), 480.0))
	(GM.f_instance_create(((GM.vb(0.0, "x") + (GM.vb(0.0, "sprite_width") / 2.0)) - 16.0), ((GM.vb(0.0, "y") + (GM.vb(0.0, "sprite_height") / 2.0)) - 16.0), 480.0))
	for _w304 in GM.with_list((67.0), self):
		if _w304._dead:
			continue
		_w304.other = self
		GM.vset(_w304, "v_currentmoney", GM.vget(_w304, "v_currentmoney") + 300.0)
	(GM.f_sound_play(88.0))
	for _w305 in GM.with_list((584.0), self):
		if _w305._dead:
			continue
		_w305.other = self
		(GM.f_instance_destroy(_w305))
	for _w306 in GM.with_list((250.0), self):
		if _w306._dead:
			continue
		_w306.other = self
		(GM.f_instance_destroy(_w306))
	(GM.f_instance_destroy(self))
