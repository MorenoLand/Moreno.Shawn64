extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 60.0
func ev_alarm_0():
	sprite_index = 51.0
	image_speed = 1.0
	(GM.f_motion_set(self, (45.0 + (GM.f_random(90.0))), 12.0))
func ev_col_58():
	(GM.f_move_bounce_solid(self, 0.0))
	for _w81 in GM.with_list((self.other), self):
		if _w81._dead:
			continue
		_w81.other = self
		(GM.f_instance_change(_w81, 57.0, 0.0))
func ev_col_57():
	(GM.f_move_bounce_solid(self, 0.0))
	for _w82 in GM.with_list((self.other), self):
		if _w82._dead:
			continue
		_w82.other = self
		(GM.f_instance_change(_w82, 46.0, 0.0))
func ev_col_52():
	(GM.f_move_bounce_solid(self, 0.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 53.0))
func ev_col_46():
	(GM.f_move_bounce_solid(self, 0.0))
func ev_col_42():
	(GM.f_sound_play(22.0))
	(GM.f_move_bounce_solid(self, 1.0))
func ev_col_41():
	(GM.f_sound_play(22.0))
	(GM.f_move_bounce_solid(self, 1.0))
