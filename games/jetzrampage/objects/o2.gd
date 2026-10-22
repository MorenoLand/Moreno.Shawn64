extends "res://games/jetzrampage/scripts.gd"
var v_bombpower = 0.0
var v_pow = 0.0
var v_shotready = 0.0
var v_start = 0.0
func ev_create():
	v_pow = 0.0
	v_shotready = 1.0
	v_bombpower = 5.0
func ev_alarm_0():
	v_shotready = 1.0
func ev_key_17():
	if (((absf(v_start - 1.0) < 0.00001))):
		if (((absf(v_shotready - 1.0) < 0.00001))):
			if (((GM.vb(0.0, "hspeed") > 0.0))):
				if (((absf(GM.vget(0.0, "v_weaponselect") - 1.0) < 0.00001))):
					(GM.f_sound_play(8.0))
					(GM.f_instance_create((GM.vb(0.0, "x") + 68.0), (GM.vb(0.0, "y") + 36.0), 10.0))
					alarm[int(0.0)] = 5.0
					v_shotready = 0.0
				else:
					if (((absf(GM.vget(0.0, "v_weaponselect") - 2.0) < 0.00001))):
						(GM.f_sound_play(76.0))
						(GM.f_instance_create((GM.vb(0.0, "x") + 56.0), (GM.vb(0.0, "y") + 24.0), 166.0))
					else:
						if (((absf(GM.vget(0.0, "v_weaponselect") - 4.0) < 0.00001))):
							(GM.f_instance_create((GM.vb(0.0, "x") + 68.0), (GM.vb(0.0, "y") + 36.0), 195.0))
						else:
							if (((absf(GM.vget(0.0, "v_weaponselect") - 5.0) < 0.00001))):
								if (((GM.G["bombs"] > 0.0))):
									if (((v_bombpower < 20.0))):
										v_bombpower = v_bombpower + 0.5
							else:
								if (((absf(GM.vget(0.0, "v_weaponselect") - 3.0) < 0.00001))):
									for _r20 in range(int((10.0))):
										(GM.f_instance_create((GM.vb(0.0, "x") + 68.0), (GM.vb(0.0, "y") + 36.0), 196.0))
			else:
				if (((absf(GM.vget(0.0, "v_weaponselect") - 1.0) < 0.00001))):
					(GM.f_sound_play(8.0))
					(GM.f_instance_create((GM.vb(0.0, "x") + 9.0), (GM.vb(0.0, "y") + 36.0), 10.0))
					alarm[int(0.0)] = 5.0
					v_shotready = 0.0
				else:
					if (((absf(GM.vget(0.0, "v_weaponselect") - 2.0) < 0.00001))):
						(GM.f_sound_play(76.0))
						(GM.f_instance_create((GM.vb(0.0, "x") - 3.0), (GM.vb(0.0, "y") + 24.0), 166.0))
					else:
						if (((absf(GM.vget(0.0, "v_weaponselect") - 4.0) < 0.00001))):
							(GM.f_instance_create((GM.vb(0.0, "x") + 9.0), (GM.vb(0.0, "y") + 36.0), 193.0))
						else:
							if (((absf(GM.vget(0.0, "v_weaponselect") - 5.0) < 0.00001))):
								if (((GM.G["bombs"] > 0.0))):
									if (((v_bombpower < 20.0))):
										v_bombpower = v_bombpower + 0.5
							else:
								if (((absf(GM.vget(0.0, "v_weaponselect") - 3.0) < 0.00001))):
									for _r21 in range(int((10.0))):
										(GM.f_instance_create((GM.vb(0.0, "x") + 9.0), (GM.vb(0.0, "y") + 36.0), 197.0))
