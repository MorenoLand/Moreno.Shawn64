extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_create():
	(GM.f_action_move(self, "000001000", 8.0, 0.0))
func ev_destroy():
	(GM.f_sound_stop(347.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 1190.0))
	(GM.f_instance_create((x + 0.0), (y + (-20.0)), 1190.0))
	(GM.f_instance_create((x + 0.0), (y + (-40.0)), 1190.0))
func ev_step():
	if ((((GM.f_distance_to_object(self, 1116.0)) < 500.0))):
		if (not ((((GM.f_sound_isplaying(347.0)))) >= 0.5)):
			(GM.f_sound_loop(347.0))
	else:
		(GM.f_sound_stop(347.0))
func ev_col_1174():
	for _w185 in GM.with_list((self.other), self):
		if _w185._dead:
			continue
		_w185.other = self
		(GM.f_instance_destroy(_w185))
	(GM.f_sound_play(341.0))
	for _r186 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 1181.0))
	(GM.f_instance_destroy(self))
func ev_col_1170():
	for _w187 in GM.with_list((self.other), self):
		if _w187._dead:
			continue
		_w187.other = self
		(GM.f_instance_destroy(_w187))
	(GM.f_sound_play(341.0))
	for _r188 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 1181.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(self.script_outside_wrap(0.0, 0.0, 0.0, 0.0, 0.0))
