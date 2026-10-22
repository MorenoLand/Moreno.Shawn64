extends "res://games/infection2/scripts.gd"
func ev_create():
	(GM.f_sound_loop(6.0))
	(GM.f_sound_loop(7.0))
func ev_step():
	for _w5 in GM.with_list((0.0), self):
		if _w5._dead:
			continue
		_w5.other = self
		GM.vset(_w5, "v_wee", (GM.f_instance_nearest((_w5.x + (_w5.sprite_width / 2.0)), (_w5.y + (_w5.sprite_height / 2.0)), 16.0)))
		(GM.f_sound_volume(7.0, (1.0 - (((GM.f_distance_to_point(_w5, GM.vb(GM.vget(_w5, "v_wee"), "x"), GM.vb(GM.vget(_w5, "v_wee"), "y"))) / 5000.0)))))
