extends "res://games/jetz_rampage_4_revenge/objects/o613.gd"
var v_wee = 0.0
func ev_create():
	if ((absf(GM.room - 1.0) < 0.00001)):
		sprite_index = 519.0
	if ((absf(GM.room - 16.0) < 0.00001)):
		sprite_index = 871.0
	v_image_single = (image_number - 1.0)
	gravity_direction = 270.0
	gravity = 0.4
func ev_step():
	if ((speed > 4.0)):
		v_wee = (GM.f_instance_create(x, y, 613.0))
		GM.vsetb(v_wee, "speed", speed)
		GM.vsetb(v_wee, "direction", direction)
		(GM.f_instance_destroy(self))
func ev_col_639():
	if ((vspeed > 4.0)):
		(GM.f_sound_play(121.0))
	if ((vspeed > 1.0)):
		vspeed = ((-vspeed) / 2.0)
	else:
		vspeed = 0.0
	hspeed = (hspeed / 4.0)
