extends "res://games/galaxy_arcade/scripts.gd"
func ev_create():
	friction = 0.6
func ev_col_135():
	(GM.f_sound_play(1.0))
	x = xstart
	y = ystart
	GM.G["lives"] = GM.G["lives"] + (-1.0)
	GM.score = GM.score + (-200.0)
func ev_col_51():
	(GM.f_sound_play(1.0))
	x = xstart
	y = ystart
	GM.G["lives"] = GM.G["lives"] + (-1.0)
	GM.score = GM.score + (-200.0)
func ev_col_40():
	(GM.f_sound_play(1.0))
	x = xstart
	y = ystart
	GM.G["lives"] = GM.G["lives"] + (-1.0)
	GM.score = GM.score + (-200.0)
func ev_key_87():
	if (((absf((GM.f_instance_number(60.0)) - 0.0) < 0.00001))):
		if (not (((GM.G["lives2"] < 1.0)))):
			(GM.f_instance_create(368.0, 272.0, 60.0))
func ev_key_39():
	direction = direction + (-10.0)
func ev_key_38():
	(GM.f_instance_create((x + 20.0), (y + 20.0), 45.0))
	(GM.f_motion_add(self, direction, 1.0))
func ev_key_37():
	direction = direction + 10.0
func ev_key_32():
	if (((absf((GM.f_instance_number(47.0)) - 0.0) < 0.00001))):
		(GM.f_instance_create((x + 20.0), (y + 20.0), 47.0))
func ev_key_17():
	if (((absf((GM.f_instance_number(47.0)) - 0.0) < 0.00001))):
		(GM.f_instance_create((x + 20.0), (y + 20.0), 47.0))
func ev_other_0():
	(self.script_wraparoundscreen(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_draw():
	(GM.f_draw_sprite(24.0, (direction / 10.0), (x + 0.0), (y + 0.0)))
