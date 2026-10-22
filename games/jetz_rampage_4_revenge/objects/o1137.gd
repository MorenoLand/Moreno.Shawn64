extends "res://games/jetz_rampage_4_revenge/objects/o655.gd"
var v_wee = 0.0
func ev_create():
	v_hitornot = 0.0
	GM.view_hborder[int(0.0)] = (400.0 - 33.0)
	GM.view_vborder[int(0.0)] = (150.0 - 33.0)
	if ((absf(GM.vget(979.0, "v_guyright") - 1.0) < 0.00001)):
		vspeed = GM.vb(979.0, "vspeed")
		hspeed = (GM.vb(979.0, "hspeed") + 10.0)
	if ((absf(GM.vget(979.0, "v_guyleft") - 1.0) < 0.00001)):
		vspeed = GM.vb(979.0, "vspeed")
		hspeed = (GM.vb(979.0, "hspeed") - 10.0)
	(GM.f_instance_create(0.0, 0.0, 497.0))
func ev_destroy():
	GM.vset(979.0, "v_movenow", 1.0)
	GM.view_object[int(0.0)] = 979.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	if ((((GM.f_random(2.0)) < 1.0))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 488.0))
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 490.0))
		(GM.f_sound_play(241.0))
	GM.view_object[int(0.0)] = 1137.0
	if ((speed > 20.0)):
		speed = 20.0
	v_wee = (GM.f_instance_create(x, y, 972.0))
	GM.vsetb(v_wee, "direction", ((direction - 10.0) + (GM.f_random(20.0))))
	GM.vsetb(v_wee, "speed", (speed - (GM.f_random(15.0))))
func ev_col_1143():
	self.ev_user(0.0)
func ev_col_962():
	self.ev_user(0.0)
func ev_key_40():
	(GM.f_motion_add(self, 270.0, 0.9))
func ev_key_39():
	(GM.f_motion_add(self, 0.0, 0.9))
func ev_key_38():
	(GM.f_motion_add(self, 90.0, 0.9))
func ev_key_37():
	(GM.f_motion_add(self, 180.0, 0.9))
func ev_draw():
	(GM.f_draw_sprite(988.0, (direction / 20.0), (x + 0.0), (y + 0.0)))
