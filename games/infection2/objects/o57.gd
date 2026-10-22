extends "res://games/infection2/objects/o1.gd"
var v_mypower = 0.0
func ev_create():
	v_mypower = 10.0
func ev_col_36():
	self.ev_user(0.0)
func ev_col_33():
	self.ev_user(0.0)
func ev_col_23():
	self.ev_user(0.0)
func ev_other_10():
	v_mypower = v_mypower - 1.0
	if ((v_mypower < 0.0)):
		(GM.f_sound_play(17.0))
		for _r24 in range(int((10.0))):
			(GM.f_instance_create(((x - 20.0) + (GM.f_random(40.0))), ((y - 20.0) + (GM.f_random(40.0))), 27.0))
		for _r25 in range(int((50.0))):
			(GM.f_instance_create(((x - 20.0) + (GM.f_random(40.0))), ((y - 20.0) + (GM.f_random(40.0))), 62.0))
		(GM.f_instance_destroy(self))
	for _w26 in GM.with_list((self.other), self):
		if _w26._dead:
			continue
		_w26.other = self
		(GM.f_instance_destroy(_w26))
