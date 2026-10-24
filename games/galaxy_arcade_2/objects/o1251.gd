extends "res://games/galaxy_arcade_2/scripts.gd"
var v_hand = 0.0
func ev_create():
	(GM.f_sound_loop(127.0))
	GM.background_hspeed[int(0.0)] = 0.0
	GM.background_vspeed[int(0.0)] = (-1.0)
	(GM.f_instance_create((x + 0.0), (y + 0.0), 1254.0))
	v_hand = 1.0
	(GM.f_sound_play(126.0))
func ev_alarm_0():
	(GM.f_sound_play(129.0))
	for _w208 in GM.with_list((443.0), self):
		if _w208._dead:
			continue
		_w208.other = self
		GM.vset(_w208, "v_kkk", 0.0)
	x = x + (-51.0)
	y = y + (-100.0)
	(GM.f_instance_change(self, 1252.0, 0.0))
func ev_col_475():
	if (((hspeed > 0.0))):
		hspeed = 0.0
func ev_col_474():
	if (((hspeed < 0.0))):
		hspeed = 0.0
func ev_col_446():
	(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 448.0))
	(GM.f_sound_play(128.0))
	(GM.f_sound_stop(127.0))
	(GM.f_instance_destroy(self))
func ev_col_42():
	hspeed = 0.0
func ev_key_83():
	if (((absf(sprite_index - 431.0) < 0.00001))):
		sprite_index = 432.0
		image_speed = 1.0
	if (((absf(sprite_index - 430.0) < 0.00001))):
		sprite_index = 433.0
		image_speed = 1.0
func ev_key_68():
	sprite_index = 430.0
	image_speed = 1.0
	(GM.f_motion_add(self, 0.0, 0.5))
func ev_key_65():
	sprite_index = 431.0
	image_speed = 1.0
	(GM.f_motion_add(self, 180.0, 0.5))
func ev_other_4():
	GM.G["airscore"] = 0.0
	GM.G["airscore2"] = 0.0
func ev_other_0():
	(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 448.0))
	(GM.f_sound_play(126.0))
	(GM.f_sound_stop(127.0))
	(GM.f_instance_destroy(self))
