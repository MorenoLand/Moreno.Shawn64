extends "res://games/street_bike_fury/scripts.gd"
var v_set = 0.0
func ev_col_197():
	if ((absf(GM.vb(self.other, "depth") - 100.0) < 0.00001)):
		GM.vsetb(self.other, "depth", (-18.0))
	for _r77 in range(int((150.0))):
		v_set = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 72.0))
		GM.vsetb(v_set, "direction", (GM.f_random(360.0)))
		GM.vsetb(v_set, "speed", (1.0 + (GM.f_random(9.0))))
	if ((absf((1.0 if not ((GM.room) >= 0.5) else 0.0) - 38.0) < 0.00001)):
		(GM.f_sound_play(53.0))
		(GM.f_sound_play(52.0))
	(GM.f_instance_destroy(self))
func ev_col_21():
	if ((absf(GM.vb(self.other, "depth") - 100.0) < 0.00001)):
		GM.vsetb(self.other, "depth", (-18.0))
	for _r78 in range(int((150.0))):
		v_set = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 72.0))
		GM.vsetb(v_set, "direction", (GM.f_random(360.0)))
		GM.vsetb(v_set, "speed", (1.0 + (GM.f_random(9.0))))
	(GM.f_sound_play(53.0))
	(GM.f_sound_play(52.0))
	(GM.f_instance_destroy(self))
func ev_col_0():
	if ((absf(GM.vb(self.other, "depth") - 100.0) < 0.00001)):
		GM.vsetb(self.other, "depth", (-18.0))
		(self.script_addmessage("Pipe Rider! +25", 32768.0, 15.0))
		GM.G["shortcuts"] = GM.G["shortcuts"] + 25.0
		(GM.f_instance_create(x, y, 217.0))
	for _r79 in range(int((150.0))):
		v_set = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 72.0))
		GM.vsetb(v_set, "direction", (GM.f_random(360.0)))
		GM.vsetb(v_set, "speed", (1.0 + (GM.f_random(9.0))))
	(GM.f_sound_play(53.0))
	(GM.f_sound_play(52.0))
	for _w80 in GM.with_list((self.other), self):
		if _w80._dead:
			continue
		_w80.other = self
		for _r81 in range(int((50.0))):
			GM.vset(_w80, "v_set", (GM.f_instance_create(((_w80.x - 40.0) + (GM.f_random(80.0))), ((_w80.y - 40.0) + (GM.f_random(80.0))), 285.0)))
			GM.vsetb(GM.vget(_w80, "v_set"), "direction", ((-45.0) + (GM.f_random(90.0))))
			GM.vsetb(GM.vget(_w80, "v_set"), "speed", (1.0 + (GM.f_random(15.0))))
		(GM.f_sound_play(89.0))
	(GM.f_instance_destroy(self))
