extends "res://games/jetzrampage2/scripts.gd"
func ev_create():
	(GM.f_sound_play(191.0))
	direction = (GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), (GM.vb(576.0, "x") + (GM.vb(576.0, "sprite_width") / 2.0)), (GM.vb(576.0, "y") + (GM.vb(576.0, "sprite_height") / 2.0))))
	speed = 8.0
	if (((hspeed > 0.0))):
		sprite_index = 508.0
		if ((1.0 >= 0.0)):
			image_index = 1.0
		image_speed = 0.0
	else:
		sprite_index = 507.0
		if ((1.0 >= 0.0)):
			image_index = 1.0
		image_speed = 0.0
func ev_col_576():
	(GM.f_sound_play(191.0))
	(GM.f_instance_create(((GM.vb(0.0, "x") + (GM.vb(0.0, "sprite_width") / 2.0)) - 16.0), ((GM.vb(0.0, "y") + (GM.vb(0.0, "sprite_height") / 2.0)) - 16.0), 481.0))
	for _w297 in GM.with_list((576.0), self):
		if _w297._dead:
			continue
		_w297.other = self
		(GM.f_instance_create((_w297.x + 0.0), (_w297.y + 0.0), 584.0))
	for _w298 in GM.with_list((67.0), self):
		if _w298._dead:
			continue
		_w298.other = self
		GM.vset(_w298, "v_currentmoney", GM.vget(_w298, "v_currentmoney") + 100.0)
	(GM.f_sound_play(88.0))
	for _w299 in GM.with_list((576.0), self):
		if _w299._dead:
			continue
		_w299.other = self
		(GM.f_instance_destroy(_w299))
	for _w300 in GM.with_list((250.0), self):
		if _w300._dead:
			continue
		_w300.other = self
		(GM.f_instance_destroy(_w300))
	(GM.f_instance_destroy(self))
