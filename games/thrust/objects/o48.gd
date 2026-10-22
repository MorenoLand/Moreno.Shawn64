extends "res://games/thrust/objects/o3.gd"
func ev_col_0():
	(GM.f_instance_create((x + 0.0), (y + 0.0), 10.0))
	(GM.f_sound_play(3.0))
	for _w33 in GM.with_list((0.0), self):
		if _w33._dead:
			continue
		_w33.other = self
		GM.vset(_w33, "v_pearlshave", GM.vget(_w33, "v_pearlshave") + 1.0)
	if (((absf(v_pearls - v_pearlshave) < 0.00001))):
		(GM.f_instance_create(0.0, 0.0, 11.0))
	(GM.f_instance_destroy(self))
