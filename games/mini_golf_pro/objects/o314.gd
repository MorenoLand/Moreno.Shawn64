extends "res://games/mini_golf_pro/scripts.gd"
func ev_col_301():
	(self.script_sound_plays(56.0))
	for _r59 in range(int((100.0))):
		(GM.f_instance_create(((x - 12.0) + (GM.f_random(24.0))), ((y - 12.0) + (GM.f_random(24.0))), 316.0))
	(GM.f_instance_create(x, y, 315.0))
	(GM.f_instance_destroy(self))
func ev_col_235():
	for _r60 in range(int((100.0))):
		(GM.f_instance_create(((x - 12.0) + (GM.f_random(24.0))), ((y - 12.0) + (GM.f_random(24.0))), 316.0))
	(GM.f_instance_create(x, y, 315.0))
	(GM.f_instance_destroy(self))
func ev_col_0():
	if ((GM.eq(GM.G["yourplayer"], GM.vget(self.other, "v_implayer")) or (absf(GM.G["online"] - 0.0) < 0.00001))):
		for _r61 in range(int((100.0))):
			(GM.f_instance_create(((x - 12.0) + (GM.f_random(24.0))), ((y - 12.0) + (GM.f_random(24.0))), 316.0))
		(GM.f_instance_create(x, y, 315.0))
		(GM.f_instance_destroy(self))
func ev_mouse_4():
	if ((absf(GM.G["minecheat"] - 1.0) < 0.00001)):
		(GM.f_mplay_message_send_guaranteed(0.0, 603.0, (((GM.f_string(x)) + "|") + (GM.f_string(y)))))
		(self.script_sound_plays(56.0))
		for _r62 in range(int((100.0))):
			(GM.f_instance_create(((x - 12.0) + (GM.f_random(24.0))), ((y - 12.0) + (GM.f_random(24.0))), 316.0))
		(GM.f_instance_create(x, y, 315.0))
		(GM.f_instance_destroy(self))
