extends "res://games/jetz_rampage_4_revenge/objects/o655.gd"
var v_sheesh = 0.0
var v_wee = 0.0
var v_woot = 0.0
func ev_create():
	(GM.f_sound_play(226.0))
	(GM.f_sound_play(241.0))
	v_hitornot = 0.0
	if ((absf(GM.vget(7.0, "v_guyright") - 1.0) < 0.00001)):
		vspeed = GM.vb(7.0, "vspeed")
		hspeed = (GM.vb(7.0, "hspeed") + 15.0)
	if ((absf(GM.vget(7.0, "v_guyleft") - 1.0) < 0.00001)):
		vspeed = GM.vb(7.0, "vspeed")
		hspeed = (GM.vb(7.0, "hspeed") - 15.0)
	gravity = 0.5
	gravity_direction = 270.0
	alarm[int(0.0)] = 100.0
	for _r906 in range(int((15.0))):
		v_sheesh = (GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 493.0))
		GM.vsetb(v_sheesh, "vspeed", GM.vb(v_sheesh, "vspeed") + GM.vb(7.0, "vspeed"))
		GM.vsetb(v_sheesh, "hspeed", GM.vb(v_sheesh, "hspeed") + GM.vb(7.0, "hspeed"))
	(GM.f_instance_create(0.0, 0.0, 497.0))
	for _r907 in range(int((20.0))):
		v_wee = (GM.f_instance_create(((x - 50.0) + (GM.f_random(100.0))), ((y - 50.0) + (GM.f_random(100.0))), 1018.0))
		GM.vsetb(v_wee, "direction", (GM.f_random(360.0)))
		GM.vsetb(v_wee, "speed", (GM.f_random(5.0)))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	if ((((GM.f_random(2.0)) < 1.0))):
		(GM.f_sound_play(241.0))
		v_wee = (GM.f_instance_create(x, y, 1018.0))
		GM.vsetb(v_wee, "direction", ((direction - 5.0) + (GM.f_random(5.0))))
		GM.vsetb(v_wee, "speed", (speed - (GM.f_random(15.0))))
	(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 490.0))
	if ((((GM.f_random(25.0)) < 1.0))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 717.0))
func ev_col_1125():
	self.ev_user(0.0)
func ev_other_10():
	(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 490.0))
	(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 717.0))
	for _r908 in range(int((80.0))):
		v_wee = (GM.f_instance_create(((x - 50.0) + (GM.f_random(100.0))), ((y - 50.0) + (GM.f_random(100.0))), 1018.0))
		GM.vsetb(v_wee, "direction", (GM.f_random(360.0)))
		GM.vsetb(v_wee, "speed", (GM.f_random(15.0)))
	v_woot = (GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 488.0))
	(GM.f_sound_play(241.0))
	(GM.f_instance_destroy(self))
