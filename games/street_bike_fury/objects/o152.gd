extends "res://games/street_bike_fury/objects/o89.gd"
func ev_create():
	v_die = 0.0
	v_rot1 = 0.0
	v_rot2 = 0.0
	v_dir = 0.0
	gravity = (0.4 * GM.G["gspeed"])
	gravity_direction = 270.0
	v_rotate = 0.0
	v_shocks = 0.0
	v_go = 0.0
	v_rate = 0.0
	v_wheelspeed = 0.0
	v_maxspeed = 25.0
	v_mypower = 10.0
func ev_step():
	if (((GM.f_place_meeting(self, x, (y + 8.0), 1.0)))) >= 0.5:
		if ((hspeed > 1.0)):
			hspeed = hspeed - 0.2
		else:
			hspeed = 0.0
	image_angle = image_angle - hspeed
func ev_other_12():
	pass
func ev_draw():
	(GM.f_texture_set_interpolation(1.0))
	(GM.f_draw_sprite_ext(127.0, 0.0, x, y, 1.0, 1.0, image_angle, 16777215.0, 1.0))
	(GM.f_texture_set_interpolation(0.0))
