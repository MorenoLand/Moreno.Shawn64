extends "res://games/jetzfusion/scripts.gd"
var v_Chainsawwav = 0.0
var v_bomazang = 0.0
var v_brush_color = 0.0
var v_pen_color = 0.0
var v_pooper = 0.0
var v_rreload = 0.0
var v_throwready = 0.0
var v_woopdy = 0.0
func ev_create():
	v_throwready = 1.0
	GM.vset(7.0, "v_weaponready", 1.0)
	v_bomazang = 1.0
	v_rreload = 0.0
func ev_destroy():
	for _w40 in GM.with_list((55.0), self):
		if _w40._dead:
			continue
		_w40.other = self
		(GM.f_instance_destroy(_w40))
	(GM.f_sound_stop(52.0))
func ev_alarm_4():
	v_rreload = 1.0
func ev_alarm_3():
	v_rreload = 0.0
func ev_alarm_2():
	v_throwready = 1.0
func ev_alarm_0():
	GM.vset(7.0, "v_weaponready", 1.0)
func ev_key_17():
	if ((((((absf(GM.vget(7.0, "v_weapon") - 2.0) < 0.00001) and (absf(v_throwready - 1.0) < 0.00001)) and (GM.vget(7.0, "v_chargeup") < 100.0)) and (GM.G["grenades"] > 0.0)) and (absf(v_throwready - 1.0) < 0.00001))):
		GM.vset(7.0, "v_chargeup", GM.vget(7.0, "v_chargeup") + 5.0)
	if (((((absf(GM.vget(7.0, "v_weapon") - 10.0) < 0.00001) and (absf(GM.vget(7.0, "v_weaponready") - 1.0) < 0.00001)) and (GM.vget(7.0, "v_chargeup") < 100.0)) and (GM.G["grenades"] > 0.0))):
		GM.vset(7.0, "v_chargeup", GM.vget(7.0, "v_chargeup") + 5.0)
	if ((absf(GM.vget(7.0, "v_weapon") - 3.0) < 0.00001)):
		if ((GM.vb(7.0, "hspeed") > 0.0)):
			(GM.f_instance_create((GM.vb(7.0, "x") + 25.0), (GM.vb(7.0, "y") + 20.0), 166.0))
		else:
			(GM.f_instance_create((GM.vb(7.0, "x") - 3.0), (GM.vb(7.0, "y") + 20.0), 166.0))
		if not ((((GM.f_sound_isplaying(22.0)))) >= 0.5):
			(GM.f_sound_loop(22.0))
		(GM.f_instance_create(((GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)) - 16.0), ((GM.vb(7.0, "y") + (GM.vb(7.0, "sprite_height") / 2.0)) - 16.0), 23.0))
	if ((absf(GM.vget(7.0, "v_weapon") - 6.0) < 0.00001)):
		if ((GM.vb(7.0, "hspeed") > 0.0)):
			(GM.f_instance_create((GM.vb(7.0, "x") + 25.0), (GM.vb(7.0, "y") + 20.0), 279.0))
		else:
			(GM.f_instance_create((GM.vb(7.0, "x") - 3.0), (GM.vb(7.0, "y") + 20.0), 279.0))
	if ((absf(GM.vget(7.0, "v_weapon") - 1.0) < 0.00001)):
		if ((absf(GM.vget(7.0, "v_weaponready") - 1.0) < 0.00001)):
			if ((GM.vb(7.0, "hspeed") > 0.0)):
				(GM.f_instance_create((GM.vb(7.0, "x") + 45.0), (GM.vb(7.0, "y") + 24.0), 53.0))
			else:
				(GM.f_instance_create((GM.vb(7.0, "x") + 10.0), (GM.vb(7.0, "y") + 24.0), 53.0))
			if ((absf(GM.vget(7.0, "v_evil") - 0.0) < 0.00001)):
				alarm[int(0.0)] = 5.0
			else:
				alarm[int(0.0)] = 3.0
			GM.vset(7.0, "v_weaponready", 0.0)
	if ((absf(GM.vget(7.0, "v_weapon") - 4.0) < 0.00001)):
		if ((absf(GM.vget(7.0, "v_weaponready") - 1.0) < 0.00001)):
			if ((GM.vb(7.0, "hspeed") > 0.0)):
				(GM.f_instance_create((GM.vb(7.0, "x") + 50.0), (GM.vb(7.0, "y") + 23.0), 53.0))
				(GM.f_instance_create((GM.vb(7.0, "x") + 53.0), (GM.vb(7.0, "y") + 20.0), 53.0))
			else:
				(GM.f_instance_create((GM.vb(7.0, "x") + 4.0), (GM.vb(7.0, "y") + 23.0), 53.0))
				(GM.f_instance_create((GM.vb(7.0, "x") - 1.0), (GM.vb(7.0, "y") + 20.0), 53.0))
			if ((absf(GM.vget(7.0, "v_evil") - 0.0) < 0.00001)):
				alarm[int(0.0)] = 10.0
			else:
				alarm[int(0.0)] = 6.0
			(GM.f_sound_play(73.0))
			GM.vset(7.0, "v_weaponready", 0.0)
	if (((absf(GM.vget(7.0, "v_weapon") - 7.0) < 0.00001))):
		for _w41 in GM.with_list((7.0), self):
			if _w41._dead:
				continue
			_w41.other = self
			for _r42 in range(int((5.0))):
				(GM.f_instance_create((_w41.x + (_w41.sprite_width / 2.0)), (_w41.y + (_w41.sprite_height / 2.0)), 401.0))
			(GM.f_motion_add(_w41, 90.0, 0.5))
		if (not ((((GM.f_sound_isplaying(26.0)))) >= 0.5)):
			(GM.f_sound_loop(26.0))
	if (not ((((GM.f_sound_isplaying(72.0)))) >= 0.5)):
		if (((absf(v_rreload - 0.0) < 0.00001))):
			if (((absf(GM.vget(7.0, "v_weapon") - 5.0) < 0.00001))):
				if (((absf(GM.vget(7.0, "v_evil") - 0.0) < 0.00001))):
					for _r43 in range(int((8.0))):
						if ((GM.vb(7.0, "hspeed") > 0.0)):
							(GM.f_instance_create((GM.vb(7.0, "x") + 59.0), (GM.vb(7.0, "y") + 25.0), 405.0))
						else:
							(GM.f_instance_create((GM.vb(7.0, "x") - 3.0), (GM.vb(7.0, "y") + 25.0), 405.0))
				else:
					for _r44 in range(int((15.0))):
						if ((GM.vb(7.0, "hspeed") > 0.0)):
							(GM.f_instance_create((GM.vb(7.0, "x") + 59.0), (GM.vb(7.0, "y") + 25.0), 405.0))
						else:
							(GM.f_instance_create((GM.vb(7.0, "x") - 3.0), (GM.vb(7.0, "y") + 25.0), 405.0))
				(GM.f_sound_play(72.0))
				alarm[int(4.0)] = 18.0
				alarm[int(3.0)] = 25.0
