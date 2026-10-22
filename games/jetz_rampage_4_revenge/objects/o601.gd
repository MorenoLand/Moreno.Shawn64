extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_fluh = 0.0
var v_wee = 0.0
var v_wowzzs = 0.0
func ev_create():
	speed = speed + (5.0 + (GM.f_random(5.0)))
	gravity_direction = 270.0
	gravity = 0.4
	(GM.f_sound_play(129.0))
	image_index = 5.0
	(self.script_adddamage())
func ev_step():
	if ((speed > 1.0)):
		image_speed = (speed / 20.0)
		v_wee = (GM.f_round((GM.f_random(1.0))))
		if (GM.eq(v_wee, 0.0)):
			v_wowzzs = (GM.f_instance_create(((x + (sprite_width / 2.0)) - 2.5), ((y + (sprite_height / 2.0)) - 2.5), 602.0))
			GM.vsetb(v_wowzzs, "direction", (image_index * 18.0))
			GM.vsetb(v_wowzzs, "speed", (GM.f_random(5.0)))
			GM.vsetb(v_wowzzs, "hspeed", GM.vb(v_wowzzs, "hspeed") + hspeed)
			GM.vsetb(v_wowzzs, "vspeed", GM.vb(v_wowzzs, "vspeed") + vspeed)
	else:
		image_speed = 0.0
func ev_col_656():
	if ((speed < 2.0)):
		v_fluh = GM.vget(self.other, "v_wooper")
		direction = ((GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), GM.vb(v_fluh, "x"), GM.vb(v_fluh, "y"))) - 180.0)
		speed = speed + (10.0 + (GM.f_random(3.0)))
func ev_col_604():
	if ((vspeed > 4.0)):
		(GM.f_sound_play(121.0))
	if ((vspeed > 1.0)):
		vspeed = ((-vspeed) / 2.0)
	else:
		vspeed = 0.0
	hspeed = (hspeed / 4.0)
func ev_other_0():
	(GM.f_instance_destroy(self))
