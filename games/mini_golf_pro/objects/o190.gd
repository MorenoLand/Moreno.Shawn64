extends "res://games/mini_golf_pro/scripts.gd"
func ev_create():
	x = (GM.room_width / 2.0)
	y = (GM.room_height / 2.0)
	image_alpha = 1.0
	alarm[int(0.0)] = 30.0
	alarm[int(1.0)] = 90.0
func ev_alarm_1():
	(GM.f_instance_create(0.0, 0.0, 95.0))
func ev_alarm_0():
	alarm[int(0.0)] = 30.0
	(GM.f_instance_create((x + 0.0), (y + 0.0), 191.0))
func ev_step():
	if ((image_xscale > 1.0)):
		image_xscale = image_xscale - 0.01
		image_yscale = image_yscale - 0.01
	else:
		image_xscale = 1.0
		image_yscale = 1.0
