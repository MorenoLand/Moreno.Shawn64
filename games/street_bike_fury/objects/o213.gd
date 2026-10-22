extends "res://games/street_bike_fury/scripts.gd"
var v_size = 0.0
func ev_create():
	(GM.f_motion_add(self, (270.0 + (GM.f_random(90.0))), (3.0 + (GM.f_random(2.0)))))
	v_size = 1.5
	x = GM.view_xview[0]
func ev_step():
	v_size = v_size - 0.01
	if ((v_size < 0.0)):
		(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_draw_set_blend_mode(1.0))
	(GM.f_draw_sprite_ext(80.0, 0.0, x, y, v_size, v_size, 0.0, 16711680.0, 0.6))
	(GM.f_draw_set_blend_mode(0.0))
