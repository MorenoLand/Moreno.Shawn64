extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_fluh = 0.0
var v_go = 0.0
var v_jump = 0.0
var v_mypower = 0.0
var v_poom = 0.0
var v_shotr = 0.0
var v_wee = 0.0
var v_weez = 0.0
var v_woot = 0.0
var v_woot2 = 0.0
var v_woot3 = 0.0
var v_wow = 0.0
var v_wowza = 0.0
func ev_create():
	alarm[int(5.0)] = 150.0
	alarm[int(6.0)] = 200.0
	GM.vset(7.0, "v_myhealth", 100.0)
	for _w707 in GM.with_list((1046.0), self):
		if _w707._dead:
			continue
		_w707.other = self
		(GM.f_instance_destroy(_w707))
	GM.vset(7.0, "v_movenow", 1.0)
	(GM.f_motion_add(self, 150.0, 7.0))
	depth = depth - (13.0 / 60.0)
	friction = 0.2
	gravity = 0.5
	gravity_direction = 270.0
	v_go = 1.0
	v_mypower = 300.0
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
	v_shotr = 1.0
	(GM.f_sound_play(219.0))
	GM.G["warning"] = 0.0
	GM.vset(7.0, "v_myhealth", 100.0)
func ev_alarm_6():
	if ((v_mypower < 100.0)):
		for _r708 in range(int((3.0))):
			(GM.f_sound_play(210.0))
			v_weez = (GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 760.0))
			GM.vsetb(v_weez, "speed", 5.0)
			GM.vsetb(v_weez, "direction", (((GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), (GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)), (GM.vb(7.0, "y") + (GM.vb(7.0, "sprite_height") / 2.0)))) - 10.0) + (GM.f_random(20.0))))
			GM.vsetb(v_weez, "hspeed", GM.vb(v_weez, "hspeed") + hspeed)
			GM.vsetb(v_weez, "vspeed", GM.vb(v_weez, "vspeed") + vspeed)
	alarm[int(6.0)] = 150.0
func ev_alarm_5():
	if ((v_mypower < 200.0)):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 1115.0))
	alarm[int(5.0)] = 100.0
func ev_alarm_2():
	v_shotr = 1.0
func ev_alarm_0():
	v_go = 1.0
func ev_step():
	GM.G["warning"] = 0.0
	image_speed = (speed / 15.0)
	if (((GM.f_distance_to_object(self, 7.0)) < 600.0)):
		v_wow = (GM.f_round((GM.f_random(5.0))))
		if (GM.eq(v_wow, 0.0)):
			(GM.f_sound_play(250.0))
			v_weez = (GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 714.0))
			GM.vsetb(v_weez, "speed", 20.0)
			GM.vsetb(v_weez, "direction", (GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), (GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)), (GM.vb(7.0, "y") + (GM.vb(7.0, "sprite_height") / 2.0)))))
			GM.vsetb(v_weez, "hspeed", GM.vb(v_weez, "hspeed") + hspeed)
			GM.vsetb(v_weez, "vspeed", GM.vb(v_weez, "vspeed") + vspeed)
	if ((GM.vget(7.0, "v_myhealth") < 25.0)):
		GM.vset(7.0, "v_myhealth", GM.vget(7.0, "v_myhealth") + 0.01)
	v_poom = (GM.f_floor((GM.f_random(2.9999999))))
	if (((absf(v_jump - 1.0) < 0.00001)) and (((GM.f_distance_to_object(self, 502.0)) < 100.0))):
		if ((absf(v_go - 1.0) < 0.00001)):
			if ((absf(v_poom - 0.0) < 0.00001)):
				hspeed = ((-2.0) - (GM.f_random(2.0)))
			if ((absf(v_poom - 1.0) < 0.00001)):
				hspeed = (2.0 + (GM.f_random(2.0)))
			if (((absf(v_poom - 2.0) < 0.00001) and (absf(vspeed - 0.0) < 0.00001))):
				(GM.f_motion_add(self, (80.0 + (GM.f_random(5.0))), (7.0 + (GM.f_random(18.0)))))
				v_jump = 0.0
				alarm[int(0.0)] = 5.0
			alarm[int(0.0)] = 5.0
			v_go = 0.0
	if ((absf(v_go - 1.0) < 0.00001)):
		if ((GM.vb(7.0, "x") > x)):
			(GM.f_motion_add(self, 0.0, (1.0 + (GM.f_random(5.0)))))
		else:
			(GM.f_motion_add(self, 180.0, (1.0 + (GM.f_random(5.0)))))
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
		alarm[int(0.0)] = 5.0
	if ((hspeed > 20.0)):
		hspeed = 20.0
	if ((hspeed < (-20.0))):
		hspeed = (-20.0)
func ev_col_656():
	v_fluh = GM.vget(self.other, "v_wooper")
	direction = ((GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), GM.vb(v_fluh, "x"), GM.vb(v_fluh, "y"))) - 180.0)
	speed = speed + (2.0 + (GM.f_random(3.0)))
	v_mypower = v_mypower - 0.2
	self.ev_user(1.0)
func ev_col_603():
	v_jump = 1.0
	vspeed = 0.0
func ev_col_551():
	hspeed = 0.0
func ev_col_502():
	(GM.f_motion_add(self, GM.vb(self.other, "direction"), 1.5))
	(GM.f_sound_play(198.0))
	v_mypower = v_mypower - 1.0
	self.ev_user(1.0)
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
			GM.vsetb(v_wowza, "sprite_index", 961.0)
		else:
			GM.vsetb(v_wowza, "sprite_index", 962.0)
		GM.vsetb(v_wowza, "hspeed", hspeed)
		GM.vset(v_wowza, "v_electric", 2.0)
		GM.vsetb(v_wowza, "vspeed", vspeed)
		GM.vsetb(v_wowza, "friction", 0.1)
		GM.vsetb(v_wowza, "gravity", gravity)
		GM.vsetb(v_wowza, "depth", depth)
		GM.vb(v_wowza, "alarm")[int(0.0)] = 15.0
		self.ev_user(0.0)
		(GM.f_instance_destroy(self))
func ev_other_15():
	(self.script_copdestroy())
func ev_other_13():
	(GM.f_instance_destroy(self))
func ev_other_11():
	if ((v_mypower < 0.0)):
		v_wee = (GM.f_instance_create(x, y, 1051.0))
		GM.vsetb(v_wee, "vspeed", vspeed)
		GM.vsetb(v_wee, "hspeed", hspeed)
		GM.vsetb(v_wee, "depth", depth)
		(GM.f_instance_destroy(self))
func ev_other_0():
	x = (GM.room_width / 2.0)
	y = (GM.room_height / 2.0)
func ev_draw():
	if (((GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)) > (x + (sprite_width / 2.0)))):
		(GM.f_draw_sprite(873.0, (speed / 2.0), x, y))
	else:
		(GM.f_draw_sprite(874.0, (speed / 2.0), x, y))
	(GM.f_draw_sprite(1019.0, ((((GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), (GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)), (GM.vb(7.0, "y") + (GM.vb(7.0, "sprite_width") / 2.0)))) + 90.0)) / 10.0), x, y))
