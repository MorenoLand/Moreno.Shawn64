extends "res://games/jetz_rampage_4_revenge/objects/o1134.gd"
func ev_create():
	hspeed = hspeed + GM.vb(979.0, "hspeed")
	vspeed = vspeed + GM.vb(979.0, "vspeed")
	if ((absf(GM.vget(979.0, "v_guyright") - 1.0) < 0.00001)):
		sprite_index = 454.0
	if ((absf(GM.vget(979.0, "v_guyleft") - 1.0) < 0.00001)):
		sprite_index = 455.0
	alarm[int(0.0)] = 1.0
func ev_col_1143():
	self.ev_user(0.0)
func ev_col_962():
	(GM.f_instance_destroy(self))
func ev_col_531():
	pass
func ev_other_10():
	for _w932 in GM.with_list((1143.0), self):
		if _w932._dead:
			continue
		_w932.other = self
		for _r933 in range(int((10.0))):
			(GM.f_instance_create((_w932.x + (GM.f_random(_w932.sprite_width))), (_w932.y + (GM.f_random(_w932.sprite_height))), 599.0))
		for _r934 in range(int((5.0))):
			(GM.f_instance_create((_w932.x + (GM.f_random(_w932.sprite_width))), (_w932.y + (GM.f_random(_w932.sprite_height))), 599.0))
		for _r935 in range(int((3.0))):
			(GM.f_instance_create((_w932.x + (GM.f_random(_w932.sprite_width))), (_w932.y + (GM.f_random(_w932.sprite_height))), 490.0))
	(GM.f_instance_destroy(self))
