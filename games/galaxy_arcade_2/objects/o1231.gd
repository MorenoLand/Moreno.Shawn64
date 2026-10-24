extends "res://games/galaxy_arcade_2/scripts.gd"
var v_pow = 0.0
var v_wow = 0.0
func ev_create():
	gravity_direction = 225.0
	gravity = 0.5
	alarm[int(0.0)] = 20.0
func ev_alarm_0():
	v_wow = 1.0
func ev_step():
	for _w196 in GM.with_list((1241.0), self):
		if _w196._dead:
			continue
		_w196.other = self
		GM.vset(_w196, "v_snowscore", GM.vget(_w196, "v_snowscore") + 2.0)
	if (((speed > 15.0))):
		speed = 14.9
	if (not ((((GM.f_keyboard_check(37.0)))) >= 0.5)):
		if (not ((((GM.f_keyboard_check(39.0)))) >= 0.5)):
			for _w197 in GM.with_list((1229.0), self):
				if _w197._dead:
					continue
				_w197.other = self
				(GM.f_instance_destroy(_w197))
	v_pow = (GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), (GM.vb(1201.0, "x") + (GM.vb(1201.0, "sprite_width") / 2.0)), (GM.vb(1201.0, "y") + (sprite_height / 2.0))))
func ev_col_1230():
	for _w198 in GM.with_list((1234.0), self):
		if _w198._dead:
			continue
		_w198.other = self
		(GM.f_instance_destroy(_w198))
	GM.view_object[int(0.0)] = 1198.0
	for _w199 in GM.with_list((self.other), self):
		if _w199._dead:
			continue
		_w199.other = self
		(GM.f_instance_destroy(_w199))
	gravity_direction = 0.0
	gravity = 2.0
	(GM.f_instance_change(self, 1226.0, 0.0))
func ev_key_39():
	direction = direction + (-1.0)
func ev_key_37():
	direction = direction + 1.0
func ev_draw():
	(GM.f_draw_sprite(1198.0, (direction / 10.0), (x + 0.0), (y + 0.0)))
