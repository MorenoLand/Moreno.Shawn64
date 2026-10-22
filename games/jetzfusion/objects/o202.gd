extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	x = (GM.f_random((GM.room_width - 50.0)))
	y = (GM.f_random((GM.room_height - 200.0)))
func ev_col_7():
	for _w271 in GM.with_list((203.0), self):
		if _w271._dead:
			continue
		_w271.other = self
		GM.vset(_w271, "v_countingg", GM.vget(_w271, "v_countingg") + 1.0)
	(GM.f_sound_play(33.0))
	for _r272 in range(int((25.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 26.0))
	if (((GM.vget(203.0, "v_countingg") > 24.0))):
		(self.script_missionscript(0.0, 0.0, 0.0, 0.0, 0.0))
		for _w273 in GM.with_list((200.0), self):
			if _w273._dead:
				continue
			_w273.other = self
			(GM.f_instance_create((_w273.x + 0.0), (_w273.y + 0.0), 204.0))
		(GM.f_sound_stop(52.0))
		for _w274 in GM.with_list((203.0), self):
			if _w274._dead:
				continue
			_w274.other = self
			(GM.f_instance_destroy(_w274))
		GM.vset(7.0, "v_malfo", 0.0)
		(GM.f_sound_play(48.0))
		GM.G["money"] = GM.G["money"] + 300.0
		for _w275 in GM.with_list((170.0), self):
			if _w275._dead:
				continue
			_w275.other = self
			(GM.f_instance_destroy(_w275))
		for _w276 in GM.with_list((200.0), self):
			if _w276._dead:
				continue
			_w276.other = self
			(GM.f_instance_destroy(_w276))
		for _w277 in GM.with_list((202.0), self):
			if _w277._dead:
				continue
			_w277.other = self
			(GM.f_instance_destroy(_w277))
	(GM.f_instance_destroy(self))
