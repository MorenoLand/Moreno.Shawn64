extends "res://games/jetzfusion/objects/o66.gd"
func ev_create():
	y = 480.0
	v_poom = (GM.f_round((GM.f_random(1.0))))
	v_mypower = 2.0
	v_alive = 1.0
	if ((absf(v_poom - 0.0) < 0.00001)):
		(GM.f_motion_add(self, 0.0, (3.0 + (GM.f_random(2.0)))))
		sprite_index = 140.0
	if ((absf(v_poom - 1.0) < 0.00001)):
		(GM.f_motion_add(self, 180.0, (3.0 + (GM.f_random(2.0)))))
		sprite_index = 141.0
	image_speed = 0.5
	v_wowzee = 0.0
	v_char = 10.0
	v_whater = 1.0
	if (((absf((GM.f_instance_number(7.0)) - 0.0) < 0.00001))):
		x = (GM.f_random((GM.room_width - 80.0)))
func ev_destroy():
	if (((absf((GM.f_instance_number(182.0)) - 1.0) < 0.00001))):
		if (((absf((GM.f_instance_number(181.0)) - 1.0) < 0.00001))):
			(self.script_missionscript(0.0, 0.0, 0.0, 0.0, 0.0))
			GM.G["money"] = GM.G["money"] + 100.0
			(GM.f_sound_play(48.0))
			for _w643 in GM.with_list((182.0), self):
				if _w643._dead:
					continue
				_w643.other = self
				(GM.f_instance_destroy(_w643))
			for _w644 in GM.with_list((170.0), self):
				if _w644._dead:
					continue
				_w644.other = self
				(GM.f_instance_destroy(_w644))
			for _w645 in GM.with_list((180.0), self):
				if _w645._dead:
					continue
				_w645.other = self
				(GM.f_instance_create((_w645.x + 0.0), (_w645.y + 0.0), 185.0))
			for _w646 in GM.with_list((180.0), self):
				if _w646._dead:
					continue
				_w646.other = self
				(GM.f_instance_destroy(_w646))
func ev_col_292():
	pass
func ev_col_59():
	pass
func ev_col_3():
	pass
func ev_draw():
	if (((hspeed > 0.0))):
		(GM.f_draw_sprite(140.0, (-1.0), (x + 0.0), (y + 0.0)))
	else:
		(GM.f_draw_sprite(141.0, (-1.0), (x + 0.0), (y + 0.0)))
	(GM.f_draw_sprite(206.0, (-1.0), (x + 0.0), (y + (-12.0))))
