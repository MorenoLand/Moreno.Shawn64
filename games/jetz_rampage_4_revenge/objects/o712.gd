extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_mypower = 0.0
var v_shizzeds = 0.0
var v_weezing = 0.0
var v_wow = 0.0
var v_wow2 = 0.0
var v_wow3 = 0.0
var v_wow4 = 0.0
var v_wows = 0.0
var v_wowza = 0.0
var v_xxx = 0.0
func ev_create():
	v_weezing = (GM.f_random(10000.0))
	if (((GM.f_instance_number(7.0)) > 0.0)):
		if (((GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)) > (x + (sprite_width / 2.0)))):
			v_wow = 0.0
		else:
			v_wow = 1.0
	else:
		v_wow = (GM.f_round((GM.f_random(1.0))))
	v_wow2 = (GM.f_random(2.0))
	v_wow3 = (v_wow2 / 10.0)
	v_wow4 = 10.0
	if (GM.eq(v_wow, 0.0)):
		hspeed = (3.0 + v_wow2)
		sprite_index = 722.0
	if (GM.eq(v_wow, 1.0)):
		hspeed = ((-3.0) - v_wow2)
		sprite_index = 724.0
	image_speed = (0.3 + v_wow3)
	y = y + ((-10.0) + v_wow4)
	depth = (-7.0)
	depth = depth - (v_wow4 / 60.0)
func ev_step():
	if ((absf((GM.f_instance_number(7.0)) - 1.0) < 0.00001)):
		if (((GM.G["warning"] > 20.0) and ((GM.f_distance_to_object(self, 7.0)) < 200.0))):
			if (((x > 50.0) and (x < (GM.room_width - 90.0)))):
				v_wows = (GM.f_instance_create(x, y, 713.0))
				GM.vset(v_wows, "v_mypower", v_mypower)
				GM.vsetb(v_wows, "depth", depth)
				(GM.f_instance_destroy(self))
func ev_col_656():
	v_wows = (GM.f_instance_create(x, y, 713.0))
	GM.vset(v_wows, "v_mypower", v_mypower)
	GM.vsetb(v_wows, "depth", depth)
	(GM.f_instance_destroy(self))
func ev_col_502():
	(GM.f_sound_play(198.0))
	if (((x > 50.0) and (x < (GM.room_width - 90.0)))):
		v_wows = (GM.f_instance_create(x, y, 713.0))
		GM.vset(v_wows, "v_mypower", v_mypower)
		GM.vsetb(v_wows, "depth", depth)
		(GM.f_instance_destroy(self))
func ev_col_491():
	(GM.f_sound_play(198.0))
	if (((x > 50.0) and (x < (GM.room_width - 90.0)))):
		v_wows = (GM.f_instance_create(x, y, 713.0))
		GM.vset(v_wows, "v_mypower", v_mypower)
		GM.vsetb(v_wows, "depth", depth)
		(GM.f_instance_destroy(self))
func ev_other_13():
	(GM.f_instance_destroy(self))
func ev_other_10():
	while true:
		v_xxx = (GM.f_random(GM.room_width))
		if (((v_xxx < (GM.view_xview[0] - 40.0)) or (v_xxx > (GM.view_xview[0] + 800.0)))):
			break
	v_shizzeds = (GM.f_instance_create(v_xxx, 1080.0, 712.0))
	GM.vset(v_shizzeds, "v_mypower", 5.0)
func ev_other_4():
	x = (GM.f_random(GM.room_width))
	v_mypower = 5.0
func ev_other_0():
	(self.script_Outside_Wrap())
func ev_keypress_32():
	if ((((GM.f_place_meeting(self, x, y, 7.0))) >= 0.5 and (absf((GM.f_instance_number(710.0)) - 0.0) < 0.00001))):
		(GM.f_instance_create(x, y, 723.0))
		v_wowza = (GM.f_instance_create(x, y, 715.0))
		GM.vsetb(v_wowza, "sprite_index", 738.0)
		GM.vsetb(v_wowza, "hspeed", hspeed)
		GM.vset(v_wowza, "v_electric", 1.0)
		GM.vsetb(v_wowza, "vspeed", vspeed)
		GM.vsetb(v_wowza, "gravity", gravity)
		GM.vsetb(v_wowza, "image_single", 2.0)
		GM.vsetb(v_wowza, "depth", depth)
		GM.vb(v_wowza, "alarm")[int(0.0)] = 15.0
		self.ev_user(0.0)
		(GM.f_instance_destroy(self))
