extends "res://games/infection2/scripts.gd"
var v_wee = 0.0
func ev_create():
	(GM.f_motion_add(self, (45.0 + (GM.f_random(90.0))), (4.0 + (GM.f_random(3.0)))))
	gravity = 0.4
	gravity_direction = 270.0
	v_wee = 1.0
func ev_step():
	v_wee = v_wee - 0.05
	if ((v_wee < 0.0)):
		(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_draw_set_blend_mode(1.0))
	(GM.f_draw_sprite_ext(39.0, 0.0, x, y, 0.2, 0.2, 0.0, 255.0, v_wee))
	(GM.f_draw_set_blend_mode(0.0))
