extends "res://games/jetzrampage/scripts.gd"
var v_alive = 0.0
var v_siren = 0.0
var v_wow = 0.0
func ev_create():
	v_siren = 1.0
	v_wow = 1.0
	(GM.f_action_move(self, "000001000", 10.0, 0.0))
func ev_alarm_0():
	v_siren = 1.0
	v_wow = 0.0
	(GM.f_action_move(self, "000001000", 10.0, 0.0))
func ev_step():
	if (((absf(v_siren - 1.0) < 0.00001))):
		if ((((GM.f_distance_to_object(self, 0.0)) < 400.0))):
			if (not ((((GM.f_sound_isplaying(37.0)))) >= 0.5)):
				(GM.f_sound_loop(37.0))
		else:
			(GM.f_sound_stop(37.0))
func ev_col_135():
	(GM.f_action_move(self, "000010000", 0.0, 0.0))
	v_siren = 0.0
	for _w80 in GM.with_list((self.other), self):
		if _w80._dead:
			continue
		_w80.other = self
		(GM.f_instance_destroy(_w80))
	alarm[int(0.0)] = 25.0
func ev_col_134():
	(GM.f_action_move(self, "000010000", 0.0, 0.0))
	v_siren = 0.0
	for _w81 in GM.with_list((self.other), self):
		if _w81._dead:
			continue
		_w81.other = self
		(GM.f_instance_destroy(_w81))
	alarm[int(0.0)] = 25.0
func ev_col_103():
	(GM.f_sound_play(15.0))
	(GM.f_sound_play(55.0))
	for _r82 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 90.0))
	(GM.f_sound_stop(37.0))
	(GM.f_instance_destroy(self))
func ev_col_85():
	if (((absf(v_alive - 0.0) < 0.00001))):
		(GM.f_action_move(self, "000010000", 0.0, 0.0))
		v_siren = 0.0
		for _w83 in GM.with_list((self.other), self):
			if _w83._dead:
				continue
			_w83.other = self
			(GM.f_instance_destroy(_w83))
		alarm[int(0.0)] = 25.0
func ev_other_0():
	(self.script_outside_wrap(0.0, 0.0, 0.0, 0.0, 0.0))
