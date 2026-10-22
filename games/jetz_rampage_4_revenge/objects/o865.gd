extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_wow = 0.0
func ev_create():
	y = (GM.f_random(828.0))
	if ((absf(GM.room - 20.0) < 0.00001)):
		y = (GM.f_random((GM.room_height - 200.0)))
	x = (GM.f_random(GM.room_width))
	v_wow = (GM.f_round((GM.f_random(1.0))))
	if (GM.eq(v_wow, 0.0)):
		sprite_index = 890.0
		direction = 0.0
		speed = (3.0 + (GM.f_random(10.0)))
	if (GM.eq(v_wow, 1.0)):
		sprite_index = 891.0
		direction = 180.0
		speed = (3.0 + (GM.f_random(10.0)))
func ev_other_0():
	(self.script_Outside_Wrap(0.0, 0.0, 0.0, 0.0, 0.0))
