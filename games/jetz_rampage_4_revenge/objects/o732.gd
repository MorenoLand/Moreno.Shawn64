extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_attach = 0.0
var v_go = 0.0
var v_jump = 0.0
var v_mypower = 0.0
var v_poom = 0.0
var v_woot = 0.0
var v_woot2 = 0.0
var v_woot3 = 0.0
var v_wow = 0.0
var v_wowza = 0.0
func ev_create():
	depth = depth - (13.0 / 60.0)
	gravity_direction = 270.0
	v_go = 1.0
	v_mypower = 25.0
	v_jump = 1.0
	v_wow = (GM.f_round((GM.f_random(4.0))))
	if (GM.eq(v_wow, 0.0)):
		(GM.f_sound_play(193.0))
	if (GM.eq(v_wow, 1.0)):
		(GM.f_sound_play(194.0))
	if (GM.eq(v_wow, 2.0)):
		(GM.f_sound_play(195.0))
	if (GM.eq(v_wow, 3.0)):
		(GM.f_sound_play(196.0))
	if (GM.eq(v_wow, 4.0)):
		(GM.f_sound_play(197.0))
	GM.G["grav"] = 0.5
	gravity = 0.5
	v_attach = 0.0
	alarm[int(1.0)] = 40.0
func ev_alarm_1():
	v_attach = 1.0
func ev_alarm_0():
	v_go = 1.0
func ev_step():
	image_speed = (speed / 15.0)
	if ((absf(vspeed - 0.0) < 0.00001)):
		v_poom = (GM.f_round((GM.f_random(5.0))))
		friction = 0.2
		if ((((absf(v_poom - 2.0) < 0.00001) and (x > (GM.view_xview[0] + 100.0))) and (x < (GM.view_xview[0] + 660.0)))):
			(GM.f_sound_play(201.0))
			var l_iii = 0.0
			var l_dX = 0.0
			var l_dY = 0.0
			var l_ang = 0.0
			l_dX = (GM.vb(7.0, "x") - x)
			l_dY = (GM.vb(7.0, "y") - y)
			l_ang = ((((GM.f_arctan2((-l_dY), l_dX)) + (GM.f_degtorad(90.0)))) / 2.0)
			if ((not GM.eq(l_ang, (3.141592653589793 / 2.0)))):
				speed = (l_dX / (((GM.f_cos(l_ang)) * (GM.f_sqrt(((2.0 * (GM.add(l_dY, ((GM.f_tan(l_ang)) * l_dX)))) / GM.G["grav"]))))))
				direction = (GM.f_radtodeg(l_ang))
				hspeed = hspeed + ((GM.vb(7.0, "hspeed") - 2.0) + (GM.f_random(4.0)))
				vspeed = vspeed + ((GM.vb(7.0, "vspeed") - 2.0) + (GM.f_random(4.0)))
				return
		if (((GM.f_distance_to_object(self, 7.0)) > 200.0)):
			if ((absf(v_go - 1.0) < 0.00001)):
				if ((GM.vb(7.0, "x") > x)):
					(GM.f_motion_add(self, 0.0, (1.0 + (GM.f_random(10.0)))))
				else:
					(GM.f_motion_add(self, 180.0, (1.0 + (GM.f_random(10.0)))))
				alarm[int(0.0)] = 15.0
				v_go = 0.0
		if (((((absf(v_poom - 2.0) < 0.00001) and (x > (GM.view_xview[0] + 100.0))) and (x < (GM.view_xview[0] + 660.0))) and (GM.vb(7.0, "y") < y))):
			(GM.f_sound_play(201.0))
			var l_iii = 0.0
			var l_dX = 0.0
			var l_dY = 0.0
			var l_ang = 0.0
			l_dX = (GM.vb(7.0, "x") - x)
			l_dY = (GM.vb(7.0, "y") - y)
			l_ang = ((((GM.f_arctan2((-l_dY), l_dX)) + (GM.f_degtorad(90.0)))) / 2.0)
			if ((not GM.eq(l_ang, (3.141592653589793 / 2.0)))):
				speed = (l_dX / (((GM.f_cos(l_ang)) * (GM.f_sqrt(((2.0 * (GM.add(l_dY, ((GM.f_tan(l_ang)) * l_dX)))) / GM.G["grav"]))))))
				direction = (GM.f_radtodeg(l_ang))
				hspeed = hspeed + GM.vb(7.0, "hspeed")
				vspeed = vspeed + GM.vb(7.0, "vspeed")
	else:
		friction = 0.0
	if ((vspeed < (-20.0))):
		vspeed = (-20.0)
	if ((hspeed > 15.0)):
		hspeed = 15.0
	if ((hspeed < (-15.0))):
		hspeed = (-15.0)
