extends "res://games/bounty_hunter_sx/scripts.gd"
var v_image_single = 0.0
func ev_create():
	(GM.f_motion_add(self, GM.vb(1134.0, "direction"), GM.vb(1134.0, "speed")))
	v_image_single = (GM.f_random(2.0))
func ev_step():
	(GM.f_motion_add(self, (GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), (GM.vb(1134.0, "x") + (GM.vb(1134.0, "sprite_width") / 2.0)), (GM.vb(1134.0, "y") + (GM.vb(1134.0, "sprite_height") / 2.0)))), 1.0))
	if (((GM.f_distance_to_point(self, (GM.vb(1134.0, "x") + (GM.vb(1134.0, "sprite_width") / 2.0)), (GM.vb(1134.0, "y") + (GM.vb(1134.0, "sprite_height") / 2.0)))) < 20.0)):
		(GM.f_instance_destroy(self))
