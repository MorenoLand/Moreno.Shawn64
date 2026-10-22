extends "res://games/street_bike_fury/scripts.gd"
var v_wee = 0.0
var v_woot = 0.0
func ev_create():
	x = (GM.room_width / 2.0)
	y = ((GM.room_height / 2.0) - 10.0)
	image_xscale = 5.0
	image_yscale = 5.0
	v_wee = 0.0
	image_alpha = 0.0
	alarm[int(0.0)] = 2.0
func ev_alarm_0():
	if ((image_xscale > 1.0)):
		v_woot = (GM.f_instance_create(x, y, 123.0))
		GM.vsetb(v_woot, "image_xscale", image_xscale)
		GM.vsetb(v_woot, "image_yscale", image_yscale)
		GM.vsetb(v_woot, "image_alpha", image_alpha)
		GM.vb(v_woot, "alarm")[int(0.0)] = 55.0
		alarm[int(0.0)] = 2.0
	else:
		v_woot = (GM.f_instance_create(x, y, 124.0))
		GM.vsetb(v_woot, "image_xscale", image_xscale)
		GM.vsetb(v_woot, "image_yscale", image_yscale)
		GM.vsetb(v_woot, "image_alpha", image_alpha)
		GM.vb(v_woot, "alarm")[int(0.0)] = 55.0
		alarm[int(0.0)] = 2.0
func ev_step():
	if ((image_xscale > 1.0)):
		image_xscale = image_xscale - 0.1
		image_yscale = image_yscale - 0.1
	else:
		if ((absf((GM.f_instance_number(125.0)) - 0.0) < 0.00001)):
			(GM.f_instance_create((x + 70.0), (y + 95.0), 125.0))
	v_wee = GM.add(v_wee, 0.01)
	if ((image_alpha < 1.0)):
		image_alpha = GM.add(image_alpha, v_wee)
func ev_draw():
	(GM.f_texture_set_interpolation(1.0))
	(GM.f_draw_sprite_ext(106.0, 0.0, x, y, image_xscale, image_yscale, 0.0, 16777215.0, image_alpha))
	(GM.f_texture_set_interpolation(0.0))
