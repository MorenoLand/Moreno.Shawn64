extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_what = 0.0
var v_wowzz = 0.0
func ev_create():
	speed = (5.0 + (GM.f_random(5.0)))
	gravity_direction = 270.0
	gravity = 0.4
	v_what = 0.0
	alarm[int(0.0)] = 2.0
	(self.script_adddamage())
func ev_alarm_0():
	v_what = 1.0
func ev_step():
	if ((speed > 1.0)):
		image_speed = (speed / 20.0)
	else:
		image_speed = 0.0
func ev_col_604():
	for _r241 in range(int((5.0))):
		v_wowzz = (GM.f_instance_create(((x + (sprite_width / 2.0)) - 2.5), ((y + (sprite_height / 2.0)) - 2.5), 599.0))
		GM.vsetb(v_wowzz, "direction", (GM.f_random(360.0)))
	if ((speed < 3.0)):
		self.ev_user(0.0)
	if ((vspeed > 4.0)):
		(GM.f_sound_play(135.0))
	if ((vspeed > 1.0)):
		vspeed = ((-vspeed) / 2.0)
	else:
		vspeed = 0.0
	hspeed = (hspeed / 4.0)
func ev_other_10():
	if (((absf(v_what - 1.0) < 0.00001))):
		for _r242 in range(int((50.0))):
			v_wowzz = (GM.f_instance_create(((x + (sprite_width / 2.0)) - 2.5), ((y + (sprite_height / 2.0)) - 2.5), 599.0))
			GM.vsetb(v_wowzz, "direction", (GM.f_random(360.0)))
		for _r243 in range(int((5.0))):
			v_wowzz = (GM.f_instance_create((x + (sprite_width / 2.0)), ((y + (sprite_height / 2.0)) - 5.0), 608.0))
			GM.vsetb(v_wowzz, "direction", (GM.f_random(360.0)))
		(GM.f_sound_play(134.0))
		(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
