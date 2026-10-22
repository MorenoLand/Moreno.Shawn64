extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_wee = 0.0
var v_what = 0.0
func ev_create():
	hspeed = (-1.0)
	gravity = 0.3
	gravity_direction = 270.0
	(GM.f_sound_play(183.0))
	v_what = 1.0
func ev_step():
	hspeed = (-2.0)
func ev_col_1132():
	(GM.f_sound_play(183.0))
	(GM.f_sound_play(190.0))
	for _r791 in range(int((20.0))):
		v_wee = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 664.0))
		GM.vsetb(v_wee, "direction", (50.0 + (GM.f_random(80.0))))
		GM.vset(v_wee, "v_yyy", ((y + sprite_height) - 6.0))
		GM.vsetb(v_wee, "depth", (depth - 1.0))
	for _r792 in range(int((10.0))):
		v_wee = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 653.0))
		GM.vsetb(v_wee, "direction", (50.0 + (GM.f_random(80.0))))
		GM.vset(v_wee, "v_yyy", ((y + sprite_height) - 6.0))
		GM.vsetb(v_wee, "depth", (depth - 1.0))
	for _r793 in range(int((10.0))):
		v_wee = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 978.0))
		GM.vsetb(v_wee, "direction", (40.0 + (GM.f_random(100.0))))
		GM.vset(v_wee, "v_yyy", ((y + sprite_height) - 6.0))
		GM.vsetb(v_wee, "depth", (depth - 1.0))
	(GM.f_instance_destroy(self))
func ev_col_1131():
	(GM.f_sound_play(151.0))
	vspeed = (-vspeed)
	if ((absf(v_what - 1.0) < 0.00001)):
		vspeed = vspeed + 3.0
		v_what = 0.0
func ev_col_489():
	for _w794 in GM.with_list((680.0), self):
		if _w794._dead:
			continue
		_w794.other = self
		_w794.ev_user(0.0)
