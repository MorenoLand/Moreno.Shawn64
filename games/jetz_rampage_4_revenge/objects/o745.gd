extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_wee = 0.0
func ev_create():
	alarm[int(0.0)] = 10.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	if ((y > 1112.0)):
		(GM.f_instance_destroy(self))
func ev_col_603():
	(GM.f_instance_destroy(self))
func ev_col_7():
	(GM.f_sound_play(129.0))
	(GM.f_instance_destroy(self))
	for _r431 in range(int((2.0))):
		v_wee = (GM.f_instance_create(((x + 2.0) + (GM.f_random(1.0))), ((y + 2.0) + (GM.f_random(1.0))), 653.0))
		GM.vsetb(v_wee, "direction", ((direction - 5.0) + (GM.f_random(10.0))))
		GM.vsetb(v_wee, "depth", GM.vb(self.other, "depth"))
		GM.vset(v_wee, "v_yyy", GM.room_height)
