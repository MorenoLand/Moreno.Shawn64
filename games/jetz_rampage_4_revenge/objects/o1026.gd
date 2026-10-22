extends "res://games/jetz_rampage_4_revenge/objects/o959.gd"
func ev_create():
	alarm[int(0.0)] = 2.0
	(GM.f_instance_create(((x - 100.0) + (GM.f_random(sprite_width))), ((y - 75.0) + (GM.f_random(sprite_height))), 599.0))
	(GM.f_instance_create(((x - 100.0) + (GM.f_random(sprite_width))), ((y - 75.0) + (GM.f_random(sprite_height))), 608.0))
	for _r915 in range(int((3.0))):
		(GM.f_instance_create(((x - 100.0) + (GM.f_random(sprite_width))), ((y - 75.0) + (GM.f_random(sprite_height))), 961.0))
func ev_other_11():
	for _w916 in GM.with_list((self.other), self):
		if _w916._dead:
			continue
		_w916.other = self
		(GM.f_motion_add(_w916, ((((GM.f_point_direction((_w916.x + (_w916.sprite_width / 2.0)), (_w916.y + (_w916.sprite_height / 2.0)), (GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)), (GM.vb(7.0, "y") + (GM.vb(7.0, "sprite_height") / 2.0)))) - 20.0) + (GM.f_random(40.0))) - 180.0), (10.0 + (GM.f_random(10.0)))))