func ev_draw():
	if (((absf(v_throwready - 1.0) < 0.00001))):
		if ((GM.vb(7.0, "hspeed") > 0.0)):
			if ((absf(GM.vget(7.0, "v_weapon") - 9.0) < 0.00001)):
				(GM.f_draw_sprite(332.0, 0.0, (GM.vb(7.0, "x") + 7.0), (GM.vb(7.0, "y") - 1.0)))
			if ((absf(GM.vget(7.0, "v_weapon") - 3.0) < 0.00001)):
				(GM.f_draw_sprite(19.0, (-1.0), (GM.vb(7.0, "x") + 25.0), (GM.vb(7.0, "y") + 20.0)))
			if ((absf(GM.vget(7.0, "v_weapon") - 5.0) < 0.00001)):
				if ((absf(v_rreload - 0.0) < 0.00001)):
					v_woopdy = 0.0
				else:
					v_woopdy = 1.0
				(GM.f_draw_sprite(349.0, v_woopdy, (GM.vb(7.0, "x") + 25.0), (GM.vb(7.0, "y") + 20.0)))
			if ((absf(GM.vget(7.0, "v_weapon") - 7.0) < 0.00001)):
				if (((GM.f_keyboard_check(17.0)))) >= 0.5:
					v_pooper = 1.0
				else:
					v_pooper = 0.0
				(GM.f_draw_sprite(343.0, v_pooper, (GM.vb(7.0, "x") + 25.0), (GM.vb(7.0, "y") + 20.0)))
			if ((absf(GM.vget(7.0, "v_weapon") - 10.0) < 0.00001)):
				(GM.f_draw_sprite(341.0, (-1.0), (GM.vb(7.0, "x") + 25.0), (GM.vb(7.0, "y") + 20.0)))
			if ((absf(GM.vget(7.0, "v_weapon") - 6.0) < 0.00001)):
				if (((GM.f_keyboard_check(17.0)))) >= 0.5:
					if not ((((GM.f_sound_isplaying(52.0)))) >= 0.5):
						(GM.f_sound_loop(52.0))
					(GM.f_draw_sprite(30.0, (-1.0), (GM.vb(7.0, "x") + 25.0), (GM.vb(7.0, "y") + 20.0)))
				else:
					(GM.f_draw_sprite(32.0, (-1.0), (GM.vb(7.0, "x") + 25.0), (GM.vb(7.0, "y") + 20.0)))
					if ((absf(GM.vget(7.0, "v_malfo") - 0.0) < 0.00001)):
						(GM.f_sound_stop(52.0))
			if ((absf(GM.vget(7.0, "v_weapon") - 1.0) < 0.00001)):
				(GM.f_draw_sprite(22.0, (-1.0), (GM.vb(7.0, "x") + 25.0), (GM.vb(7.0, "y") + 20.0)))
			if ((absf(GM.vget(7.0, "v_weapon") - 2.0) < 0.00001)):
				if ((GM.G["grenades"] > 0.0)):
					(GM.f_draw_sprite(35.0, (-1.0), (GM.vb(7.0, "x") + 13.0), (GM.vb(7.0, "y") + 21.0)))
				else:
					(GM.f_draw_sprite(36.0, (-1.0), (GM.vb(7.0, "x") + 13.0), (GM.vb(7.0, "y") + 21.0)))
			if ((absf(GM.vget(7.0, "v_weapon") - 4.0) < 0.00001)):
				(GM.f_draw_sprite(28.0, 0.0, (GM.vb(7.0, "x") + 25.0), (GM.vb(7.0, "y") + 20.0)))
			if ((absf(GM.vget(7.0, "v_weapon") - 8.0) < 0.00001)):
				(GM.f_draw_sprite(26.0, (-1.0), (GM.vb(7.0, "x") + 25.0), (GM.vb(7.0, "y") + 20.0)))
			if ((absf(GM.vget(7.0, "v_weapon") - 11.0) < 0.00001)):
				if ((absf(v_bomazang - 1.0) < 0.00001)):
					(GM.f_draw_sprite(286.0, (-1.0), (GM.vb(7.0, "x") + 25.0), (GM.vb(7.0, "y") + 20.0)))
				else:
					(GM.f_draw_sprite(36.0, (-1.0), (GM.vb(7.0, "x") + 13.0), (GM.vb(7.0, "y") + 21.0)))
		if ((GM.vb(7.0, "hspeed") <= 0.0)):
			if ((absf(GM.vget(7.0, "v_weapon") - 9.0) < 0.00001)):
				(GM.f_draw_sprite(331.0, 0.0, (GM.vb(7.0, "x") - 7.0), (GM.vb(7.0, "y") - 1.0)))
			if ((absf(GM.vget(7.0, "v_weapon") - 3.0) < 0.00001)):
				(GM.f_draw_sprite(20.0, (-1.0), (GM.vb(7.0, "x") - 3.0), (GM.vb(7.0, "y") + 20.0)))
			if ((absf(GM.vget(7.0, "v_weapon") - 5.0) < 0.00001)):
				if ((absf(v_rreload - 0.0) < 0.00001)):
					v_woopdy = 0.0
				else:
					v_woopdy = 1.0
				(GM.f_draw_sprite(348.0, v_woopdy, (GM.vb(7.0, "x") - 3.0), (GM.vb(7.0, "y") + 20.0)))
			if ((absf(GM.vget(7.0, "v_weapon") - 7.0) < 0.00001)):
				if (((GM.f_keyboard_check(17.0)))) >= 0.5:
					v_pooper = 1.0
				else:
					v_pooper = 0.0
				(GM.f_draw_sprite(342.0, v_pooper, (GM.vb(7.0, "x") - 3.0), (GM.vb(7.0, "y") + 20.0)))
			if ((absf(GM.vget(7.0, "v_weapon") - 10.0) < 0.00001)):
				(GM.f_draw_sprite(340.0, (-1.0), (GM.vb(7.0, "x") - 3.0), (GM.vb(7.0, "y") + 20.0)))
			if ((absf(GM.vget(7.0, "v_weapon") - 6.0) < 0.00001)):
				if (((GM.f_keyboard_check(17.0)))) >= 0.5:
					if not ((((GM.f_sound_isplaying(52.0)))) >= 0.5):
						(GM.f_sound_loop(52.0))
					(GM.f_draw_sprite(31.0, (-1.0), (GM.vb(7.0, "x") - 3.0), (GM.vb(7.0, "y") + 20.0)))
				else:
					(GM.f_draw_sprite(33.0, (-1.0), (GM.vb(7.0, "x") - 3.0), (GM.vb(7.0, "y") + 20.0)))
					if ((absf(GM.vget(7.0, "v_malfo") - 0.0) < 0.00001)):
						(GM.f_sound_stop(52.0))
			if ((absf(GM.vget(7.0, "v_weapon") - 1.0) < 0.00001)):
				(GM.f_draw_sprite(23.0, (-1.0), (GM.vb(7.0, "x") - 3.0), (GM.vb(7.0, "y") + 20.0)))
			if ((absf(GM.vget(7.0, "v_weapon") - 2.0) < 0.00001)):
				if ((GM.G["grenades"] > 0.0)):
					(GM.f_draw_sprite(34.0, (-1.0), (GM.vb(7.0, "x") + 23.0), (GM.vb(7.0, "y") + 21.0)))
				else:
					(GM.f_draw_sprite(37.0, (-1.0), (GM.vb(7.0, "x") + 23.0), (GM.vb(7.0, "y") + 21.0)))
			if ((absf(GM.vget(7.0, "v_weapon") - 4.0) < 0.00001)):
				(GM.f_draw_sprite(29.0, 0.0, (GM.vb(7.0, "x") - 3.0), (GM.vb(7.0, "y") + 20.0)))
			if ((absf(GM.vget(7.0, "v_weapon") - 8.0) < 0.00001)):
				(GM.f_draw_sprite(27.0, (-1.0), (GM.vb(7.0, "x") - 3.0), (GM.vb(7.0, "y") + 20.0)))
			if ((absf(GM.vget(7.0, "v_weapon") - 11.0) < 0.00001)):
				if ((absf(v_bomazang - 1.0) < 0.00001)):
					(GM.f_draw_sprite(287.0, (-1.0), (GM.vb(7.0, "x") - 3.0), (GM.vb(7.0, "y") + 20.0)))
				else:
					(GM.f_draw_sprite(37.0, (-1.0), (GM.vb(7.0, "x") + 23.0), (GM.vb(7.0, "y") + 21.0)))
		if not (((absf(GM.vget(7.0, "v_chargeup") - 0.0) < 0.00001))):
			if ((GM.vget(7.0, "v_chargeup") < 50.0)):
				v_pen_color = 0.0
				v_brush_color = 0.0
				(GM.f_draw_rectangle(GM.vb(7.0, "x"), (GM.vb(7.0, "y") - 15.0), (GM.vb(7.0, "x") + 60.0), (GM.vb(7.0, "y") - 10.0)))
				v_brush_color = 32768.0
				(GM.f_draw_rectangle(GM.vb(7.0, "x"), (GM.vb(7.0, "y") - 15.0), (GM.vb(7.0, "x") + ((60.0 / 50.0) * GM.vget(7.0, "v_chargeup"))), (GM.vb(7.0, "y") - 10.0)))
				v_brush_color = 0.0
				(GM.f_draw_rectangle(GM.vb(7.0, "x"), (GM.vb(7.0, "y") - 10.0), (GM.vb(7.0, "x") + 60.0), (GM.vb(7.0, "y") - 5.0)))
			else:
				v_pen_color = 0.0
				v_brush_color = 32768.0
				(GM.f_draw_rectangle(GM.vb(7.0, "x"), (GM.vb(7.0, "y") - 15.0), (GM.vb(7.0, "x") + 60.0), (GM.vb(7.0, "y") - 10.0)))
				v_brush_color = 0.0
				(GM.f_draw_rectangle(GM.vb(7.0, "x"), (GM.vb(7.0, "y") - 10.0), (GM.vb(7.0, "x") + 60.0), (GM.vb(7.0, "y") - 5.0)))
				v_brush_color = 255.0
				(GM.f_draw_rectangle(GM.vb(7.0, "x"), (GM.vb(7.0, "y") - 10.0), (GM.vb(7.0, "x") + ((60.0 / 50.0) * ((GM.vget(7.0, "v_chargeup") - 50.0)))), (GM.vb(7.0, "y") - 5.0)))
