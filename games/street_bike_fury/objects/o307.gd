extends "res://games/street_bike_fury/scripts.gd"
var v_hdir = 0.0
var v_maxh = 0.0
var v_maxv = 0.0
var v_mypower = 0.0
var v_set = 0.0
var v_starty = 0.0
var v_vdir = 0.0
var v_wee = 0.0
func ev_create():
	v_mypower = 6.0
	alarm[int(0.0)] = (20.0 + (GM.f_random(40.0)))
	(GM.f_sound_loop(71.0))
	v_starty = y
	v_hdir = 0.0
	v_vdir = 0.0
	v_maxh = 0.0
	v_maxv = 0.0
	(GM.f_sound_play(94.0))
func ev_alarm_0():
	alarm[int(0.0)] = (70.0 + (GM.f_random(40.0)))
	(GM.f_sound_play(76.0))
	v_set = (GM.f_instance_create(x, y, 310.0))
	GM.vsetb(v_set, "hspeed", GM.vb(v_set, "hspeed") + GM.vb(0.0, "hspeed"))
	GM.vsetb(v_set, "vspeed", GM.vb(v_set, "vspeed") + GM.vb(0.0, "vspeed"))
func ev_step():
	if ((x < (GM.view_xview[0] + 100.0))):
		hspeed = hspeed + 0.1
		if ((x < GM.view_xview[0])):
			if ((hspeed < GM.vb(0.0, "hspeed"))):
				hspeed = hspeed + 3.0
			hspeed = hspeed + 0.3
	if ((x > (GM.view_xview[0] + 100.0))):
		hspeed = hspeed - 0.1
		if ((x > (GM.view_xview[0] + 200.0))):
			if ((hspeed > GM.vb(0.0, "hspeed"))):
				hspeed = hspeed - 3.0
			hspeed = hspeed - 0.3
	if ((y < (GM.view_yview[0] + 150.0))):
		vspeed = vspeed + 0.1
		if ((y < (GM.view_yview[0] + 50.0))):
			if ((vspeed < GM.vb(0.0, "vspeed"))):
				vspeed = vspeed + 3.0
			vspeed = vspeed + 0.3
	if ((y > (GM.view_yview[0] + 150.0))):
		vspeed = vspeed - 0.1
		if ((y > (GM.view_yview[0] + 250.0))):
			if ((vspeed > GM.vb(0.0, "vspeed"))):
				vspeed = vspeed - 3.0
			vspeed = vspeed - 0.3
	v_set = (GM.f_instance_create(x, y, 256.0))
	GM.vsetb(v_set, "hspeed", GM.vb(v_set, "hspeed") + (hspeed - (GM.f_random(8.0))))
	GM.vsetb(v_set, "vspeed", (vspeed + (GM.f_random(8.0))))
func ev_col_262():
	self.ev_user(0.0)
func ev_col_240():
	v_mypower = v_mypower - 1.0
	if ((v_mypower < 0.0)):
		self.ev_user(0.0)
	for _w134 in GM.with_list((self.other), self):
		if _w134._dead:
			continue
		_w134.other = self
		(GM.f_instance_destroy(_w134))
func ev_col_20():
	v_mypower = v_mypower - 1.0
	if ((v_mypower < 0.0)):
		self.ev_user(0.0)
	for _w135 in GM.with_list((self.other), self):
		if _w135._dead:
			continue
		_w135.other = self
		(GM.f_instance_destroy(_w135))
func ev_other_10():
	for _r136 in range(int((15.0))):
		(GM.f_instance_create(((x - 50.0) + (GM.f_random(100.0))), ((y - 50.0) + (GM.f_random(100.0))), 224.0))
	(GM.f_sound_play(8.0))
	for _r137 in range(int((50.0))):
		v_set = (GM.f_instance_create(((x - 80.0) + (GM.f_random(160.0))), ((y - 50.0) + (GM.f_random(100.0))), 249.0))
		GM.vsetb(v_set, "hspeed", GM.vb(v_set, "hspeed") + hspeed)
		GM.vsetb(v_set, "vspeed", GM.vb(v_set, "vspeed") + vspeed)
	GM.G["baddies"] = GM.G["baddies"] + 100.0
	(self.script_addmessage("JETPACK? WTF +100", 255.0, 100.0))
	v_wee = (GM.f_instance_create(x, y, 204.0))
	GM.vsetb(v_wee, "hspeed", GM.vb(v_wee, "hspeed") + hspeed)
	GM.vsetb(v_wee, "vspeed", GM.vb(v_wee, "vspeed") + vspeed)
	GM.vsetb(v_wee, "depth", depth)
	(GM.f_instance_destroy(self))
	(GM.f_sound_stop(71.0))
func ev_draw():
	(GM.f_texture_set_interpolation(1.0))
	if ((GM.vb(0.0, "x") > x)):
		(GM.f_draw_sprite_ext(220.0, 0.0, x, y, 1.0, 1.0, (GM.f_point_direction(x, y, GM.vb(0.0, "x"), GM.vb(0.0, "y"))), 16777215.0, 1.0))
		(GM.f_draw_sprite_ext(219.0, 1.0, x, y, 1.0, 1.0, ((-hspeed) / 6.0), 16777215.0, 1.0))
	if ((GM.vb(0.0, "x") < x)):
		(GM.f_draw_sprite_ext(220.0, 1.0, x, y, 1.0, 1.0, (GM.f_point_direction(x, y, GM.vb(0.0, "x"), GM.vb(0.0, "y"))), 16777215.0, 1.0))
		(GM.f_draw_sprite_ext(219.0, 0.0, x, y, 1.0, 1.0, ((-hspeed) / 6.0), 16777215.0, 1.0))
	(GM.f_texture_set_interpolation(0.0))
