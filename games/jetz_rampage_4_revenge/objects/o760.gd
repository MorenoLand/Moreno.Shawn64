extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_blowup = 0.0
func ev_create():
	(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 545.0))
	alarm[int(0.0)] = 80.0
	v_blowup = 0.0
	alarm[int(2.0)] = 10.0
func ev_alarm_2():
	v_blowup = 1.0
func ev_alarm_1():
	visible = 1.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	(GM.f_instance_create((x - (GM.f_random(5.0))), (y - (GM.f_random(5.0))), 762.0))
	if ((y < GM.view_yview[0])):
		(GM.f_instance_destroy(self))
	(GM.f_motion_add(self, (GM.f_point_direction(x, y, (GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)), (GM.vb(7.0, "y") + (GM.vb(7.0, "sprite_height") / 2.0)))), (300.0 / (GM.f_distance_to_point(self, (GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)), (GM.vb(7.0, "y") + (GM.vb(7.0, "sprite_height") / 2.0)))))))
	if ((speed > 50.0)):
		speed = 50.0
	if ((((GM.f_distance_to_point(self, (GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)), (GM.vb(7.0, "y") + (GM.vb(7.0, "sprite_height") / 2.0)))) < 100.0) and (absf(v_blowup - 1.0) < 0.00001))):
		self.ev_user(0.0)
func ev_col_7():
	self.ev_user(0.0)
func ev_other_10():
	for _r437 in range(int((10.0))):
		(GM.f_instance_create(((x - 2.0) + (GM.f_random(4.0))), ((y - 2.0) + (GM.f_random(4.0))), 764.0))
	for _r438 in range(int((40.0))):
		(GM.f_instance_create((x - (GM.f_random(5.0))), (y - (GM.f_random(5.0))), 767.0))
	(GM.f_sound_play(211.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
