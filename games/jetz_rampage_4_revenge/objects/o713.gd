extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_go = 0.0
var v_jump = 0.0
var v_mypower = 0.0
var v_poom = 0.0
var v_sheezus = 0.0
var v_weez = 0.0
var v_woot = 0.0
var v_woot2 = 0.0
var v_woot3 = 0.0
var v_wow = 0.0
var v_wowza = 0.0
func ev_create():
	depth = depth - (13.0 / 60.0)
	friction = 0.2
	gravity = 0.5
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
func ev_alarm_0():
	v_go = 1.0
func ev_step():
	image_speed = (speed / 15.0)
	v_wow = (GM.f_round((GM.f_random(15.0))))
	if (GM.eq(v_wow, 0.0)):
		(GM.f_sound_play(192.0))
		v_weez = (GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 714.0))
		GM.vsetb(v_weez, "speed", 20.0)
		GM.vsetb(v_weez, "direction", (GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), (GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)), (GM.vb(7.0, "y") + (GM.vb(7.0, "sprite_height") / 2.0)))))
		GM.vsetb(v_weez, "hspeed", GM.vb(v_weez, "hspeed") + hspeed)
		GM.vsetb(v_weez, "vspeed", GM.vb(v_weez, "vspeed") + vspeed)
	if ((absf(vspeed - 0.0) < 0.00001)):
		if (((absf(v_jump - 1.0) < 0.00001)) and (((GM.f_distance_to_object(self, 502.0)) < 100.0))):
			if ((absf(v_go - 1.0) < 0.00001)):
				v_poom = (GM.f_round((GM.f_random(2.0))))
				if ((absf(v_poom - 0.0) < 0.00001)):
					hspeed = ((-4.0) - (GM.f_random(4.0)))
				if ((absf(v_poom - 1.0) < 0.00001)):
					hspeed = (4.0 + (GM.f_random(4.0)))
				if ((absf(v_poom - 2.0) < 0.00001)):
					(GM.f_motion_add(self, (80.0 + (GM.f_random(10.0))), (5.0 + (GM.f_random(10.0)))))
					v_jump = 0.0
				alarm[int(0.0)] = 15.0
				v_go = 0.0
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
	if ((hspeed > 15.0)):
		hspeed = 15.0
	if ((hspeed < (-15.0))):
		hspeed = (-15.0)
	if ((((GM.f_distance_to_object(self, 7.0)) > 500.0) and (absf(vspeed - 0.0) < 0.00001))):
		v_sheezus = (GM.f_instance_create(x, (y - 5.0), 712.0))
		if ((GM.vb(v_sheezus, "y") < 1060.0)):
			GM.vsetb(v_sheezus, "y", 1060.0)
		GM.vset(v_sheezus, "v_mypower", v_mypower)
		(GM.f_instance_destroy(self))
func ev_col_656():
	if ((absf(GM.vget(self.other, "v_hitcop") - 0.0) < 0.00001)):
		v_wowza = (GM.f_instance_create(x, y, 715.0))
		if (((GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)) > (x + (sprite_width / 2.0)))):
			GM.vsetb(v_wowza, "sprite_index", 731.0)
		else:
			GM.vsetb(v_wowza, "sprite_index", 735.0)
		GM.vsetb(v_wowza, "hspeed", hspeed)
		GM.vb(v_wowza, "alarm")[int(0.0)] = 15.0
		GM.vset(v_wowza, "v_electric", 1.0)
		GM.vsetb(v_wowza, "vspeed", vspeed)
		GM.vsetb(v_wowza, "gravity", gravity)
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
			GM.vsetb(v_wowza, "sprite_index", 731.0)
		else:
			GM.vsetb(v_wowza, "sprite_index", 735.0)
		GM.vsetb(v_wowza, "hspeed", hspeed)
		GM.vset(v_wowza, "v_electric", 1.0)
		GM.vsetb(v_wowza, "vspeed", vspeed)
		GM.vsetb(v_wowza, "gravity", gravity)
		GM.vsetb(v_wowza, "depth", depth)
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
			GM.vsetb(v_wowza, "sprite_index", 731.0)
		else:
			GM.vsetb(v_wowza, "sprite_index", 735.0)
		GM.vsetb(v_wowza, "hspeed", hspeed)
		GM.vset(v_wowza, "v_electric", 1.0)
		GM.vsetb(v_wowza, "vspeed", vspeed)
		GM.vsetb(v_wowza, "gravity", gravity)
		GM.vsetb(v_wowza, "depth", depth)
		GM.vb(v_wowza, "alarm")[int(0.0)] = 15.0
		self.ev_user(0.0)
		(GM.f_instance_destroy(self))
func ev_other_13():
	(GM.f_instance_destroy(self))
func ev_other_10():
	GM.G["blue"] = GM.G["blue"] - 1.0
func ev_draw():
	if (((GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)) > (x + (sprite_width / 2.0)))):
		(GM.f_draw_sprite(725.0, (-1.0), x, y))
	else:
		(GM.f_draw_sprite(726.0, (-1.0), x, y))
	(GM.f_draw_sprite(727.0, ((((GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), (GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)), (GM.vb(7.0, "y") + (GM.vb(7.0, "sprite_width") / 2.0)))) + 90.0)) / 10.0), (x + 20.0), (y + 40.0)))
func ev_keypress_32():
	if ((((GM.f_place_meeting(self, x, y, 7.0))) >= 0.5 and (absf((GM.f_instance_number(710.0)) - 0.0) < 0.00001))):
		(GM.f_instance_create(x, y, 723.0))
		v_wowza = (GM.f_instance_create(x, y, 715.0))
		GM.vset(v_wowza, "v_electric", 1.0)
		GM.vsetb(v_wowza, "sprite_index", 738.0)
		GM.vsetb(v_wowza, "hspeed", hspeed)
		GM.vsetb(v_wowza, "vspeed", vspeed)
		GM.vsetb(v_wowza, "gravity", gravity)
		GM.vset(v_wowza, "v_image_single", 2.0)
		GM.vb(v_wowza, "alarm")[int(0.0)] = 15.0
		GM.vsetb(v_wowza, "depth", depth)
		self.ev_user(0.0)
		(GM.f_instance_destroy(self))