func ev_col_656():
	if ((absf(GM.vget(self.other, "v_hitcop") - 0.0) < 0.00001)):
		v_wowza = (GM.f_instance_create(x, y, 715.0))
		if (((GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)) > (x + (sprite_width / 2.0)))):
			GM.vsetb(v_wowza, "sprite_index", 761.0)
		else:
			GM.vsetb(v_wowza, "sprite_index", 762.0)
		GM.vsetb(v_wowza, "hspeed", hspeed)
		GM.vb(v_wowza, "alarm")[int(0.0)] = 15.0
		GM.vsetb(v_wowza, "vspeed", vspeed)
		GM.vsetb(v_wowza, "gravity", gravity)
		GM.vset(v_wowza, "v_electric", 3.0)
		GM.vsetb(v_wowza, "depth", depth)
		self.ev_user(0.0)
		(GM.f_instance_destroy(self))
func ev_col_603():
	v_jump = 1.0
	vspeed = 0.0
func ev_col_551():
	hspeed = 0.0
func ev_col_502():
	(GM.f_sound_play(198.0))
	(GM.f_motion_add(self, GM.vb(self.other, "direction"), 2.0))
	v_mypower = v_mypower - 1.0
	if ((v_mypower < 0.0)):
		v_wowza = (GM.f_instance_create(x, y, 715.0))
		if (((GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)) > (x + (sprite_width / 2.0)))):
			GM.vsetb(v_wowza, "sprite_index", 761.0)
		else:
			GM.vsetb(v_wowza, "sprite_index", 762.0)
		GM.vsetb(v_wowza, "hspeed", hspeed)
		GM.vsetb(v_wowza, "vspeed", vspeed)
		GM.vsetb(v_wowza, "gravity", gravity)
		GM.vsetb(v_wowza, "depth", depth)
		GM.vset(v_wowza, "v_electric", 3.0)
		GM.vb(v_wowza, "alarm")[int(0.0)] = 15.0
		self.ev_user(0.0)
		(GM.f_instance_destroy(self))
func ev_col_491():
	v_woot = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 490.0))
	v_woot2 = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 905.0))
	v_woot3 = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 906.0))
	GM.vsetb(v_woot, "depth", depth)
	GM.vsetb(v_woot2, "depth", depth)
	GM.vsetb(v_woot3, "depth", depth)
	v_mypower = v_mypower - 0.05
	if ((v_mypower < 0.0)):
		v_wowza = (GM.f_instance_create(x, y, 715.0))
		if (((GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)) > (x + (sprite_width / 2.0)))):
			GM.vsetb(v_wowza, "sprite_index", 761.0)
		else:
			GM.vsetb(v_wowza, "sprite_index", 762.0)
		GM.vsetb(v_wowza, "hspeed", hspeed)
		GM.vsetb(v_wowza, "vspeed", vspeed)
		GM.vsetb(v_wowza, "gravity", gravity)
		GM.vsetb(v_wowza, "depth", depth)
		GM.vset(v_wowza, "v_electric", 3.0)
		GM.vb(v_wowza, "alarm")[int(0.0)] = 15.0
		self.ev_user(0.0)
		(GM.f_instance_destroy(self))
func ev_col_7():
	if ((((GM.f_instance_number(733.0)) < 1.0) and (absf(v_attach - 1.0) < 0.00001))):
		(GM.f_instance_create(x, y, 733.0))
		(GM.f_instance_destroy(self))
func ev_other_15():
	(self.script_copdestroy())
func ev_other_10():
	GM.G["yellow"] = GM.G["yellow"] - 1.0
func ev_draw():
	if ((hspeed > 0.0)):
		(GM.f_draw_sprite(756.0, (-1.0), x, y))
	else:
		(GM.f_draw_sprite(757.0, (-1.0), x, y))
