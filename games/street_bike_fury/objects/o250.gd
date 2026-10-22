extends "res://games/street_bike_fury/scripts.gd"
var v_mypower = 0.0
var v_set = 0.0
func ev_create():
	v_mypower = 1.0
func ev_step():
	if (((x < GM.vb(0.0, "x")) and (hspeed < (GM.vb(0.0, "hspeed") + 5.0)))):
		hspeed = hspeed + 0.5
	if (((x > GM.vb(0.0, "x")) and (hspeed > (GM.vb(0.0, "hspeed") - 5.0)))):
		hspeed = hspeed - 0.5
	if (((y < GM.vb(0.0, "y")) and (vspeed < (GM.vb(0.0, "vspeed") + 5.0)))):
		vspeed = vspeed + 0.5
	if (((y > GM.vb(0.0, "y")) and (vspeed > (GM.vb(0.0, "vspeed") - 5.0)))):
		vspeed = vspeed - 0.5
	if ((hspeed > (GM.vb(0.0, "hspeed") + 5.0))):
		hspeed = (GM.vb(0.0, "hspeed") + 5.0)
	if ((vspeed > (GM.vb(0.0, "vspeed") + 5.0))):
		vspeed = (GM.vb(0.0, "vspeed") + 5.0)
func ev_col_262():
	self.ev_user(0.0)
func ev_col_240():
	self.ev_user(0.0)
	for _w112 in GM.with_list((self.other), self):
		if _w112._dead:
			continue
		_w112.other = self
		(GM.f_instance_destroy(_w112))
func ev_col_20():
	self.ev_user(0.0)
	for _w113 in GM.with_list((self.other), self):
		if _w113._dead:
			continue
		_w113.other = self
		(GM.f_instance_destroy(_w113))
func ev_col_0():
	if ((absf(GM.vget(self.other, "v_die") - 0.0) < 0.00001)):
		if (((GM.vb(self.other, "vspeed") > (vspeed + 25.0)) or (GM.vb(self.other, "vspeed") < (vspeed - 25.0)))):
			(GM.f_instance_destroy(self))
			return
		GM.health = GM.health - 3.0
		GM.vset(self.other, "v_damaged", (-1.0))
		GM.vb(self.other, "alarm")[int(10.0)] = 20.0
		self.ev_user(0.0)
func ev_other_10():
	(GM.f_instance_create(x, y, 224.0))
	(GM.f_sound_play(8.0))
	for _r114 in range(int((5.0))):
		v_set = (GM.f_instance_create(((x - 80.0) + (GM.f_random(160.0))), ((y - 50.0) + (GM.f_random(100.0))), 249.0))
		GM.vsetb(v_set, "hspeed", GM.vb(v_set, "hspeed") + hspeed)
		GM.vsetb(v_set, "vspeed", GM.vb(v_set, "vspeed") + vspeed)
	(GM.f_instance_destroy(self))
