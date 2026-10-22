extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	for _w225 in GM.with_list((113.0), self):
		if _w225._dead:
			continue
		_w225.other = self
		(GM.f_instance_create(_w225.x, 0.0, 114.0))
		(GM.f_instance_destroy(_w225))
	for _w226 in GM.with_list((118.0), self):
		if _w226._dead:
			continue
		_w226.other = self
		(GM.f_instance_create(_w226.x, 0.0, 114.0))
		(GM.f_instance_destroy(_w226))
	for _w227 in GM.with_list((129.0), self):
		if _w227._dead:
			continue
		_w227.other = self
		(GM.f_instance_create(_w227.x, 0.0, 114.0))
		(GM.f_instance_destroy(_w227))
	for _w228 in GM.with_list((120.0), self):
		if _w228._dead:
			continue
		_w228.other = self
		(GM.f_instance_create(_w228.x, 0.0, 114.0))
		(GM.f_instance_destroy(_w228))
	for _w229 in GM.with_list((127.0), self):
		if _w229._dead:
			continue
		_w229.other = self
		(GM.f_instance_create(_w229.x, 0.0, 114.0))
		(GM.f_instance_destroy(_w229))
	(GM.f_sound_loop(38.0))
func ev_step():
	if ((((GM.f_random(15.0)) < 1.0))):
		(GM.f_instance_create((GM.view_xview[0] + (GM.f_random(800.0))), (-40.0), 176.0))
