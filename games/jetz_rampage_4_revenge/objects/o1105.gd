extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_holdit = 0.0
func ev_create():
	alarm[int(0.0)] = 5.0
	v_holdit = GM.vget(7.0, "v_myhealth")
func ev_destroy():
	for _w753 in GM.with_list((725.0), self):
		if _w753._dead:
			continue
		_w753.other = self
		(GM.f_instance_destroy(_w753))
func ev_alarm_0():
	for _w754 in GM.with_list((680.0), self):
		if _w754._dead:
			continue
		_w754.other = self
		_w754.ev_user(0.0)
func ev_step():
	GM.vset(7.0, "v_myhealth", v_holdit)
	if (((GM.f_instance_number(998.0)) < 2.0)):
		(GM.f_instance_create((x + (GM.f_random(sprite_height))), 25.0, 998.0))
	if (((absf(GM.G["red"] - 0.0) < 0.00001) and (absf((GM.f_instance_number(1092.0)) - 1.0) < 0.00001))):
		(self.script_addred())
func ev_col_7():
	alarm[int(0.0)] = 2.0
