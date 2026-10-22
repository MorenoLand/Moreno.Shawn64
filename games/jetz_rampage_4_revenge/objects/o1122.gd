extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_create():
	(GM.f_instance_deactivate_object(489.0))
	GM.vsetb(1069.0, "x", (GM.room_width - 200.0))
	if ((absf((GM.f_instance_number(1104.0)) - 1.0) < 0.00001)):
		GM.vsetb(1069.0, "speed", 35.0)
func ev_destroy():
	GM.vsetb(7.0, "y", GM.vb(7.0, "y") - 80.0)
func ev_step():
	GM.vset(7.0, "v_movenow", 0.0)
	x = 190.0
	y = 1130.0
	GM.vsetb(7.0, "x", x)
	GM.vsetb(7.0, "y", y)
	GM.vset(7.0, "v_guyright", 1.0)
	GM.vset(7.0, "v_guyleft", 0.0)
	GM.vsetb(7.0, "speed", 0.0)
func ev_col_1069():
	(GM.f_instance_create(x, y, 1124.0))
	self.ev_user(0.0)
	(GM.f_instance_create((GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)), (GM.vb(7.0, "y") + (GM.vb(7.0, "sprite_height") / 2.0)), 722.0))
func ev_other_10():
	for _w772 in GM.with_list((680.0), self):
		if _w772._dead:
			continue
		_w772.other = self
		_w772.ev_user(0.0)
func ev_keypress_13():
	if (((GM.f_distance_to_object(self, 1069.0)) < 30.0)):
		if ((absf((GM.f_instance_number(1104.0)) - 1.0) < 0.00001)):
			GM.G["j4var11"] = GM.G["j4var11"] + 400.0
			(GM.f_sound_play(224.0))
			for _w773 in GM.with_list((1104.0), self):
				if _w773._dead:
					continue
				_w773.other = self
				(GM.f_instance_destroy(_w773))
			for _w774 in GM.with_list((680.0), self):
				if _w774._dead:
					continue
				_w774.other = self
				_w774.ev_user(0.0)
			(GM.f_instance_destroy(self))
		if ((absf((GM.f_instance_number(1103.0)) - 1.0) < 0.00001)):
			GM.G["j4var11"] = GM.G["j4var11"] + 300.0
			(GM.f_sound_play(224.0))
			for _w775 in GM.with_list((1103.0), self):
				if _w775._dead:
					continue
				_w775.other = self
				(GM.f_instance_create(_w775.x, _w775.y, 1104.0))
				(GM.f_instance_destroy(_w775))
			for _w776 in GM.with_list((680.0), self):
				if _w776._dead:
					continue
				_w776.other = self
				_w776.ev_user(0.0)
			(GM.f_instance_destroy(self))
	else:
		(GM.f_instance_create(x, y, 1123.0))
		self.ev_user(0.0)
