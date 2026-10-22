extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_create():
	(self.script_adddamage())
	speed = speed + (1.0 + (GM.f_random(3.0)))
	gravity_direction = 270.0
	gravity = 0.4
	(GM.f_sound_play(122.0))
	(GM.f_sound_play(170.0))
func ev_step():
	if ((speed > 1.0)):
		image_speed = (speed / 15.0)
	else:
		image_speed = 0.0
func ev_col_489():
	if ((vspeed > 4.0)):
		(GM.f_sound_play(121.0))
	if ((vspeed > 1.0)):
		vspeed = ((-vspeed) / 2.0)
	else:
		vspeed = 0.0
	hspeed = (hspeed / 4.0)
