extends "res://games/mini_golf_pro/scripts.gd"
var v_rot = 0.0
var v_wee = 0.0
func ev_create():
	v_wee = (GM.f_floor((GM.f_random(28.99999))))
	v_rot = 0.0
	(GM.f_motion_add(self, (45.0 + (GM.f_random(90.0))), (3.0 + (GM.f_random(6.0)))))
	gravity = 0.3
	gravity_direction = 270.0
func ev_step():
	v_rot = v_rot + 5.0
func ev_other_0():
	if ((y > GM.room_height)):
		(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_draw_sprite_ext(0.0, v_wee, x, y, 1.0, 1.0, v_rot, 16777215.0, 1.0))
	(GM.f_draw_sprite_ext(61.0, 0.0, x, y, 1.0, 1.0, 0.0, 16777215.0, 1.0))
