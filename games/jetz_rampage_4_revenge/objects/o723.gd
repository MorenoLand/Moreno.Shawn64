extends "res://games/jetz_rampage_4_revenge/objects/o710.gd"
func ev_create():
	alarm[int(1.0)] = 40.0
	(GM.f_sound_play(170.0))
func ev_alarm_1():
	for _r827 in range(int((25.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 599.0))
	for _r828 in range(int((25.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
	(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 717.0))
	(GM.f_sound_play(170.0))
	(GM.f_instance_destroy(self))
func ev_alarm_0():
	v_throw = 1.0
func ev_stepend():
	x = (GM.vb(7.0, "x") + 10.0)
	y = (GM.vb(7.0, "y") + 10.0)
func ev_step():
	pass
func ev_other_0():
	pass
func ev_draw():
	if ((absf(GM.vget(7.0, "v_guyright") - 1.0) < 0.00001)):
		(GM.f_draw_sprite(736.0, 0.0, (GM.vb(7.0, "x") + 10.0), (GM.vb(7.0, "y") + 10.0)))
	else:
		(GM.f_draw_sprite(736.0, 1.0, (GM.vb(7.0, "x") + 10.0), (GM.vb(7.0, "y") + 10.0)))
func ev_keypress_32():
	pass
