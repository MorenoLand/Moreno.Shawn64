extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_go = 0.0
var v_jump = 0.0
var v_mypower = 0.0
var v_poom = 0.0
func ev_create():
	depth = depth - (13.0 / 60.0)
	gravity_direction = 270.0
	v_go = 1.0
	v_mypower = 25.0
	v_jump = 1.0
	GM.G["grav"] = 0.5
	gravity = 0.5
func ev_alarm_0():
	v_go = 1.0
func ev_step():
	image_speed = (speed / 15.0)
	if ((absf(vspeed - 0.0) < 0.00001)):
		v_poom = (GM.f_round((GM.f_random(5.0))))
		friction = 0.2
		if ((((absf(v_poom - 2.0) < 0.00001) and (x > (GM.view_xview[0] + 100.0))) and (x < (GM.view_xview[0] + 660.0)))):
			(GM.f_sound_play(220.0))
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
				return
		if (((GM.f_distance_to_object(self, 7.0)) > 200.0)):
			if ((absf(v_go - 1.0) < 0.00001)):
				if ((GM.vb(7.0, "x") > x)):
					(GM.f_motion_add(self, 0.0, (1.0 + (GM.f_random(15.0)))))
				else:
					(GM.f_motion_add(self, 180.0, (1.0 + (GM.f_random(15.0)))))
				alarm[int(0.0)] = 15.0
				v_go = 0.0
		if (((((absf(v_poom - 2.0) < 0.00001) and (x > (GM.view_xview[0] + 100.0))) and (x < (GM.view_xview[0] + 660.0))) and (GM.vb(7.0, "y") < y))):
			(GM.f_sound_play(220.0))
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
	if ((vspeed < (-25.0))):
		vspeed = (-25.0)
	if ((hspeed > 25.0)):
		hspeed = 25.0
	if ((hspeed < (-25.0))):
		hspeed = (-25.0)
func ev_col_784():
	vspeed = 0.0
func ev_col_603():
	v_jump = 1.0
	vspeed = 0.0
func ev_col_551():
	hspeed = 0.0
func ev_col_7():
	(GM.f_instance_create((GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)), (GM.vb(7.0, "y") + (GM.vb(7.0, "sprite_height") / 2.0)), 722.0))
	for _w459 in GM.with_list((680.0), self):
		if _w459._dead:
			continue
		_w459.other = self
		_w459.ev_user(0.0)
func ev_draw():
	if ((hspeed > 0.0)):
		(GM.f_draw_sprite(823.0, (-1.0), x, y))
	else:
		(GM.f_draw_sprite(824.0, (-1.0), x, y))
