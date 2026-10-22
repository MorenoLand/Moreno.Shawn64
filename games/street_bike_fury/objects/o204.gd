extends "res://games/street_bike_fury/objects/o89.gd"
var v_ranover = 0.0
var v_set = 0.0
func ev_create():
	v_die = 0.0
	v_rot1 = 0.0
	v_rot2 = 0.0
	v_dir = 0.0
	gravity = 0.4
	gravity_direction = 270.0
	v_rotate = 0.0
	v_shocks = 0.0
	v_go = 0.0
	v_rate = 0.0
	v_wheelspeed = 0.0
	v_maxspeed = 25.0
	v_ranover = 0.0
	v_mypower = 10.0
	(GM.f_sound_play(60.0))
	(GM.f_sound_pan(60.0, (0.0 - ((((((GM.view_xview[0] + ((GM.view_wview[0] / 2.0)))) - (x))) / 2500.0)))))
	(GM.f_sound_play(8.0))
	(GM.f_instance_create(x, y, 218.0))
func ev_step():
	if ((hspeed > 1.0)):
		hspeed = hspeed - 0.2
	else:
		hspeed = 0.0
	(GM.f_instance_create(x, y, 100.0))
	image_angle = image_angle - (hspeed / 2.0)
func ev_col_0():
	if ((absf(v_ranover - 0.0) < 0.00001)):
		for _r149 in range(int((60.0))):
			v_set = (GM.f_instance_create(x, y, 67.0))
			GM.vsetb(v_set, "hspeed", GM.vb(v_set, "hspeed") + hspeed)
			GM.vsetb(v_set, "vspeed", GM.vb(v_set, "vspeed") + vspeed)
			for _w150 in GM.with_list((v_set), self):
				if _w150._dead:
					continue
				_w150.other = self
				(GM.f_motion_add(_w150, (GM.f_random(360.0)), (GM.f_random(15.0))))
		(GM.f_motion_add(self, (45.0 + (GM.f_random(90.0))), (15.0 + (GM.f_random(5.0)))))
		(GM.f_sound_play(15.0))
		(GM.f_sound_play(27.0))
		v_ranover = 1.0
func ev_other_12():
	pass
func ev_draw():
	(GM.f_texture_set_interpolation(1.0))
	if ((absf(v_ranover - 0.0) < 0.00001)):
		(GM.f_draw_sprite_ext(170.0, 0.0, x, y, 1.0, 1.0, image_angle, 16777215.0, 1.0))
	else:
		(GM.f_draw_sprite_ext(192.0, 0.0, x, y, 1.0, 1.0, image_angle, 16777215.0, 1.0))
	(GM.f_texture_set_interpolation(0.0))
