extends "res://games/gm_hoops/scripts.gd"
var v_boom = 0.0
func ev_create():
	v_boom = 0.0
func ev_step():
	image_speed = (speed / 25.0)
	if (((absf(v_boom - 1.0) < 0.00001))):
		gravity_direction = 270.0
		gravity = 0.0
		x = (GM.mouse_x - 24.0)
		y = (GM.mouse_y - 24.0)
	else:
		gravity_direction = 270.0
		gravity = 0.5
	if (not ((((GM.f_mouse_check_button(1.0)))) >= 0.5)):
		v_boom = 0.0
	if (((absf((GM.f_instance_number(5.0)) - 1.0) < 0.00001))):
		if (not ((((GM.f_place_meeting(self, (x + 22.0), (y + (-22.0)), 24.0)))) >= 0.5)):
			(GM.f_sound_play(3.0))
			for _w1 in GM.with_list((0.0), self):
				if _w1._dead:
					continue
				_w1.other = self
				GM.vset(_w1, "v_wee", (GM.f_point_direction((_w1.x + 24.0), (_w1.y + 24.0), GM.vb(5.0, "x"), GM.vb(5.0, "y"))))
				if (absf((1.0 if ((GM.vb(5.0, "speed") < 25.0)) else 0.0) - 1.0) < 0.00001):
					(GM.f_motion_add(_w1, (GM.vget(_w1, "v_wee") - 180.0), GM.vb(5.0, "speed")))
				else:
					(GM.f_motion_add(_w1, (GM.vget(_w1, "v_wee") - 180.0), 25.0))
				GM.vset(_w1, "v_boom", 0.0)
			for _w2 in GM.with_list((5.0), self):
				if _w2._dead:
					continue
				_w2.other = self
				(GM.f_instance_destroy(_w2))
func ev_col_28():
	hspeed = 0.0
func ev_col_21():
	(GM.f_move_bounce_solid(self, 0.0))
	speed = (speed / 2.0)
	(GM.f_sound_play(1.0))
func ev_col_20():
	hspeed = 0.0
	(GM.f_sound_play(0.0))
func ev_col_17():
	(GM.f_move_bounce_solid(self, 0.0))
	hspeed = (hspeed / 2.0)
func ev_col_16():
	(GM.f_move_bounce_solid(self, 0.0))
func ev_col_15():
	speed = 0.0
	x = 21.0
	y = 538.0
func ev_col_13():
	vspeed = 0.0
func ev_col_4():
	(GM.f_move_bounce_solid(self, 0.0))
func ev_col_2():
	if (((vspeed > 2.0))):
		(GM.f_sound_play(0.0))
	(GM.f_move_bounce_solid(self, 0.0))
	vspeed = (vspeed / 2.0)
	hspeed = (-5.0)
func ev_mouse_4():
	if ((((GM.f_place_meeting(self, (x + 22.0), (y + 22.0), 24.0))))) >= 0.5:
		if (((absf((GM.f_instance_number(29.0)) - 1.0) < 0.00001))):
			if (((absf((GM.f_instance_number(12.0)) - 0.0) < 0.00001))):
				if (((absf((GM.f_instance_number(10.0)) - 0.0) < 0.00001))):
					if (((absf((GM.f_instance_number(5.0)) - 0.0) < 0.00001))):
						speed = 0.0
						(GM.f_instance_create((x + 24.0), (y + 24.0), 5.0))
						v_boom = 1.0
