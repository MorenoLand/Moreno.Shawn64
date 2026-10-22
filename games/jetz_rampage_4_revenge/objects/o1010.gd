extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_wow = 0.0
func ev_create():
	hspeed = hspeed + GM.vb(7.0, "hspeed")
	vspeed = vspeed + GM.vb(7.0, "vspeed")
	gravity = 0.5
	gravity_direction = 270.0
	GM.view_object[int(0.0)] = 1010.0
func ev_destroy():
	pass
func ev_step():
	if ((y > (GM.view_yview[0] + 280.0))):
		for _w678 in GM.with_list((1011.0), self):
			if _w678._dead:
				continue
			_w678.other = self
			(GM.f_instance_destroy(_w678))
		GM.view_hborder[0] = (400.0 - 33.0)
		GM.view_vborder[0] = (300.0 - 33.0)
func ev_col_531():
	if ((GM.vb(self.other, "y") > 1000.0)):
		for _w679 in GM.with_list((1009.0), self):
			if _w679._dead:
				continue
			_w679.other = self
			GM.vset(_w679, "v_smashlimit", GM.vget(_w679, "v_smashlimit") + 1.0)
		self.ev_user(0.0)
func ev_col_489():
	self.ev_user(0.0)
func ev_other_10():
	(GM.f_instance_create(x, y, 1011.0))
	for _r680 in range(int((40.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 599.0))
	for _r681 in range(int((60.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
	for _r682 in range(int((20.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 637.0))
	v_wow = (GM.f_round((GM.f_random(1.0))))
	if (GM.eq(v_wow, 0.0)):
		(GM.f_sound_play(129.0))
	if (GM.eq(v_wow, 1.0)):
		(GM.f_sound_play(132.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
