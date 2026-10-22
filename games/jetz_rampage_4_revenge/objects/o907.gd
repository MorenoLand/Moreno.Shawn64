extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_wee = 0.0
var v_wow = 0.0
func ev_create():
	v_wow = (GM.f_floor((GM.f_random(1.999))))
	if (GM.eq(v_wow, 0.0)):
		direction = 0.0
	if (GM.eq(v_wow, 1.0)):
		direction = 180.0
	speed = (4.0 + (GM.f_random(10.0)))
	gravity = 0.4
	gravity_direction = 270.0
func ev_step():
	if ((vspeed < 0.5)):
		v_wow = (GM.f_floor((GM.f_random(25.999))))
		if (GM.eq(v_wow, 0.0)):
			sprite_index = 925.0
			vspeed = ((-5.0) - (GM.f_random(15.0)))
func ev_col_656():
	for _r539 in range(int((75.0))):
		v_wee = (GM.f_instance_create((x + (GM.f_random((sprite_width - 2.0)))), (y + (GM.f_random((sprite_height - 2.0)))), 662.0))
		GM.vset(v_wee, "v_yyy", GM.room_height)
		for _w540 in GM.with_list((v_wee), self):
			if _w540._dead:
				continue
			_w540.other = self
			(GM.f_motion_add(_w540, (GM.f_random(360.0)), (2.0 + (GM.f_random(15.0)))))
	(GM.f_sound_play(190.0))
	(GM.f_instance_destroy(self))
func ev_col_502():
	for _r541 in range(int((75.0))):
		v_wee = (GM.f_instance_create((x + (GM.f_random((sprite_width - 2.0)))), (y + (GM.f_random((sprite_height - 2.0)))), 662.0))
		GM.vset(v_wee, "v_yyy", GM.room_height)
		for _w542 in GM.with_list((v_wee), self):
			if _w542._dead:
				continue
			_w542.other = self
			(GM.f_motion_add(_w542, (GM.f_random(360.0)), (2.0 + (GM.f_random(15.0)))))
	(GM.f_sound_play(190.0))
	(GM.f_instance_destroy(self))
func ev_col_489():
	vspeed = 0.0
	sprite_index = 924.0
func ev_other_0():
	(self.script_Outside_Wrap())
