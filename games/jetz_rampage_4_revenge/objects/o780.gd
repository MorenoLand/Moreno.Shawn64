extends "res://games/jetz_rampage_4_revenge/objects/o554.gd"
func ev_create():
	v_mypower = 1.0
	v_firepower = 10.0
func ev_col_656():
	if ((absf(gravity - 0.0) < 0.00001)):
		depth = (-3.0)
		for _r829 in range(int((15.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 599.0))
		v_fluh = GM.vget(self.other, "v_wooper")
		direction = ((GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), GM.vb(v_fluh, "x"), GM.vb(v_fluh, "y"))) - 180.0)
		speed = speed + (5.0 + (GM.f_random(2.0)))
		(GM.f_sound_play(122.0))
		gravity = 0.5
func ev_col_604():
	(self.script_adddamage())
	(GM.f_sound_play(130.0))
	for _r830 in range(int((25.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
	for _r831 in range(int((25.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 599.0))
	(GM.f_instance_destroy(self))
func ev_col_502():
	if ((v_mypower > 0.0)):
		for _r832 in range(int((15.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 599.0))
		v_mypower = v_mypower - 1.0
	else:
		if ((absf(gravity - 0.0) < 0.00001)):
			depth = (-3.0)
			direction = GM.vb(self.other, "direction")
			speed = (1.0 + (GM.f_random(1.0)))
			if ((absf(gravity - 0.0) < 0.00001)):
				(GM.f_sound_play(129.0))
			gravity = 0.5
	(GM.f_sound_play(131.0))
	for _w833 in GM.with_list((self.other), self):
		if _w833._dead:
			continue
		_w833.other = self
		(GM.f_instance_destroy(_w833))
func ev_other_0():
	(GM.f_instance_destroy(self))
