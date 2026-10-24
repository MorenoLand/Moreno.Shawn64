extends "res://games/galaxy_arcade/scripts.gd"
func ev_key_32():
	(GM.f_sound_play(10.0))
	GM.background_hspeed[int(0.0)] = 0.0
	GM.background_vspeed[int(0.0)] = (-15.0)
	for _w13 in GM.with_list((106.0), self):
		if _w13._dead:
			continue
		_w13.other = self
		(GM.f_action_move(_w13, "000000001", 15.0, 0.0))
	(GM.f_instance_change(self, 105.0, 0.0))
