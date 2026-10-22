extends "res://games/bubblegum/scripts.gd"
func ev_create():
	(GM.f_action_move(self, "010000000", (4.0 + (GM.f_random(4.0))), 0.0))
func ev_col_114():
	for _w76 in GM.with_list((115.0), self):
		if _w76._dead:
			continue
		_w76.other = self
		GM.vset(_w76, "v_good", GM.vget(_w76, "v_good") + 1.0)
	(GM.f_sound_play(2.0))
	for _r77 in range(int((25.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 25.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
