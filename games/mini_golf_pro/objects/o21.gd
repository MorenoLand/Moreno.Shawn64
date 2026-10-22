extends "res://games/mini_golf_pro/scripts.gd"
var v_wow2 = 0.0
func ev_create():
	hspeed = (-2.5)
	(GM.f_instance_create(x, y, 25.0))
	(self.script_effectss())
func ev_other_4():
	if ((absf(x - GM.room_width) < 0.00001)):
		(GM.f_instance_create((x + 128.0), y, 21.0))
func ev_other_0():
	if ((x < 10.0)):
		(GM.f_move_wrap(self, 1.0, 0.0, 128.0))
		v_wow2 = (GM.f_floor((GM.f_random(1.99999))))
		if ((absf(v_wow2 - 0.0) < 0.00001)):
			(GM.f_instance_create(x, (y + (GM.f_random((sprite_height - 40.0)))), 26.0))
func ev_draw():
	if ((absf(GM.G["effects"] - 1.0) < 0.00001)):
		(GM.f_draw_sprite_ext(22.0, 0.0, x, y, 1.0, 1.0, 0.0, 16777215.0, 0.2))
	else:
		(GM.f_draw_sprite(22.0, 0.0, x, y))
