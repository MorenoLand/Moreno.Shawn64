extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_create():
	(self.script_adddamage())
	speed = speed + (15.0 + (GM.f_random(5.0)))
	gravity_direction = 270.0
	gravity = 0.5
func ev_step():
	if ((speed > 1.0)):
		image_speed = (speed / 20.0)
	else:
		image_speed = 0.0
func ev_col_604():
	for _r239 in range(int((25.0))):
		(GM.f_instance_create((x + (GM.f_random((sprite_width - 3.0)))), (y + (GM.f_random((sprite_height - 3.0)))), 609.0))
	(GM.f_sound_play(126.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
