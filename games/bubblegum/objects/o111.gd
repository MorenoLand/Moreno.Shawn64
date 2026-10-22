extends "res://games/bubblegum/scripts.gd"
var v_shotready = 0.0
func ev_create():
	v_shotready = 1.0
	friction = 0.1
func ev_alarm_0():
	v_shotready = 1.0
func ev_step():
	if (((speed > 5.0))):
		speed = 5.0
func ev_col_116():
	(GM.f_sound_stop(8.0))
	(GM.f_room_restart())
func ev_col_79():
	hspeed = 0.0
func ev_key_39():
	(GM.f_motion_add(self, 0.0, 0.5))
func ev_key_37():
	(GM.f_motion_add(self, 180.0, 0.5))
func ev_key_17():
	if (((absf(v_shotready - 1.0) < 0.00001))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 114.0))
		alarm[int(0.0)] = 10.0
		v_shotready = 0.0
