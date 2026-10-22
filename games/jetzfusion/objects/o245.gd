extends "res://games/jetzfusion/scripts.gd"
var v_image_single = 0.0
func ev_create():
	v_image_single = 0.0
	x = (GM.f_random((GM.room_width - 40.0)))
	y = (GM.f_random(((200.0 + ((GM.room_height - 200.0))) - 40.0)))
	if ((40.0 > 0.0)):
		x = ((GM.f_round((x / 40.0))) * 40.0)
	if ((40.0 > 0.0)):
		y = ((GM.f_round((y / 40.0))) * 40.0)
	if (not ((((GM.f_place_meeting(self, (x + 0.0), (y + 0.0), 1.0)))) >= 0.5)):
		(GM.f_instance_create(0.0, 0.0, 245.0))
		(GM.f_instance_destroy(self))
func ev_step():
	if ((((GM.f_distance_to_object(self, 7.0)) < 100.0))):
		v_image_single = (-1.0)
	else:
		v_image_single = 0.0
func ev_col_240():
	if (((absf((GM.f_instance_number(245.0)) - 1.0) < 0.00001))):
		(self.script_missionscript(0.0, 0.0, 0.0, 0.0, 0.0))
		for _w328 in GM.with_list((7.0), self):
			if _w328._dead:
				continue
			_w328.other = self
			(GM.f_instance_create((_w328.x + 0.0), (_w328.y + (-40.0)), 248.0))
		(GM.f_instance_create(0.0, 0.0, 10.0))
		for _w329 in GM.with_list((170.0), self):
			if _w329._dead:
				continue
			_w329.other = self
			(GM.f_instance_destroy(_w329))
		GM.G["money"] = GM.G["money"] + 400.0
		(GM.f_sound_play(48.0))
		for _w330 in GM.with_list((238.0), self):
			if _w330._dead:
				continue
			_w330.other = self
			(GM.f_instance_destroy(_w330))
		for _w331 in GM.with_list((242.0), self):
			if _w331._dead:
				continue
			_w331.other = self
			(GM.f_instance_destroy(_w331))
		(GM.f_instance_destroy(self))
	(GM.f_sound_play(43.0))
	for _r332 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 31.0))
	(GM.f_instance_destroy(self))
