extends "res://games/jetz_rampage_4_revenge/objects/o929.gd"
func ev_create():
	depth = depth - (13.0 / 60.0)
	friction = 0.2
	gravity = 0.5
	gravity_direction = 270.0
	v_go = 1.0
	v_mypower = 100.0
	v_jump = 1.0
	v_shotr = 1.0
func ev_step():
	image_speed = (speed / 15.0)
	v_wow = (GM.f_round((GM.f_random(15.0))))
	if ((GM.eq(v_wow, 0.0) and (absf(v_shotr - 1.0) < 0.00001))):
		(GM.f_sound_play(202.0))
		for _r895 in range(int((15.0))):
			v_weez = (GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 714.0))
			GM.vsetb(v_weez, "speed", (18.0 + (GM.f_random(5.0))))
			GM.vsetb(v_weez, "direction", (((GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), (GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)), (GM.vb(7.0, "y") + (GM.vb(7.0, "sprite_height") / 2.0)))) - 15.0) + (GM.f_random(30.0))))
			GM.vsetb(v_weez, "hspeed", GM.vb(v_weez, "hspeed") + hspeed)
			GM.vsetb(v_weez, "vspeed", GM.vb(v_weez, "vspeed") + vspeed)
		v_shotr = 0.0
		alarm[int(2.0)] = 25.0
	v_poom = (GM.f_round((GM.f_random(2.0))))
	if (((absf(v_jump - 1.0) < 0.00001)) and (((GM.f_distance_to_object(self, 502.0)) < 100.0))):
		if ((absf(v_go - 1.0) < 0.00001)):
			v_poom = (GM.f_round((GM.f_random(2.0))))
			if ((absf(v_poom - 0.0) < 0.00001)):
				hspeed = ((-4.0) - (GM.f_random(4.0)))
			if ((absf(v_poom - 1.0) < 0.00001)):
				hspeed = (4.0 + (GM.f_random(4.0)))
			if ((absf(v_poom - 2.0) < 0.00001)):
				(GM.f_motion_add(self, (80.0 + (GM.f_random(10.0))), (16.0 + (GM.f_random(10.0)))))
				v_jump = 0.0
	if (((GM.f_distance_to_object(self, 7.0)) > 200.0)):
		if ((absf(v_go - 1.0) < 0.00001)):
			if ((GM.vb(7.0, "x") > x)):
				(GM.f_motion_add(self, 0.0, (1.0 + (GM.f_random(10.0)))))
			else:
				(GM.f_motion_add(self, 180.0, (1.0 + (GM.f_random(10.0)))))
			alarm[int(0.0)] = 15.0
			v_go = 0.0
	else:
		if ((GM.vb(7.0, "x") > x)):
			(GM.f_motion_add(self, 0.0, 0.1))
		else:
			(GM.f_motion_add(self, 180.0, 0.1))
	if (((absf(v_poom - 2.0) < 0.00001) and (absf(vspeed - 0.0) < 0.00001))):
		(GM.f_motion_add(self, (80.0 + (GM.f_random(5.0))), (((GM.room_height - GM.vb(7.0, "y"))) / 30.0)))
		v_jump = 0.0
	if ((hspeed > 20.0)):
		hspeed = 20.0
	if ((hspeed < (-20.0))):
		hspeed = (-20.0)
func ev_col_656():
	pass
func ev_col_502():
	(GM.f_sound_play(151.0))
	(GM.f_motion_add(self, GM.vb(self.other, "direction"), 0.1))
	v_mypower = v_mypower - 1.0
	if ((v_mypower < 0.0)):
		for _r896 in range(int((20.0))):
			v_wee = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 664.0))
			GM.vsetb(v_wee, "direction", (50.0 + (GM.f_random(80.0))))
			GM.vset(v_wee, "v_yyy", ((y + sprite_height) - 6.0))
			GM.vsetb(v_wee, "depth", (depth - 1.0))
		for _r897 in range(int((20.0))):
			v_wee = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 653.0))
			GM.vsetb(v_wee, "direction", (50.0 + (GM.f_random(80.0))))
			GM.vset(v_wee, "v_yyy", ((y + sprite_height) - 6.0))
			GM.vsetb(v_wee, "depth", (depth - 1.0))
		for _r898 in range(int((20.0))):
			v_wee = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 978.0))
			GM.vsetb(v_wee, "direction", (40.0 + (GM.f_random(100.0))))
			GM.vset(v_wee, "v_yyy", ((y + sprite_height) - 6.0))
			GM.vsetb(v_wee, "depth", (depth - 1.0))
		if ((absf(GM.room - 1.0) < 0.00001)):
			for _w899 in GM.with_list((680.0), self):
				if _w899._dead:
					continue
				_w899.other = self
				(GM.f_instance_destroy(_w899))
			(GM.f_sound_play(224.0))
			GM.G["j4var11"] = GM.G["j4var11"] + 200.0
			(GM.f_sound_play(190.0))
			for _w900 in GM.with_list((997.0), self):
				if _w900._dead:
					continue
				_w900.other = self
				(GM.f_instance_destroy(_w900))
		(GM.f_instance_destroy(self))
func ev_col_491():
	pass
func ev_draw():
	if (((GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)) > (x + (sprite_width / 2.0)))):
		(GM.f_draw_sprite(992.0, (-1.0), x, y))
	else:
		(GM.f_draw_sprite(993.0, (-1.0), x, y))
	(GM.f_draw_sprite(995.0, ((((GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), (GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)), (GM.vb(7.0, "y") + (GM.vb(7.0, "sprite_width") / 2.0)))) + 90.0)) / 10.0), (x + 20.0), (y + 40.0)))
