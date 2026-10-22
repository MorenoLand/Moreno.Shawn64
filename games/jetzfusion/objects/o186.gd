extends "res://games/jetzfusion/objects/o181.gd"
func ev_create():
	y = 480.0
	v_poom = (GM.f_round((GM.f_random(1.0))))
	v_mypower = 2.0
	v_alive = 1.0
	if ((absf(v_poom - 0.0) < 0.00001)):
		(GM.f_motion_add(self, 0.0, (3.0 + (GM.f_random(2.0)))))
		sprite_index = 144.0
	if ((absf(v_poom - 1.0) < 0.00001)):
		(GM.f_motion_add(self, 180.0, (3.0 + (GM.f_random(2.0)))))
		sprite_index = 145.0
	image_speed = 0.5
	v_wowzee = 0.0
	v_char = 11.0
	v_whater = 1.0
	if (((absf((GM.f_instance_number(7.0)) - 0.0) < 0.00001))):
		x = (GM.f_random((GM.room_width - 80.0)))
func ev_destroy():
	if (((absf((GM.f_instance_number(182.0)) - 1.0) < 0.00001))):
		if (((absf((GM.f_instance_number(186.0)) - 1.0) < 0.00001))):
			(self.script_missionscript(0.0, 0.0, 0.0, 0.0, 0.0))
			GM.G["money"] = GM.G["money"] + 200.0
			(GM.f_sound_play(48.0))
			for _w692 in GM.with_list((182.0), self):
				if _w692._dead:
					continue
				_w692.other = self
				(GM.f_instance_destroy(_w692))
			for _w693 in GM.with_list((170.0), self):
				if _w693._dead:
					continue
				_w693.other = self
				(GM.f_instance_destroy(_w693))
			(GM.f_instance_create(800.0, 252.0, 157.0))
			for _w694 in GM.with_list((185.0), self):
				if _w694._dead:
					continue
				_w694.other = self
				(GM.f_instance_destroy(_w694))
func ev_col_292():
	pass
func ev_col_59():
	pass
func ev_col_3():
	pass
func ev_draw():
	if (((hspeed > 0.0))):
		(GM.f_draw_sprite(144.0, (-1.0), (x + 0.0), (y + 0.0)))
	else:
		(GM.f_draw_sprite(145.0, (-1.0), (x + 0.0), (y + 0.0)))
	(GM.f_draw_sprite(206.0, (-1.0), (x + 0.0), (y + (-12.0))))
