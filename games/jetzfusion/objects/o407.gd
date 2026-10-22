extends "res://games/jetzfusion/scripts.gd"
var v_brush_color = 0.0
var v_chargeup = 0.0
var v_guyleft = 0.0
var v_guyleft2 = 0.0
var v_guyright = 0.0
var v_guyright2 = 0.0
var v_havedoublepistols = 0.0
var v_haveshotgun = 0.0
var v_mode = 0.0
var v_mygrenades = 0.0
var v_mypower = 0.0
var v_pen_color = 0.0
var v_rreload = 0.0
var v_start = 0.0
var v_throwready = 0.0
var v_weapon = 0.0
var v_weaponready = 0.0
var v_woopdy = 0.0
func ev_create():
	(GM.f_sound_play(30.0))
	(GM.f_sound_play(20.0))
	(GM.f_sound_loop(25.0))
	(GM.f_action_move(self, "000000001", 0.01, 0.0))
	v_start = 1.0
	v_guyright2 = 1.0
	v_guyleft2 = 1.0
	GM.view_hborder[int(1.0)] = (400.0 - (sprite_width / 2.0))
	GM.view_vborder[int(1.0)] = (150.0 - (sprite_height / 2.0))
	(GM.f_motion_add(self, 93.0, 5.0))
	v_mypower = 100.0
	v_weapon = 1.0
	v_havedoublepistols = 0.0
	v_haveshotgun = 0.0
	v_throwready = 1.0
	v_mygrenades = 5.0
	v_chargeup = 0.0
	v_weaponready = 1.0
	v_rreload = 0.0
	friction = 0.1
func ev_destroy():
	GM.background_hspeed[int(1.0)] = 0.0
	GM.background_hspeed[int(0.0)] = 0.0
func ev_alarm_4():
	v_rreload = 1.0
func ev_alarm_3():
	v_rreload = 0.0
func ev_alarm_2():
	v_throwready = 1.0
func ev_alarm_1():
	v_mode = 3.0
func ev_alarm_0():
	v_weaponready = 1.0
func ev_step():
	if (((absf(v_start - 1.0) < 0.00001))):
		if ((speed < 0.5)):
			speed = 0.5
		if ((hspeed > 0.0)):
			v_guyright = 1.0
			v_guyleft = 0.0
		if ((hspeed < 0.0)):
			v_guyright = 0.0
			v_guyleft = 1.0
		if ((speed > 16.0)):
			speed = 16.0
		for _r541 in range(int((5.0))):
			(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 18.0))
	if (((v_mypower < 1.0))):
		for _r542 in range(int((30.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 47.0))
		(GM.f_sound_play(23.0))
		(GM.f_instance_create(0.0, 0.0, 453.0))
		(GM.f_instance_destroy(self))
func ev_col_450():
	(GM.f_sound_play(34.0))
	(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 47.0))
	v_mypower = v_mypower - 0.5
	(GM.f_motion_add(self, GM.vb(self.other, "direction"), 1.0))
func ev_col_17():
	vspeed = 0.0
func ev_col_14():
	direction = ((GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), (GM.vb(self.other, "x") + (GM.vb(self.other, "sprite_width") / 2.0)), (GM.vb(self.other, "y") + (GM.vb(self.other, "sprite_width") / 2.0)))) - 180.0)
	speed = 10.0
	(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 47.0))
	v_mypower = v_mypower + (-2.5)
func ev_key_40():
	if (((absf((GM.f_instance_number(452.0)) - 0.0) < 0.00001))):
		if (((absf(v_start - 1.0) < 0.00001))):
			(GM.f_motion_add(self, 270.0, 0.6))
			for _r543 in range(int((5.0))):
				(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 19.0))
func ev_key_39():
	if (((absf((GM.f_instance_number(452.0)) - 0.0) < 0.00001))):
		if (((absf(v_start - 1.0) < 0.00001))):
			v_guyright2 = 1.0
			(GM.f_motion_add(self, 0.0, 0.8))
func ev_key_38():
	if (((absf((GM.f_instance_number(452.0)) - 0.0) < 0.00001))):
		if (((absf(v_start - 1.0) < 0.00001))):
			(GM.f_motion_add(self, 90.0, 0.6))
			for _r544 in range(int((5.0))):
				(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 18.0))
