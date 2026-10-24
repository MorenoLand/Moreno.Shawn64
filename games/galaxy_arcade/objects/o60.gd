extends "res://games/galaxy_arcade/scripts.gd"
func ev_create():
	friction = 0.5
func ev_col_135():
	(GM.f_sound_play(1.0))
	x = xstart
	y = ystart
	GM.G["lives2"] = GM.G["lives2"] + (-1.0)
	GM.score = GM.score + (-200.0)
func ev_col_51():
	(GM.f_sound_play(1.0))
	x = xstart
	y = ystart
	GM.G["lives2"] = GM.G["lives2"] + (-1.0)
	GM.score = GM.score + (-200.0)
func ev_col_40():
	(GM.f_sound_play(1.0))
	x = xstart
	y = ystart
	GM.G["lives2"] = GM.G["lives2"] + (-1.0)
	GM.score = GM.score + (-200.0)
func ev_key_87():
	(GM.f_instance_create((x + 20.0), (y + 20.0), 45.0))
	(GM.f_motion_add(self, direction, 1.0))
func ev_key_71():
	if (((absf((GM.f_instance_number(61.0)) - 0.0) < 0.00001))):
		(GM.f_instance_create((x + 20.0), (y + 20.0), 61.0))
func ev_key_68():
	direction = direction + (-10.0)
func ev_key_65():
	direction = direction + 10.0
func ev_key_32():
	if (((absf((GM.f_instance_number(47.0)) - 0.0) < 0.00001))):
		(GM.f_instance_create((x + 20.0), (y + 20.0), 47.0))
func ev_other_0():
	(self.script_wraparoundscreen(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_draw():
	(GM.f_draw_sprite(28.0, (direction / 10.0), (x + 0.0), (y + 0.0)))
