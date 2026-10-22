extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_fluh = 0.0
var v_image_single = 0.0
func ev_create():
	if ((absf(GM.room - 1.0) < 0.00001)):
		sprite_index = 519.0
	if ((absf(GM.room - 16.0) < 0.00001)):
		sprite_index = 871.0
	(self.script_adddamage())
	v_image_single = (image_number - 1.0)
	gravity_direction = 270.0
	gravity = 0.4
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
