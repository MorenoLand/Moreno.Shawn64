extends "res://games/fwm/scripts.gd"
var v_particalcolor = 0.0
func ev_create():
	(GM.f_sound_play(6.0))
	gravity_direction = 270.0
	gravity = GM.vget(1.0, "v_shotgravity")
	(GM.f_motion_set(self, (85.0 + (GM.f_random(10.0))), 14.0))
	alarm[int(0.0)] = 60.0
	if (((absf(v_particalcolor - 0.0) < 0.00001))):
		sprite_index = 13.0
		image_speed = 1.0
	if (((absf(v_particalcolor - 1.0) < 0.00001))):
		sprite_index = 18.0
		image_speed = 1.0
	if (((absf(v_particalcolor - 2.0) < 0.00001))):
		sprite_index = 21.0
		image_speed = 1.0
	if (((absf(v_particalcolor - 3.0) < 0.00001))):
		sprite_index = 24.0
		image_speed = 1.0
	if (((absf(v_particalcolor - 4.0) < 0.00001))):
		sprite_index = 18.0
		image_speed = 1.0
func ev_alarm_0():
	(GM.f_sound_play(5.0))
	for _r6 in range(int((GM.vget(1.0, "v_particalnumber")))):
		(GM.f_instance_create((x + 0.0), (y + 0.0), 14.0))
	(GM.f_instance_destroy(self))
func ev_step():
	image_single = 0.0
