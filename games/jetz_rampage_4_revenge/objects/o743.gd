extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_bullettrail = 0.0
var v_wow = 0.0
func ev_create():
	direction = (GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), (GM.vb(746.0, "x") + (GM.vb(746.0, "sprite_width") / 2.0)), (GM.vb(746.0, "y") + (GM.vb(746.0, "sprite_height") / 2.0))))
	speed = 70.0
	hspeed = hspeed + GM.vb(7.0, "hspeed")
	vspeed = vspeed + GM.vb(7.0, "vspeed")
	v_wow = (GM.f_instance_create(x, y, v_bullettrail))
	GM.vsetb(v_wow, "direction", direction)
	GM.vsetb(v_wow, "speed", (speed - 10.0))
	v_wow = (GM.f_instance_create(x, y, v_bullettrail))
	GM.vsetb(v_wow, "direction", direction)
	GM.vsetb(v_wow, "speed", (speed - 20.0))
	v_wow = (GM.f_instance_create(x, y, v_bullettrail))
	GM.vsetb(v_wow, "direction", direction)
	GM.vsetb(v_wow, "speed", (speed - 30.0))
	v_wow = (GM.f_instance_create(x, y, v_bullettrail))
	GM.vsetb(v_wow, "direction", direction)
	GM.vsetb(v_wow, "speed", (speed - 40.0))
	v_wow = (GM.f_instance_create(x, y, v_bullettrail))
	GM.vsetb(v_wow, "direction", direction)
	GM.vsetb(v_wow, "speed", (speed - 50.0))
func ev_step():
	if (((self.script_view_check(self)))) >= 0.5:
		v_wow = (GM.f_instance_create(x, y, 745.0))
		GM.vsetb(v_wow, "direction", direction)
		GM.vsetb(v_wow, "speed", (speed - 5.0))
		v_wow = (GM.f_instance_create(x, y, 745.0))
		GM.vsetb(v_wow, "direction", direction)
		GM.vsetb(v_wow, "speed", (speed - 10.0))
		v_wow = (GM.f_instance_create(x, y, 745.0))
		GM.vsetb(v_wow, "direction", direction)
		GM.vsetb(v_wow, "speed", (speed - 15.0))
		v_wow = (GM.f_instance_create(x, y, 745.0))
		GM.vsetb(v_wow, "direction", direction)
		GM.vsetb(v_wow, "speed", (speed - 20.0))
		v_wow = (GM.f_instance_create(x, y, 745.0))
		GM.vsetb(v_wow, "direction", direction)
		GM.vsetb(v_wow, "speed", (speed - 25.0))
		v_wow = (GM.f_instance_create(x, y, 745.0))
		GM.vsetb(v_wow, "direction", direction)
		GM.vsetb(v_wow, "speed", (speed - 30.0))
		v_wow = (GM.f_instance_create(x, y, 745.0))
		GM.vsetb(v_wow, "direction", direction)
		GM.vsetb(v_wow, "speed", (speed - 35.0))
		(GM.f_instance_create(((x + 1.0) + (GM.f_random(1.0))), ((y + 1.0) + (GM.f_random(1.0))), 734.0))
	if ((y > 1112.0)):
		(GM.f_instance_destroy(self))
		(GM.f_sound_play(129.0))
	if (((GM.f_point_distance(x, y, (GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)), (GM.vb(7.0, "y") + (GM.vb(7.0, "sprite_height") / 2.0)))) < 300.0)):
		if not ((((GM.f_sound_isplaying(207.0)))) >= 0.5):
			(GM.f_sound_play(207.0))
func ev_col_603():
	(GM.f_instance_destroy(self))
func ev_col_7():
	(GM.f_sound_play(129.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
