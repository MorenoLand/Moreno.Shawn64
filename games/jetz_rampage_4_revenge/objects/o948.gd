extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_wee = 0.0
func ev_create():
	gravity = 0.3
	gravity_direction = 270.0
	image_single = 0.0
func ev_step():
	if (((GM.f_instance_number(946.0)) > 0.0)):
		if (((GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)) > (GM.vb(946.0, "x") + (GM.vb(946.0, "sprite_width") / 2.0)))):
			image_single = 1.0
			if (((x + (sprite_width / 2.0)) < (GM.vb(949.0, "x") + (GM.vb(949.0, "sprite_width") / 2.0)))):
				if ((((x + (sprite_width / 2.0)) < ((GM.vb(949.0, "x") + (GM.vb(949.0, "sprite_width") / 2.0)) - 200.0)) and (absf(vspeed - 0.0) < 0.00001))):
					(GM.f_motion_add(self, 42.0, 10.0))
					for _w591 in GM.with_list((946.0), self):
						if _w591._dead:
							continue
						_w591.other = self
						_w591.vspeed = _w591.vspeed - 4.0
			if (((x + (sprite_width / 2.0)) > (((GM.vb(949.0, "x") + (GM.vb(949.0, "sprite_width") / 2.0))) + 200.0))):
				hspeed = 0.0
			if (((x + (sprite_width / 2.0)) < (((GM.vb(949.0, "x") + (GM.vb(949.0, "sprite_width") / 2.0))) - 200.0))):
				hspeed = hspeed + 2.0
		if (((GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)) < (GM.vb(946.0, "x") + (GM.vb(946.0, "sprite_width") / 2.0)))):
			image_single = 0.0
			if (((x + (sprite_width / 2.0)) > (GM.vb(949.0, "x") + (GM.vb(949.0, "sprite_width") / 2.0)))):
				if ((((x + (sprite_width / 2.0)) > ((GM.vb(949.0, "x") + (GM.vb(949.0, "sprite_width") / 2.0)) + 200.0)) and (absf(vspeed - 0.0) < 0.00001))):
					(GM.f_motion_add(self, (180.0 - 42.0), 10.0))
					for _w592 in GM.with_list((946.0), self):
						if _w592._dead:
							continue
						_w592.other = self
						_w592.vspeed = _w592.vspeed - 4.0
			if (((x + (sprite_width / 2.0)) < (((GM.vb(949.0, "x") + (GM.vb(949.0, "sprite_width") / 2.0))) - 200.0))):
				hspeed = 0.0
			if (((x + (sprite_width / 2.0)) > (((GM.vb(949.0, "x") + (GM.vb(949.0, "sprite_width") / 2.0))) + 200.0))):
				hspeed = hspeed - 2.0
		if ((hspeed > 25.0)):
			hspeed = 25.0
		if ((hspeed < (-25.0))):
			hspeed = (-25.0)
	else:
		hspeed = 0.0
func ev_col_965():
	pass
func ev_col_656():
	v_wee = (GM.f_floor((GM.f_random(10.9999))))
	if (GM.eq(v_wee, 0.0)):
		for _w593 in GM.with_list((946.0), self):
			if _w593._dead:
				continue
			_w593.other = self
			_w593.ev_user(0.0)
func ev_col_551():
	(GM.f_move_bounce_solid(self, 0.0))
func ev_col_502():
	for _w594 in GM.with_list((946.0), self):
		if _w594._dead:
			continue
		_w594.other = self
		_w594.ev_user(0.0)
func ev_col_489():
	if ((vspeed > 2.0)):
		(GM.f_instance_create(x, (y + (sprite_height / 2.0)), 772.0))
		(GM.f_instance_create((x + sprite_width), (y + (sprite_height / 2.0)), 772.0))
		(GM.f_sound_play(239.0))
		if (((GM.f_instance_number(7.0)) > 0.0)):
			(GM.f_instance_create(x, y, 498.0))
	vspeed = 0.0
