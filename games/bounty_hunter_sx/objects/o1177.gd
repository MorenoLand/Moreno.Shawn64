extends "res://games/bounty_hunter_sx/scripts.gd"
var v_image_single = 0.0
var v_my_direction = 0.0
func ev_create():
	(GM.f_motion_add(self, GM.vget(482.0, "v_my_direction"), 20.0))
	(GM.f_motion_add(self, GM.vb(482.0, "direction"), GM.vb(482.0, "speed")))
	(GM.f_sound_play(314.0))
	alarm[int(0.0)] = 150.0
func ev_alarm_0():
	self.ev_user(0.0)
func ev_step():
	if (((absf((GM.f_instance_number(1080.0)) - 1.0) < 0.00001))):
		v_my_direction = (GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), (GM.vb(1080.0, "x") + (GM.vb(1080.0, "sprite_width") / 2.0)), (GM.vb(1080.0, "y") + (GM.vb(1080.0, "sprite_height") / 2.0))))
		(GM.f_motion_add(self, v_my_direction, 1.0))
		speed = (GM.f_min(speed, 15.0))
		v_image_single = (GM.f_floor(((fmod(((v_my_direction + 5.625)), 360.0)) / 11.25)))
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 1176.0))
	else:
		if (((absf((GM.f_instance_number(1085.0)) - 1.0) < 0.00001))):
			v_my_direction = (GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), (GM.vb(1085.0, "x") + (GM.vb(1085.0, "sprite_width") / 2.0)), (GM.vb(1085.0, "y") + (GM.vb(1085.0, "sprite_height") / 2.0))))
			(GM.f_motion_add(self, v_my_direction, 1.0))
			speed = (GM.f_min(speed, 15.0))
			v_image_single = (GM.f_floor(((fmod(((v_my_direction + 5.625)), 360.0)) / 11.25)))
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 1176.0))
		else:
			if (((absf((GM.f_instance_number(1091.0)) - 1.0) < 0.00001))):
				v_my_direction = (GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), (GM.vb(1091.0, "x") + (GM.vb(1091.0, "sprite_width") / 2.0)), (GM.vb(1091.0, "y") + (GM.vb(1091.0, "sprite_height") / 2.0))))
				(GM.f_motion_add(self, v_my_direction, 1.0))
				speed = (GM.f_min(speed, 15.0))
				v_image_single = (GM.f_floor(((fmod(((v_my_direction + 5.625)), 360.0)) / 11.25)))
				(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 1176.0))
			else:
				if (((absf((GM.f_instance_number(1131.0)) - 1.0) < 0.00001))):
					v_my_direction = (GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), (GM.vb(1131.0, "x") + (GM.vb(1131.0, "sprite_width") / 2.0)), (GM.vb(1131.0, "y") + (GM.vb(1131.0, "sprite_height") / 2.0))))
					(GM.f_motion_add(self, v_my_direction, 1.0))
					speed = (GM.f_min(speed, 15.0))
					v_image_single = (GM.f_floor(((fmod(((v_my_direction + 5.625)), 360.0)) / 11.25)))
					(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 1176.0))
func ev_col_1219():
	self.ev_user(0.0)
func ev_col_1139():
	self.ev_user(0.0)
func ev_col_1131():
	self.ev_user(0.0)
func ev_col_1091():
	self.ev_user(0.0)
func ev_col_1085():
	self.ev_user(0.0)
func ev_col_1080():
	self.ev_user(0.0)
func ev_col_490():
	for _w375 in GM.with_list((self.other), self):
		if _w375._dead:
			continue
		_w375.other = self
		GM.vset(_w375, "v_mypower", GM.vget(_w375, "v_mypower") + (-10.0))
	self.ev_user(0.0)
func ev_col_487():
	for _w376 in GM.with_list((self.other), self):
		if _w376._dead:
			continue
		_w376.other = self
		GM.vset(_w376, "v_mypower", GM.vget(_w376, "v_mypower") + (-10.0))
	self.ev_user(0.0)
func ev_col_486():
	for _w377 in GM.with_list((self.other), self):
		if _w377._dead:
			continue
		_w377.other = self
		GM.vset(_w377, "v_mypower", GM.vget(_w377, "v_mypower") + (-10.0))
	self.ev_user(0.0)
func ev_other_10():
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 26.0), ((y + (sprite_height / 2.0)) - 26.0), 1169.0))
	for _r378 in range(int((300.0))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 1173.0))
	(GM.f_sound_play(293.0))
	(GM.f_instance_destroy(self))
