extends "res://games/bounty_hunter_sx/objects/o489.gd"
var v_image_single = 0.0
var v_my_direction = 0.0
func ev_create():
	(GM.f_motion_add(self, GM.vget(482.0, "v_my_direction"), 20.0))
	(GM.f_motion_add(self, GM.vb(482.0, "direction"), GM.vb(482.0, "speed")))
	alarm[int(0.0)] = 150.0
func ev_step():
	if (((absf((GM.f_instance_number(1080.0)) - 1.0) < 0.00001))):
		v_my_direction = (GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), (GM.vb(1080.0, "x") + (GM.vb(1080.0, "sprite_width") / 2.0)), (GM.vb(1080.0, "y") + (GM.vb(1080.0, "sprite_height") / 2.0))))
		(GM.f_motion_add(self, v_my_direction, 1.0))
		speed = (GM.f_min(speed, 15.0))
		v_image_single = (GM.f_floor(((fmod(((v_my_direction + 5.625)), 360.0)) / 11.25)))
	else:
		if (((absf((GM.f_instance_number(1085.0)) - 1.0) < 0.00001))):
			v_my_direction = (GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), (GM.vb(1085.0, "x") + (GM.vb(1085.0, "sprite_width") / 2.0)), (GM.vb(1085.0, "y") + (GM.vb(1085.0, "sprite_height") / 2.0))))
			(GM.f_motion_add(self, v_my_direction, 1.0))
			speed = (GM.f_min(speed, 15.0))
			v_image_single = (GM.f_floor(((fmod(((v_my_direction + 5.625)), 360.0)) / 11.25)))
		else:
			if (((absf((GM.f_instance_number(1091.0)) - 1.0) < 0.00001))):
				v_my_direction = (GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), (GM.vb(1091.0, "x") + (GM.vb(1091.0, "sprite_width") / 2.0)), (GM.vb(1091.0, "y") + (GM.vb(1091.0, "sprite_height") / 2.0))))
				(GM.f_motion_add(self, v_my_direction, 1.0))
				speed = (GM.f_min(speed, 15.0))
				v_image_single = (GM.f_floor(((fmod(((v_my_direction + 5.625)), 360.0)) / 11.25)))
			else:
				if (((absf((GM.f_instance_number(1131.0)) - 1.0) < 0.00001))):
					v_my_direction = (GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), (GM.vb(1131.0, "x") + (GM.vb(1131.0, "sprite_width") / 2.0)), (GM.vb(1131.0, "y") + (GM.vb(1131.0, "sprite_height") / 2.0))))
					(GM.f_motion_add(self, v_my_direction, 1.0))
					speed = (GM.f_min(speed, 15.0))
					v_image_single = (GM.f_floor(((fmod(((v_my_direction + 5.625)), 360.0)) / 11.25)))
func ev_col_1219():
	(GM.f_sound_play(328.0))
	(GM.f_instance_destroy(self))
func ev_col_490():
	for _w458 in GM.with_list((self.other), self):
		if _w458._dead:
			continue
		_w458.other = self
		GM.vset(_w458, "v_mypower", GM.vget(_w458, "v_mypower") + (-2.0))
	(GM.f_instance_destroy(self))
func ev_col_487():
	for _w459 in GM.with_list((self.other), self):
		if _w459._dead:
			continue
		_w459.other = self
		GM.vset(_w459, "v_mypower", GM.vget(_w459, "v_mypower") + (-2.0))
	(GM.f_instance_destroy(self))
func ev_col_486():
	for _w460 in GM.with_list((self.other), self):
		if _w460._dead:
			continue
		_w460.other = self
		GM.vset(_w460, "v_mypower", GM.vget(_w460, "v_mypower") + (-2.0))
	(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_draw_sprite(1068.0, (-1.0), (x + 0.0), (y + 0.0)))
