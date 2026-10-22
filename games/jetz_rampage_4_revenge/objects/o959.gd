extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 1.0
	(GM.f_instance_create(((x - 100.0) + (GM.f_random(sprite_width))), ((y - 75.0) + (GM.f_random(sprite_height))), 599.0))
	(GM.f_instance_create(((x - 100.0) + (GM.f_random(sprite_width))), ((y - 75.0) + (GM.f_random(sprite_height))), 608.0))
	for _r605 in range(int((3.0))):
		(GM.f_instance_create(((x - 100.0) + (GM.f_random(sprite_width))), ((y - 75.0) + (GM.f_random(sprite_height))), 961.0))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_col_960():
	self.ev_user(1.0)
func ev_col_929():
	self.ev_user(1.0)
	for _w606 in GM.with_list((self.other), self):
		if _w606._dead:
			continue
		_w606.other = self
		(GM.f_motion_add(_w606, 90.0, 1.2))
func ev_col_925():
	for _w607 in GM.with_list((self.other), self):
		if _w607._dead:
			continue
		_w607.other = self
		(GM.f_motion_add(_w607, (GM.f_point_direction((_w607.x + (_w607.sprite_width / 2.0)), (_w607.y + (_w607.sprite_height / 2.0)), (GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)), (GM.vb(7.0, "y") + (GM.vb(7.0, "sprite_height") / 2.0)))), (GM.f_random(2.0))))
		_w607.ev_user(1.0)
func ev_col_898():
	self.ev_user(0.0)
func ev_col_873():
	self.ev_user(1.0)
func ev_col_872():
	self.ev_user(1.0)
func ev_col_866():
	self.ev_user(0.0)
func ev_col_838():
	self.ev_user(0.0)
func ev_col_770():
	if ((absf(GM.vb(self.other, "gravity") - 0.0) < 0.00001)):
		self.ev_user(0.0)
	self.ev_user(1.0)
func ev_col_757():
	self.ev_user(1.0)
	for _w608 in GM.with_list((self.other), self):
		if _w608._dead:
			continue
		_w608.other = self
		(GM.f_motion_add(_w608, 90.0, 1.2))
func ev_col_751():
	self.ev_user(1.0)
func ev_col_748():
	for _w609 in GM.with_list((self.other), self):
		if _w609._dead:
			continue
		_w609.other = self
		(GM.f_motion_add(_w609, (GM.f_point_direction((_w609.x + (_w609.sprite_width / 2.0)), (_w609.y + (_w609.sprite_height / 2.0)), (GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)), (GM.vb(7.0, "y") + (GM.vb(7.0, "sprite_height") / 2.0)))), (GM.f_random(2.0))))
		_w609.ev_user(1.0)
func ev_col_732():
	self.ev_user(1.0)
	for _w610 in GM.with_list((self.other), self):
		if _w610._dead:
			continue
		_w610.other = self
		(GM.f_motion_add(_w610, 90.0, 1.2))
func ev_col_731():
	self.ev_user(1.0)
	for _w611 in GM.with_list((self.other), self):
		if _w611._dead:
			continue
		_w611.other = self
		(GM.f_motion_add(_w611, 90.0, 1.2))
func ev_col_725():
	for _w612 in GM.with_list((self.other), self):
		if _w612._dead:
			continue
		_w612.other = self
		(GM.f_motion_add(_w612, (GM.f_point_direction((_w612.x + (_w612.sprite_width / 2.0)), (_w612.y + (_w612.sprite_height / 2.0)), (GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)), (GM.vb(7.0, "y") + (GM.vb(7.0, "sprite_height") / 2.0)))), (GM.f_random(2.0))))
		_w612.ev_user(1.0)
func ev_col_713():
	self.ev_user(1.0)
	for _w613 in GM.with_list((self.other), self):
		if _w613._dead:
			continue
		_w613.other = self
		(GM.f_motion_add(_w613, 90.0, 1.2))
func ev_col_712():
	(GM.f_instance_create(GM.vb(self.other, "x"), GM.vb(self.other, "y"), 491.0))
func ev_col_707():
	self.ev_user(1.0)
func ev_col_705():
	self.ev_user(0.0)
func ev_col_700():
	for _w614 in GM.with_list((self.other), self):
		if _w614._dead:
			continue
		_w614.other = self
		_w614.ev_user(2.0)
	self.ev_user(1.0)
