extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	image_single = 0.0
	x = (GM.f_random((GM.room_width - 40.0)))
	y = (GM.f_random(((200.0 + ((GM.room_height - 200.0))) - 40.0)))
	if ((40.0 > 0.0)):
		x = ((GM.f_round((x / 40.0))) * 40.0)
	if ((40.0 > 0.0)):
		y = ((GM.f_round((y / 40.0))) * 40.0)
	if (not ((((GM.f_place_meeting(self, (x + 0.0), (y + 0.0), 1.0)))) >= 0.5)):
		(GM.f_instance_create(0.0, 0.0, 239.0))
		(GM.f_instance_destroy(self))
func ev_step():
	if ((((GM.f_distance_to_object(self, 7.0)) < 100.0))):
		image_single = (-1.0)
	else:
		image_single = 0.0
func ev_col_240():
	if (((absf((GM.f_instance_number(239.0)) - 1.0) < 0.00001))):
		(self.script_missionscript(0.0, 0.0, 0.0, 0.0, 0.0))
		(GM.f_instance_create(0.0, 0.0, 10.0))
		for _w309 in GM.with_list((170.0), self):
			if _w309._dead:
				continue
			_w309.other = self
			(GM.f_instance_destroy(_w309))
		GM.G["money"] = GM.G["money"] + 300.0
		(GM.f_sound_play(48.0))
		for _w310 in GM.with_list((218.0), self):
			if _w310._dead:
				continue
			_w310.other = self
			(GM.f_instance_create((_w310.x + 0.0), (_w310.y + 0.0), 238.0))
		for _w311 in GM.with_list((218.0), self):
			if _w311._dead:
				continue
			_w311.other = self
			(GM.f_instance_destroy(_w311))
		for _w312 in GM.with_list((242.0), self):
			if _w312._dead:
				continue
			_w312.other = self
			(GM.f_instance_destroy(_w312))
		(GM.f_instance_destroy(self))
	(GM.f_sound_play(43.0))
	for _r313 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 31.0))
	(GM.f_instance_destroy(self))
