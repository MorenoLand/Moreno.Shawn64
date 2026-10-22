extends "res://games/street_bike_fury/scripts.gd"
func ev_create():
	pass
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	image_xscale = image_xscale + 0.1
	image_yscale = image_yscale + 0.1
	image_alpha = image_alpha - 0.2
	if ((image_alpha < 0.0)):
		(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_texture_set_interpolation(1.0))
	(GM.f_draw_sprite_ext(106.0, 0.0, x, y, image_xscale, image_yscale, 0.0, 16777215.0, image_alpha))
	(GM.f_texture_set_interpolation(0.0))