func ev_key_37():
	if (((absf((GM.f_instance_number(452.0)) - 0.0) < 0.00001))):
		if (((absf(v_start - 1.0) < 0.00001))):
			v_guyleft2 = 1.0
			(GM.f_motion_add(self, 180.0, 0.8))
func ev_key_17():
	if (((absf((GM.f_instance_number(452.0)) - 0.0) < 0.00001))):
		if (((((absf(v_weapon - 4.0) < 0.00001) and (v_chargeup < 100.0)) and (v_mygrenades > 0.0)) and (absf(v_throwready - 1.0) < 0.00001))):
			v_chargeup = v_chargeup + 5.0
		if ((absf(v_weapon - 1.0) < 0.00001)):
			if ((absf(v_weaponready - 1.0) < 0.00001)):
				if ((hspeed > 0.0)):
					(GM.f_instance_create((x + 45.0), (y + 24.0), 445.0))
				else:
					(GM.f_instance_create((x + 10.0), (y + 24.0), 445.0))
				alarm[int(0.0)] = 5.0
				v_weaponready = 0.0
		if ((absf(v_weapon - 2.0) < 0.00001)):
			if ((absf(v_weaponready - 1.0) < 0.00001)):
				if ((hspeed > 0.0)):
					(GM.f_instance_create((x + 50.0), (y + 23.0), 445.0))
					(GM.f_instance_create((x + 53.0), (y + 20.0), 445.0))
				else:
					(GM.f_instance_create((x + 4.0), (y + 23.0), 445.0))
					(GM.f_instance_create((x - 1.0), (y + 20.0), 445.0))
				alarm[int(0.0)] = 10.0
				(GM.f_sound_play(73.0))
				v_weaponready = 0.0
		if (not ((((GM.f_sound_isplaying(72.0)))) >= 0.5)):
			if (((absf(v_rreload - 0.0) < 0.00001))):
				if (((absf(v_weapon - 3.0) < 0.00001))):
					for _r545 in range(int((8.0))):
						if ((hspeed > 0.0)):
							(GM.f_instance_create((x + 59.0), (y + 25.0), 447.0))
						else:
							(GM.f_instance_create((x - 3.0), (y + 25.0), 447.0))
					(GM.f_sound_play(72.0))
					alarm[int(4.0)] = 18.0
					alarm[int(3.0)] = 25.0