func ev_keypress_17():
	if ((absf(GM.vget(7.0, "v_weapon") - 3.0) < 0.00001)):
		if not ((((GM.f_sound_isplaying(v_Chainsawwav)))) >= 0.5):
			(GM.f_sound_loop(v_Chainsawwav))
	if (((absf(GM.vget(7.0, "v_weapon") - 11.0) < 0.00001))):
		if (((absf(v_bomazang - 1.0) < 0.00001))):
			(GM.f_sound_play(19.0))
			if ((GM.vb(7.0, "hspeed") > 0.0)):
				(GM.f_instance_create((GM.vb(7.0, "x") + 25.0), (GM.vb(7.0, "y") + 20.0), 310.0))
			else:
				(GM.f_instance_create((GM.vb(7.0, "x") - 3.0), (GM.vb(7.0, "y") + 20.0), 310.0))
			v_bomazang = 0.0
	if (((absf(GM.vget(7.0, "v_weapon") - 9.0) < 0.00001))):
		if (((absf((GM.f_instance_number(384.0)) - 0.0) < 0.00001))):
			visible = 0.0
			if (((GM.vb(7.0, "hspeed") > 0.0))):
				(GM.f_instance_create(0.0, 0.0, 384.0))
			else:
				(GM.f_instance_create(0.0, 0.0, 385.0))
