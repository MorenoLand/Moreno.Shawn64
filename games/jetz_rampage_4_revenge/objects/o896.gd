extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_gogo = 0.0
var v_throwpeople = 0.0
var v_woot = 0.0
var v_wow = 0.0
func ev_create():
	(GM.f_sprite_replace(1.0, ("." + "\\Images\\nodamager.gif"), 1.0, 0.0, 1.0, 1.0, 0.0, 0.0, 0.0))
	alarm[int(0.0)] = 180.0
	v_throwpeople = 0.0
	v_gogo = 1.0
func ev_alarm_2():
	if ((absf(v_throwpeople - 1.0) < 0.00001)):
		v_woot = (GM.f_instance_create(x, y, 711.0))
		GM.vsetb(v_woot, "sprite_index", 504.0)
		GM.vset(v_woot, "v_persond", (GM.f_floor((GM.f_random(13.99)))))
		for _w518 in GM.with_list((v_woot), self):
			if _w518._dead:
				continue
			_w518.other = self
			(GM.f_motion_add(_w518, (10.0 + (GM.f_random(30.0))), (20.0 + (GM.f_random(15.0)))))
			GM.vset(_w518, "v_mypower", (-1.0))
			_w518.ev_user(0.0)
			_w518.ev_user(1.0)
		alarm[int(2.0)] = 20.0
func ev_alarm_1():
	v_throwpeople = 0.0
	(GM.f_sound_play(213.0))
func ev_alarm_0():
	v_throwpeople = 1.0
	alarm[int(1.0)] = 75.0
	alarm[int(2.0)] = 2.0
func ev_step():
	v_wow = (GM.f_instance_create(((x + (sprite_width / 2.0)) - 2.5), ((y + (sprite_height / 2.0)) - 2.5), 488.0))
	GM.vsetb(v_wow, "vspeed", GM.vb(v_wow, "vspeed") + vspeed)
	if (((GM.view_xview[0] < (x + sprite_width)) and (absf(v_gogo - 1.0) < 0.00001))):
		(GM.f_motion_add(self, 0.0, 10.0))
		friction = 0.3
		v_gogo = 0.0
func ev_draw():
	if ((speed >= 0.0)):
		(GM.f_draw_sprite(1.0, (speed / 0.5), x, y))
		(GM.f_draw_sprite(467.0, 0.0, (x + 21.0), (y - 3.0)))
	if ((speed < 0.0)):
		(GM.f_draw_sprite(447.0, (speed / 0.5), x, y))
		(GM.f_draw_sprite(468.0, 0.0, (x - 6.0), (y - 3.0)))
