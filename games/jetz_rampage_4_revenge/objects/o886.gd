extends "res://games/jetz_rampage_4_revenge/objects/o578.gd"
func ev_create():
	if ((absf(GM.room - 1.0) < 0.00001)):
		(GM.f_sound_replace(234.0, GM.add(GM.working_directory, "\\Music\\default_music\\bass_1.wav"), 1.0, 1.0, 0.0))
	if ((absf(GM.room - 16.0) < 0.00001)):
		(GM.f_sound_replace(233.0, GM.add(GM.working_directory, "\\Music\\default_music\\bass_2.wav"), 1.0, 1.0, 0.0))
	(GM.f_sound_volume(234.0, 0.0))
	(GM.f_sound_pan(234.0, 0.0))
	alarm[int(0.0)] = 2.0
	v_mypower = 2.0
	v_firepower = 10.0
func ev_alarm_2():
	self.ev_user(0.0)
func ev_alarm_1():
	v_woot = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 490.0))
	v_woot2 = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 905.0))
	v_woot3 = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 906.0))
	GM.vsetb(v_woot, "depth", depth)
	GM.vsetb(v_woot2, "depth", depth)
	GM.vsetb(v_woot3, "depth", depth)
	alarm[int(1.0)] = 1.0
func ev_alarm_0():
	if ((absf(GM.room - 1.0) < 0.00001)):
		(GM.f_sound_loop(234.0))
	if ((absf(GM.room - 16.0) < 0.00001)):
		(GM.f_sound_loop(233.0))
func ev_step():
	if ((absf(GM.room - 1.0) < 0.00001)):
		(GM.f_sound_volume(234.0, (1.0 - (((GM.f_distance_to_point(self, (GM.view_xview[0] + 400.0), (GM.view_yview[0] + 300.0))) / 3000.0)))))
		(GM.f_sound_pan(234.0, (0.5 - ((((((GM.view_xview[int(0.0)] + ((GM.view_wview[int(0.0)] / 2.0)))) - x)) / 1000.0)))))
	if ((absf(GM.room - 16.0) < 0.00001)):
		(GM.f_sound_volume(233.0, (1.0 - (((GM.f_distance_to_point(self, (GM.view_xview[0] + 400.0), (GM.view_yview[0] + 300.0))) / 3000.0)))))
		(GM.f_sound_pan(233.0, (0.5 - ((((((GM.view_xview[int(0.0)] + ((GM.view_wview[int(0.0)] / 2.0)))) - x)) / 1000.0)))))
func ev_col_656():
	(GM.f_sound_stop(234.0))
	(GM.f_sound_stop(233.0))
	for _r864 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random((sprite_width - 2.5)))), (y + (GM.f_random((sprite_height - 2.5)))), 599.0))
	for _r865 in range(int((15.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
	(GM.f_sound_play(139.0))
	(GM.f_instance_destroy(self))
	for _w866 in GM.with_list((self.other), self):
		if _w866._dead:
			continue
		_w866.other = self
		(GM.f_instance_destroy(_w866))
func ev_col_502():
	if ((v_mypower > 0.0)):
		for _r867 in range(int((15.0))):
			(GM.f_instance_create((x + (GM.f_random((sprite_width - 2.5)))), (y + (GM.f_random((sprite_height - 2.5)))), 599.0))
		v_mypower = v_mypower - 1.0
	else:
		(GM.f_sound_stop(234.0))
		(GM.f_sound_stop(233.0))
		for _r868 in range(int((50.0))):
			(GM.f_instance_create((x + (GM.f_random((sprite_width - 2.5)))), (y + (GM.f_random((sprite_height - 2.5)))), 599.0))
		for _r869 in range(int((15.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
		(GM.f_sound_play(139.0))
		(GM.f_instance_destroy(self))
	(GM.f_sound_play(127.0))
	for _w870 in GM.with_list((self.other), self):
		if _w870._dead:
			continue
		_w870.other = self
		(GM.f_instance_destroy(_w870))
func ev_col_491():
	if ((v_firepower > 0.0)):
		v_woot = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 490.0))
		v_woot2 = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 905.0))
		v_woot3 = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 906.0))
		GM.vsetb(v_woot, "depth", depth)
		GM.vsetb(v_woot2, "depth", depth)
		GM.vsetb(v_woot3, "depth", depth)
		v_firepower = v_firepower - 1.0
		self.ev_user(1.0)
func ev_other_11():
	if ((v_firepower < 1.0)):
		alarm[int(1.0)] = 1.0
		alarm[int(2.0)] = 75.0
func ev_other_10():
	(GM.f_sound_stop(234.0))
	(GM.f_sound_stop(233.0))
	for _r871 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random((sprite_width - 2.5)))), (y + (GM.f_random((sprite_height - 2.5)))), 599.0))
	for _r872 in range(int((15.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
	(GM.f_sound_play(139.0))
	(GM.f_instance_destroy(self))
