extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	x = (GM.f_random((GM.room_width - 50.0)))
	y = (GM.f_random((GM.room_height - 200.0)))
func ev_col_7():
	for _w281 in GM.with_list((205.0), self):
		if _w281._dead:
			continue
		_w281.other = self
		GM.vset(_w281, "v_countingg", GM.vget(_w281, "v_countingg") + 1.0)
	(GM.f_sound_play(33.0))
	for _r282 in range(int((25.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 26.0))
	if (((GM.vget(205.0, "v_countingg") > 24.0))):
		(self.script_missionscript(0.0, 0.0, 0.0, 0.0, 0.0))
		for _w283 in GM.with_list((7.0), self):
			if _w283._dead:
				continue
			_w283.other = self
			(GM.f_instance_create((_w283.x + 0.0), (_w283.y + (-40.0)), 248.0))
		(GM.f_sound_stop(52.0))
		for _w284 in GM.with_list((205.0), self):
			if _w284._dead:
				continue
			_w284.other = self
			(GM.f_instance_destroy(_w284))
		GM.vset(7.0, "v_malfo", 0.0)
		(GM.f_sound_play(48.0))
		GM.G["money"] = GM.G["money"] + 400.0
		for _w285 in GM.with_list((170.0), self):
			if _w285._dead:
				continue
			_w285.other = self
			(GM.f_instance_destroy(_w285))
		for _w286 in GM.with_list((204.0), self):
			if _w286._dead:
				continue
			_w286.other = self
			(GM.f_instance_destroy(_w286))
		for _w287 in GM.with_list((206.0), self):
			if _w287._dead:
				continue
			_w287.other = self
			(GM.f_instance_destroy(_w287))
	(GM.f_instance_destroy(self))
