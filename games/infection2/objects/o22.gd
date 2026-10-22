extends "res://games/infection2/objects/o1.gd"
var v_damage = 0.0
func ev_create():
	v_damage = 0.0
func ev_col_33():
	self.ev_user(0.0)
func ev_col_23():
	v_damage = v_damage + 1.0
	if ((v_damage > 10.0)):
		self.ev_user(0.0)
func ev_other_10():
	(GM.f_sound_play(14.0))
	for _r20 in range(int((70.0))):
		(GM.f_instance_create((x + (GM.f_random(40.0))), (y + (GM.f_random(60.0))), 37.0))
	for _r21 in range(int((20.0))):
		(GM.f_instance_create((x + (GM.f_random(40.0))), (y + (GM.f_random(60.0))), 33.0))
	for _r22 in range(int((10.0))):
		(GM.f_instance_create((x + (GM.f_random(40.0))), (y + (GM.f_random(60.0))), 36.0))
	for _r23 in range(int((1.0))):
		(GM.f_instance_create((x + (GM.f_random(40.0))), (y + (GM.f_random(60.0))), 38.0))
	(GM.f_instance_destroy(self))