func ev_other_1():
	(self.script_outsidestayin(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_other_0():
	if (((x < 0.0) and (hspeed < 0.0))):
		x = (GM.room_width + sprite_xoffset)
	if (((x > GM.room_width) and (hspeed > 0.0))):
		x = ((-sprite_width) + sprite_xoffset)
func ev_draw():
	(GM.f_draw_sprite_scaled(235.0, 0.0, x, 540.0, (y / 540.0)))
	if ((absf(v_guyright - 1.0) < 0.00001)):
		if ((hspeed < 18.0)):
			(GM.f_draw_sprite(1.0, (hspeed / 0.5), x, y))
		else:
			(GM.f_draw_sprite(1.0, 36.0, x, y))
	if ((absf(v_guyleft - 1.0) < 0.00001)):
		if ((hspeed > (-18.0))):
			(GM.f_draw_sprite(0.0, ((-hspeed) / 0.5), x, y))
		else:
			(GM.f_draw_sprite(0.0, 36.0, x, y))
	v_pen_color = 0.0
	v_brush_color = 16711680.0
	(GM.f_draw_rectangle(x, (y - 10.0), (x + sprite_width), y))
	v_brush_color = 255.0
	(GM.f_draw_rectangle(x, (y - 10.0), (x + ((sprite_width / 100.0) * v_mypower)), y))
	if (((absf(v_throwready - 1.0) < 0.00001))):
		if ((hspeed > 0.0)):
			if ((absf(v_weapon - 1.0) < 0.00001)):
				(GM.f_draw_sprite(22.0, (-1.0), (x + 25.0), (y + 20.0)))
			if ((absf(v_weapon - 4.0) < 0.00001)):
				if ((v_mygrenades > 0.0)):
					(GM.f_draw_sprite(35.0, (-1.0), (x + 13.0), (y + 21.0)))
				else:
					(GM.f_draw_sprite(36.0, (-1.0), (x + 13.0), (y + 21.0)))
			if ((absf(v_weapon - 3.0) < 0.00001)):
				if ((absf(v_rreload - 0.0) < 0.00001)):
					v_woopdy = 0.0
				else:
					v_woopdy = 1.0
				(GM.f_draw_sprite(349.0, v_woopdy, (x + 25.0), (y + 20.0)))
			if ((absf(v_weapon - 2.0) < 0.00001)):
				(GM.f_draw_sprite(28.0, 0.0, (x + 25.0), (y + 20.0)))
		if ((hspeed < 0.0)):
			if ((absf(v_weapon - 1.0) < 0.00001)):
				(GM.f_draw_sprite(23.0, (-1.0), (x - 3.0), (y + 20.0)))
			if ((absf(v_weapon - 4.0) < 0.00001)):
				if ((v_mygrenades > 0.0)):
					(GM.f_draw_sprite(34.0, (-1.0), (x + 23.0), (y + 21.0)))
				else:
					(GM.f_draw_sprite(37.0, (-1.0), (x + 23.0), (y + 21.0)))
			if ((absf(v_weapon - 3.0) < 0.00001)):
				if ((absf(v_rreload - 0.0) < 0.00001)):
					v_woopdy = 0.0
				else:
					v_woopdy = 1.0
				(GM.f_draw_sprite(348.0, v_woopdy, (x - 3.0), (y + 20.0)))
			if ((absf(v_weapon - 2.0) < 0.00001)):
				(GM.f_draw_sprite(29.0, 0.0, (x - 3.0), (y + 20.0)))
	if not (((absf(v_chargeup - 0.0) < 0.00001))):
		if ((v_chargeup < 50.0)):
			v_pen_color = 0.0
			v_brush_color = 0.0
			(GM.f_draw_rectangle(x, (y - 15.0), (x + 60.0), (y - 10.0)))
			v_brush_color = 32768.0
			(GM.f_draw_rectangle(x, (y - 15.0), (x + ((60.0 / 50.0) * v_chargeup)), (y - 10.0)))
			v_brush_color = 0.0
			(GM.f_draw_rectangle(x, (y - 10.0), (x + 60.0), (y - 5.0)))
		else:
			v_pen_color = 0.0
			v_brush_color = 32768.0
			(GM.f_draw_rectangle(x, (y - 15.0), (x + 60.0), (y - 10.0)))
			v_brush_color = 0.0
			(GM.f_draw_rectangle(x, (y - 10.0), (x + 60.0), (y - 5.0)))
			v_brush_color = 255.0
			(GM.f_draw_rectangle(x, (y - 10.0), (x + ((60.0 / 50.0) * ((v_chargeup - 50.0)))), (y - 5.0)))
func ev_keypress_16():
	if (((absf((GM.f_instance_number(452.0)) - 0.0) < 0.00001))):
		for _w546 in GM.with_list((443.0), self):
			if _w546._dead:
				continue
			_w546.other = self
			(GM.f_instance_destroy(_w546))
		if ((absf(v_weapon - 4.0) < 0.00001)):
			v_weapon = 0.0
		v_weapon = v_weapon + 1.0
		if (((absf(v_weapon - 2.0) < 0.00001) and (absf(v_havedoublepistols - 0.0) < 0.00001))):
			v_weapon = 3.0
		if (((absf(v_weapon - 3.0) < 0.00001) and (absf(v_haveshotgun - 0.0) < 0.00001))):
			v_weapon = 4.0
		if ((absf(v_weapon - 2.0) < 0.00001)):
			(GM.f_instance_create(0.0, 0.0, 443.0))
		(GM.f_sound_play(20.0))
func ev_keyrelease_17():
	if (((absf((GM.f_instance_number(452.0)) - 0.0) < 0.00001))):
		if (((absf(v_throwready - 1.0) < 0.00001))):
			if (((v_mygrenades > 0.0))):
				if (((absf(v_weapon - 4.0) < 0.00001))):
					v_mygrenades = v_mygrenades - 1.0
					if ((hspeed > 0.0)):
						(GM.f_instance_create((x + 13.0), (y + 21.0), 446.0))
					else:
						(GM.f_instance_create((x + 23.0), (y + 21.0), 446.0))
					alarm[int(2.0)] = 10.0
					v_throwready = 0.0