func ev_draw():
	if (((absf((GM.f_instance_number(0.0)) - 1.0) < 0.00001))):
		if (((absf(GM.vget(0.0, "v_guyright") - 1.0) < 0.00001))):
			if (((absf(GM.vget(0.0, "v_weaponselect") - 1.0) < 0.00001))):
				if (((absf(GM.vget(0.0, "v_crimax") - 0.0) < 0.00001))):
					(GM.f_draw_sprite(3.0, (-1.0), (GM.vb(0.0, "x") + 40.0), (GM.vb(0.0, "y") + 26.0)))
				else:
					(GM.f_draw_sprite(185.0, (-1.0), (GM.vb(0.0, "x") + 40.0), (GM.vb(0.0, "y") + 26.0)))
			else:
				if (((absf(GM.vget(0.0, "v_weaponselect") - 2.0) < 0.00001))):
					(GM.f_draw_sprite(153.0, (-1.0), (GM.vb(0.0, "x") + 40.0), (GM.vb(0.0, "y") + 26.0)))
				else:
					if (((absf(GM.vget(0.0, "v_weaponselect") - 3.0) < 0.00001))):
						(GM.f_draw_sprite(176.0, (-1.0), (GM.vb(0.0, "x") + 40.0), (GM.vb(0.0, "y") + 26.0)))
					else:
						if (((absf(GM.vget(0.0, "v_weaponselect") - 4.0) < 0.00001))):
							(GM.f_draw_sprite(174.0, (-1.0), (GM.vb(0.0, "x") + 40.0), (GM.vb(0.0, "y") + 26.0)))
						else:
							if (((absf(GM.vget(0.0, "v_weaponselect") - 5.0) < 0.00001))):
								(GM.f_draw_sprite(179.0, 0.0, (GM.vb(0.0, "x") + 23.0), (GM.vb(0.0, "y") + 26.0)))
							else:
								if (((absf(GM.vget(0.0, "v_weaponselect") - 6.0) < 0.00001))):
									(GM.f_draw_sprite(187.0, 0.0, (GM.vb(0.0, "x") + 23.0), (GM.vb(0.0, "y") + 26.0)))
		if (((absf(GM.vget(0.0, "v_guyleft") - 1.0) < 0.00001))):
			if (((absf(GM.vget(0.0, "v_weaponselect") - 1.0) < 0.00001))):
				if (((absf(GM.vget(0.0, "v_crimax") - 0.0) < 0.00001))):
					(GM.f_draw_sprite(8.0, (-1.0), (GM.vb(0.0, "x") + 8.0), (GM.vb(0.0, "y") + 26.0)))
				else:
					(GM.f_draw_sprite(186.0, (-1.0), (GM.vb(0.0, "x") + 8.0), (GM.vb(0.0, "y") + 26.0)))
			else:
				if (((absf(GM.vget(0.0, "v_weaponselect") - 2.0) < 0.00001))):
					(GM.f_draw_sprite(154.0, (-1.0), (GM.vb(0.0, "x") + 8.0), (GM.vb(0.0, "y") + 26.0)))
				else:
					if (((absf(GM.vget(0.0, "v_weaponselect") - 3.0) < 0.00001))):
						(GM.f_draw_sprite(177.0, (-1.0), (GM.vb(0.0, "x") + 8.0), (GM.vb(0.0, "y") + 26.0)))
					else:
						if (((absf(GM.vget(0.0, "v_weaponselect") - 4.0) < 0.00001))):
							(GM.f_draw_sprite(175.0, (-1.0), (GM.vb(0.0, "x") + 8.0), (GM.vb(0.0, "y") + 26.0)))
						else:
							if (((absf(GM.vget(0.0, "v_weaponselect") - 5.0) < 0.00001))):
								(GM.f_draw_sprite(180.0, 0.0, (GM.vb(0.0, "x") + 25.0), (GM.vb(0.0, "y") + 26.0)))
							else:
								if (((absf(GM.vget(0.0, "v_weaponselect") - 6.0) < 0.00001))):
									(GM.f_draw_sprite(188.0, 0.0, (GM.vb(0.0, "x") + 25.0), (GM.vb(0.0, "y") + 26.0)))
func ev_keypress_17():
	if (((absf(GM.vget(0.0, "v_weaponselect") - 4.0) < 0.00001))):
		(GM.f_sound_loop(74.0))
	if (((absf(GM.vget(0.0, "v_weaponselect") - 3.0) < 0.00001))):
		(GM.f_sound_loop(75.0))
	if (((absf(GM.vget(0.0, "v_weaponselect") - 6.0) < 0.00001))):
		if (((absf(v_start - 1.0) < 0.00001))):
			if (((GM.G["bombs"] > 0.0))):
				GM.G["bombs"] = GM.G["bombs"] + (-1.0)
				if (((absf(GM.vget(0.0, "v_guyright") - 1.0) < 0.00001))):
					(GM.f_instance_create((GM.vb(0.0, "x") + 55.0), (GM.vb(0.0, "y") + 26.0), 198.0))
				else:
					(GM.f_instance_create((GM.vb(0.0, "x") + 15.0), (GM.vb(0.0, "y") + 26.0), 198.0))
func ev_keyrelease_17():
	(GM.f_sound_stop(76.0))
	(GM.f_sound_stop(75.0))
	(GM.f_sound_stop(74.0))
	if (((absf(GM.vget(0.0, "v_weaponselect") - 5.0) < 0.00001))):
		if (((absf(v_start - 1.0) < 0.00001))):
			if (((absf((GM.f_instance_number(100.0)) - 0.0) < 0.00001))):
				if (((GM.G["bombs"] > 0.0))):
					for _w22 in GM.with_list((67.0), self):
						if _w22._dead:
							continue
						_w22.other = self
						GM.vset(_w22, "v_thrower", GM.vget(3.0, "v_bombpower"))
					GM.G["bombs"] = GM.G["bombs"] + (-1.0)
					for _w23 in GM.with_list((2.0), self):
						if _w23._dead:
							continue
						_w23.other = self
						(GM.f_instance_create((_w23.x + 0.0), (_w23.y + 0.0), 100.0))
					for _w24 in GM.with_list((2.0), self):
						if _w24._dead:
							continue
						_w24.other = self
						(GM.f_instance_destroy(_w24))