func ev_col_698():
	self.ev_user(1.0)
func ev_col_687():
	self.ev_user(1.0)
func ev_col_686():
	self.ev_user(1.0)
func ev_col_684():
	self.ev_user(0.0)
func ev_col_683():
	self.ev_user(0.0)
func ev_col_660():
	self.ev_user(1.0)
func ev_col_646():
	self.ev_user(1.0)
func ev_col_645():
	self.ev_user(1.0)
func ev_col_644():
	self.ev_user(1.0)
func ev_col_643():
	self.ev_user(1.0)
func ev_col_637():
	self.ev_user(1.0)
func ev_col_634():
	self.ev_user(1.0)
func ev_col_631():
	self.ev_user(1.0)
func ev_col_630():
	self.ev_user(1.0)
func ev_col_627():
	self.ev_user(1.0)
func ev_col_621():
	self.ev_user(0.0)
func ev_col_614():
	self.ev_user(1.0)
func ev_col_613():
	self.ev_user(1.0)
func ev_col_610():
	self.ev_user(1.0)
func ev_col_608():
	self.ev_user(1.0)
func ev_col_601():
	self.ev_user(1.0)
func ev_col_599():
	self.ev_user(1.0)
func ev_col_592():
	for _w615 in GM.with_list((self.other), self):
		if _w615._dead:
			continue
		_w615.other = self
		_w615.ev_user(2.0)
	self.ev_user(1.0)
func ev_col_591():
	self.ev_user(0.0)
func ev_col_590():
	self.ev_user(0.0)
func ev_col_585():
	for _w616 in GM.with_list((self.other), self):
		if _w616._dead:
			continue
		_w616.other = self
		(GM.f_instance_create(_w616.x, _w616.y, 614.0))
		(GM.f_instance_destroy(_w616))
func ev_col_583():
	self.ev_user(0.0)
func ev_col_563():
	self.ev_user(0.0)
func ev_col_554():
	for _w617 in GM.with_list((self.other), self):
		if _w617._dead:
			continue
		_w617.other = self
		_w617.ev_user(2.0)
	self.ev_user(1.0)
func ev_col_553():
	self.ev_user(0.0)
func ev_col_544():
	self.ev_user(0.0)
func ev_other_11():
	for _w618 in GM.with_list((self.other), self):
		if _w618._dead:
			continue
		_w618.other = self
		if ((((absf(_w618.sprite_index - 592.0) >= 0.00001) and (absf(_w618.sprite_index - 544.0) >= 0.00001)) and (absf(_w618.sprite_index - 568.0) >= 0.00001))):
			for _r619 in range(int((3.0))):
				(GM.f_instance_create((_w618.x + (GM.f_random(_w618.sprite_width))), (_w618.y + (GM.f_random(_w618.sprite_height))), 762.0))
		(GM.f_motion_add(_w618, (((GM.f_point_direction((_w618.x + (_w618.sprite_width / 2.0)), (_w618.y + (_w618.sprite_height / 2.0)), (GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)), (GM.vb(7.0, "y") + (GM.vb(7.0, "sprite_height") / 2.0)))) - 20.0) + (GM.f_random(40.0))), (GM.f_random((_w618.gravity * 3.0)))))
		(GM.f_motion_add(_w618, 90.0, (_w618.gravity * 4.5)))
		if ((absf((GM.f_keyboard_check(13.0)) - 1.0) < 0.00001)):
			GM.vset(_w618, "v_throwhard", 1.0)
		else:
			GM.vset(_w618, "v_throwhard", 0.0)
		if ((absf(GM.vget(_w618, "v_throwhard") - 1.0) < 0.00001)):
			(GM.f_motion_add(_w618, ((((GM.f_point_direction((_w618.x + (_w618.sprite_width / 2.0)), (_w618.y + (_w618.sprite_height / 2.0)), (GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)), (GM.vb(7.0, "y") + (GM.vb(7.0, "sprite_height") / 2.0)))) - 20.0) + (GM.f_random(40.0))) - 180.0), 8.0))
func ev_other_10():
	for _w620 in GM.with_list((self.other), self):
		if _w620._dead:
			continue
		_w620.other = self
		_w620.ev_user(0.0)