func ev_keyrelease_17():
	if (((absf(GM.vget(7.0, "v_weapon") - 7.0) < 0.00001))):
		(GM.f_sound_stop(26.0))
	(GM.f_sound_stop(22.0))
	if (((absf(v_throwready - 1.0) < 0.00001))):
		if (((GM.G["grenades"] > 0.0))):
			if (((absf(GM.vget(7.0, "v_weapon") - 2.0) < 0.00001))):
				GM.G["grenades"] = GM.G["grenades"] - 1.0
				if ((GM.vb(7.0, "hspeed") > 0.0)):
					(GM.f_instance_create((GM.vb(7.0, "x") + 13.0), (GM.vb(7.0, "y") + 21.0), 56.0))
				else:
					(GM.f_instance_create((GM.vb(7.0, "x") + 23.0), (GM.vb(7.0, "y") + 21.0), 56.0))
				alarm[int(2.0)] = 10.0
				v_throwready = 0.0
	if (((absf(GM.vget(7.0, "v_weaponready") - 1.0) < 0.00001))):
		if (((absf(GM.vget(7.0, "v_weapon") - 10.0) < 0.00001))):
			if (((GM.G["grenades"] > 0.0))):
				GM.G["grenades"] = GM.G["grenades"] - 1.0
				if ((GM.vb(7.0, "hspeed") > 0.0)):
					(GM.f_instance_create((GM.vb(7.0, "x") + 52.0), (GM.vb(7.0, "y") + 20.0), 399.0))
				else:
					(GM.f_instance_create((GM.vb(7.0, "x") + 25.0), (GM.vb(7.0, "y") + 20.0), 399.0))
				alarm[int(0.0)] = 20.0
				GM.vset(7.0, "v_weaponready", 0.0)
