extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_slowdown = 0.0
var v_woot = 0.0
var v_woot2 = 0.0
var v_woot3 = 0.0
var v_woot4 = 0.0
var v_wow = 0.0
func ev_create():
	v_slowdown = 0.0
	alarm[int(0.0)] = 5.0
func ev_alarm_0():
	v_slowdown = 1.0
func ev_step():
	if ((absf(v_slowdown - 1.0) < 0.00001)):
		speed = speed - 0.2
	v_woot = (GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 490.0))
	v_woot2 = (GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 905.0))
	v_woot3 = (GM.f_instance_create(((x + (sprite_width / 2.0)) - 1.0), ((y + (sprite_height / 2.0)) - 10.0), 906.0))
	GM.vsetb(v_woot, "hspeed", GM.vb(v_woot, "hspeed") + hspeed)
	GM.vsetb(v_woot, "vspeed", GM.vb(v_woot, "vspeed") + vspeed)
	GM.vsetb(v_woot2, "hspeed", GM.vb(v_woot2, "hspeed") + hspeed)
	GM.vsetb(v_woot2, "vspeed", GM.vb(v_woot2, "vspeed") + vspeed)
	GM.vsetb(v_woot3, "hspeed", GM.vb(v_woot3, "hspeed") + hspeed)
	GM.vsetb(v_woot3, "vspeed", GM.vb(v_woot3, "vspeed") + vspeed)
	v_woot4 = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 912.0))
	GM.vset(v_woot4, "v_yyy", ((y + sprite_height) - 6.0))
	if ((speed < 3.0)):
		v_woot = (GM.f_instance_create(x, y, 711.0))
		GM.vsetb(v_woot, "sprite_index", sprite_index)
		GM.vset(v_woot, "v_bridge", 0.0)
		GM.vsetb(v_woot, "vspeed", vspeed)
		GM.vsetb(v_woot, "hspeed", hspeed)
		GM.vsetb(v_woot, "depth", depth)
		for _w538 in GM.with_list((v_woot), self):
			if _w538._dead:
				continue
			_w538.other = self
			GM.vset(_w538, "v_mypower", (-1.0))
			_w538.ev_user(0.0)
			_w538.ev_user(1.0)
		(GM.f_instance_destroy(self))
	v_wow = (GM.f_round((GM.f_random(20.0))))
	if (GM.eq(v_wow, 0.0)):
		(self.script_personscream())
