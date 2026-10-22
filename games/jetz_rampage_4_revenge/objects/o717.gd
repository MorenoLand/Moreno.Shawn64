extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_wowze = 0.0
func ev_create():
	alarm[int(0.0)] = (60.0 + (GM.f_random(60.0)))
	direction = (20.0 + (GM.f_random(140.0)))
	speed = (5.0 + (GM.f_random(10.0)))
	gravity_direction = 270.0
	gravity = 0.4
	if not ((((self.script_view_check(self)))) >= 0.5):
		(GM.f_instance_destroy(self))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	v_wowze = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 720.0))
func ev_col_489():
	hspeed = 0.0
	vspeed = 0.0
	if (((absf(alarm[int(0.0)] - (-1.0)) < 0.00001))):
		alarm[int(0.0)] = (10.0 + (GM.f_random(10.0)))
func ev_other_0():
	(GM.f_instance_destroy(self))
