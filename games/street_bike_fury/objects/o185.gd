extends "res://games/street_bike_fury/objects/o89.gd"
func ev_step():
	if (((GM.f_place_meeting(self, x, (y + 8.0), 1.0)))) >= 0.5:
		if ((hspeed > 1.0)):
			hspeed = hspeed - 0.2
		else:
			hspeed = 0.0
	image_angle = image_angle - hspeed
func ev_col_196():
	depth = 100.0
func ev_other_12():
	pass
func ev_draw():
	(GM.f_texture_set_interpolation(1.0))
	(GM.f_draw_sprite_ext(148.0, 1.0, x, y, 1.0, 1.0, image_angle, 16777215.0, 1.0))
	(GM.f_texture_set_interpolation(0.0))
