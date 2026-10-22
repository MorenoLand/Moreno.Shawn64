extends "res://games/jetzrampage2/scripts.gd"
var v_mypower = 0.0
func ev_create():
	hspeed = 25.0
	depth = (GM.room_width + 5.0)
	v_mypower = 25.0
func ev_destroy():
	(GM.f_instance_create(((GM.vb(0.0, "x") + (GM.vb(0.0, "sprite_width") / 2.0)) - 16.0), ((GM.vb(0.0, "y") + (GM.vb(0.0, "sprite_height") / 2.0)) - 16.0), 480.0))
	(GM.f_instance_create(((GM.vb(0.0, "x") + (GM.vb(0.0, "sprite_width") / 2.0)) - 16.0), ((GM.vb(0.0, "y") + (GM.vb(0.0, "sprite_height") / 2.0)) - 16.0), 481.0))
	for _w239 in GM.with_list((67.0), self):
		if _w239._dead:
			continue
		_w239.other = self
		GM.vset(_w239, "v_currentmoney", GM.vget(_w239, "v_currentmoney") + 300.0)
	(GM.f_sound_play(88.0))
	for _w240 in GM.with_list((547.0), self):
		if _w240._dead:
			continue
		_w240.other = self
		(GM.f_instance_destroy(_w240))
	for _w241 in GM.with_list((250.0), self):
		if _w241._dead:
			continue
		_w241.other = self
		(GM.f_instance_destroy(_w241))
func ev_col_10():
	v_mypower = v_mypower + (-1.0)
	if (((v_mypower < 1.0))):
		(GM.f_instance_create((x + 0.0), (y + 0.0), 233.0))
		(GM.f_instance_destroy(self))
func ev_other_0():
	(self.script_outside_wrap(0.0, 0.0, 0.0, 0.0, 0.0))
