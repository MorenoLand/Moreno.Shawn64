extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_step():
	for _w718 in GM.with_list((7.0), self):
		if _w718._dead:
			continue
		_w718.other = self
		if ((_w718.speed < 10.0)):
			_w718.speed = 10.0
		_w718.speed = _w718.speed + 0.4
		if ((_w718.hspeed > 0.0)):
			GM.vset(_w718, "v_guyright", 1.0)
			GM.vset(_w718, "v_guyleft", 0.0)
		else:
			GM.vset(_w718, "v_guyleft", 1.0)
			GM.vset(_w718, "v_guyright", 0.0)
		_w718.direction = GM.vget(1057.0, "v_oops")
		_w718.friction = 0.2
		if ((_w718.speed > 30.0)):
			_w718.speed = 30.0
		GM.vset(_w718, "v_wow", (GM.f_floor((GM.f_random(5.9999)))))
		if (GM.eq(GM.vget(_w718, "v_wow"), 0.0)):
			(GM.f_instance_create(_w718.x, _w718.y, 497.0))
		if (GM.eq(GM.vget(_w718, "v_wow"), 0.0)):
			(GM.f_instance_create((_w718.x + (GM.f_random(_w718.sprite_width))), (_w718.y + (GM.f_random(_w718.sprite_height))), 618.0))
		for _r719 in range(int((2.0))):
			GM.vset(_w718, "v_wee", (GM.f_instance_create((_w718.x + (GM.f_random(_w718.sprite_width))), (_w718.y + (GM.f_random(_w718.sprite_height))), 599.0)))
			GM.vsetb(GM.vget(_w718, "v_wee"), "vspeed", GM.vb(GM.vget(_w718, "v_wee"), "vspeed") + GM.vb(7.0, "vspeed"))
			GM.vsetb(GM.vget(_w718, "v_wee"), "hspeed", GM.vb(GM.vget(_w718, "v_wee"), "hspeed") + GM.vb(7.0, "hspeed"))
		for _r720 in range(int((2.0))):
			GM.vset(_w718, "v_wee", (GM.f_instance_create((_w718.x + (GM.f_random(_w718.sprite_width))), (_w718.y + (GM.f_random(_w718.sprite_height))), 608.0)))
			GM.vsetb(GM.vget(_w718, "v_wee"), "vspeed", GM.vb(GM.vget(_w718, "v_wee"), "vspeed") + GM.vb(7.0, "vspeed"))
			GM.vsetb(GM.vget(_w718, "v_wee"), "hspeed", GM.vb(GM.vget(_w718, "v_wee"), "hspeed") + GM.vb(7.0, "hspeed"))
		GM.vset(_w718, "v_wow", (GM.f_round((GM.f_random(3.0)))))
		if (GM.eq(GM.vget(_w718, "v_wow"), 0.0)):
			(GM.f_sound_play(154.0))
