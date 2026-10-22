extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_wee = 0.0
var v_wow = 0.0
func ev_create():
	GM.view_object[int(0.0)] = 7.0
	direction = (GM.f_point_direction(x, y, (GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)), (GM.vb(7.0, "y") + (GM.vb(7.0, "sprite_height") / 2.0))))
	speed = 15.0
	(GM.f_sound_play(154.0))
func ev_step():
	GM.view_object[int(0.0)] = 7.0
	GM.vset(7.0, "v_movenow", 0.0)
	v_wow = (GM.f_round((GM.f_random(5.0))))
	if (GM.eq(v_wow, 0.0)):
		(GM.f_instance_create(x, y, 497.0))
	if (GM.eq(v_wow, 1.0)):
		(GM.f_instance_create(x, y, 618.0))
	if (GM.eq(v_wow, 2.0)):
		(GM.f_sound_play(146.0))
func ev_col_7():
	for _w715 in GM.with_list((489.0), self):
		if _w715._dead:
			continue
		_w715.other = self
		(GM.f_instance_destroy(_w715))
	for _w716 in GM.with_list((551.0), self):
		if _w716._dead:
			continue
		_w716.other = self
		(GM.f_instance_destroy(_w716))
	for _w717 in GM.with_list((1051.0), self):
		if _w717._dead:
			continue
		_w717.other = self
		(GM.f_instance_destroy(_w717))
	v_wee = (GM.f_instance_create(x, y, 1057.0))
	GM.vset(v_wee, "v_oops", direction)
	(GM.f_instance_destroy(self))
