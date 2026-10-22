extends "res://games/infection2/scripts.gd"
var v_jump = 0.0
var v_mypower = 0.0
var v_sound = 0.0
var v_temp = 0.0
var v_tilt = 0.0
func ev_create():
	v_mypower = 5.0
	gravity = 0.4
	gravity_direction = 270.0
	v_tilt = 0.0
func ev_stepend():
	if (((GM.f_place_meeting(self, (x + hspeed), y, 1.0)))) >= 0.5:
		hspeed = 0.0
func ev_step():
	if (((GM.f_distance_to_object(self, 0.0)) < 350.0)):
		if ((GM.vb(0.0, "x") < x)):
			if not (((GM.f_place_meeting(self, ((x + hspeed) - 1.0), y, 1.0))) >= 0.5):
				(GM.f_motion_add(self, 180.0, 0.3))
			else:
				v_jump = (GM.f_floor((GM.f_random(1.99999))))
				if (((absf(v_jump - 0.0) < 0.00001) and (vspeed >= 0.0))):
					vspeed = vspeed - 8.0
		if ((GM.vb(0.0, "x") > x)):
			if not (((GM.f_place_meeting(self, ((x + hspeed) + 1.0), y, 1.0))) >= 0.5):
				(GM.f_motion_add(self, 0.0, 0.3))
			else:
				v_jump = (GM.f_floor((GM.f_random(1.99999))))
				if (((absf(v_jump - 0.0) < 0.00001) and (vspeed >= 0.0))):
					vspeed = vspeed - 8.0
	if ((hspeed > 8.0)):
		hspeed = 8.0
	if ((hspeed < (-8.0))):
		hspeed = (-8.0)
	v_sound = (GM.f_floor((GM.f_random(199.99999))))
	if ((absf(v_sound - 0.0) < 0.00001)):
		(GM.f_sound_pan(18.0, (0.5 - ((((((GM.view_xview[int(0.0)] + ((GM.view_wview[int(0.0)] / 2.0)))) - x)) / 1000.0)))))
		(GM.f_sound_play(18.0))
		v_temp = (GM.f_instance_create(GM.vb(self.other, "x"), GM.vb(self.other, "y"), 64.0))
		GM.vsetb(v_temp, "direction", (GM.f_random(360.0)))
		GM.vsetb(v_temp, "speed", (GM.f_random(10.0)))
	if ((absf(v_sound - 1.0) < 0.00001)):
		(GM.f_sound_pan(19.0, (0.5 - ((((((GM.view_xview[int(0.0)] + ((GM.view_wview[int(0.0)] / 2.0)))) - x)) / 1000.0)))))
		(GM.f_sound_play(19.0))
	if ((absf(v_sound - 2.0) < 0.00001)):
		(GM.f_sound_pan(20.0, (0.5 - ((((((GM.view_xview[int(0.0)] + ((GM.view_wview[int(0.0)] / 2.0)))) - x)) / 1000.0)))))
		(GM.f_sound_play(20.0))
	if ((((vspeed < 0.0) and (hspeed < 0.0)) and (v_tilt > (-50.0)))):
		v_tilt = v_tilt - 3.0
	if ((((vspeed < 0.0) and (hspeed > 0.0)) and (v_tilt < 50.0))):
		v_tilt = v_tilt + 3.0
	if (((vspeed > 0.0) and (v_tilt > 0.0))):
		v_tilt = v_tilt - 3.0
	if (((vspeed > 0.0) and (v_tilt < 0.0))):
		v_tilt = v_tilt + 3.0
func ev_col_56():
	hspeed = hspeed + ((-2.0) + (GM.f_random(4.0)))
	vspeed = vspeed - (GM.f_random(0.1))
func ev_col_33():
	(GM.f_instance_destroy(self))
func ev_col_23():
	v_mypower = v_mypower - 1.0
	for _r12 in range(int((30.0))):
		v_temp = (GM.f_instance_create(GM.vb(self.other, "x"), GM.vb(self.other, "y"), 64.0))
		GM.vsetb(v_temp, "direction", ((GM.vb(self.other, "direction") - 10.0) + (GM.f_random(20.0))))
		GM.vsetb(v_temp, "speed", (GM.f_random((GM.vb(self.other, "speed") / 2.0))))
	if ((v_mypower < 0.0)):
		self.ev_user(0.0)
	(GM.f_sound_play(19.0))
	for _w13 in GM.with_list((self.other), self):
		if _w13._dead:
			continue
		_w13.other = self
		(GM.f_instance_destroy(_w13))
func ev_col_1():
	if ((vspeed > 2.0)):
		(GM.f_sound_play(9.0))
	if (((vspeed > 0.0) and not (((GM.f_place_free(self, x, (y + vspeed)))) >= 0.5))):
		if (((vspeed > 0.0) and ((GM.f_place_free(self, x, ((y + vspeed) + 1.0)))) >= 0.5)):
			(GM.f_move_contact(self, 270.0))
	vspeed = 0.0
	v_tilt = 0.0
func ev_other_10():
	for _r14 in range(int((100.0))):
		v_temp = (GM.f_instance_create(GM.vb(self.other, "x"), GM.vb(self.other, "y"), 64.0))
		GM.vsetb(v_temp, "direction", (GM.f_random(360.0)))
		GM.vsetb(v_temp, "speed", (GM.f_random(10.0)))
	(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_draw_sprite_ext(43.0, (-1.0), x, y, 1.0, 1.0, v_tilt, 16777215.0, 1.0))
