extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_create():
	(GM.f_sound_loop(127.0))
func ev_key_32():
	for _w96 in GM.with_list((453.0), self):
		if _w96._dead:
			continue
		_w96.other = self
		(GM.f_action_move(_w96, "000000010", 30.0, 0.0))
	GM.background_hspeed[int(0.0)] = 0.0
	GM.background_vspeed[int(0.0)] = (-1.0)
	(GM.f_instance_create((x + 0.0), (y + 0.0), 443.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 442.0))
	(GM.f_instance_destroy(self))
func ev_other_4():
	GM.G["airscore"] = 0.0
