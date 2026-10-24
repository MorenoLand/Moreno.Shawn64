extends "res://games/galaxy_arcade/scripts.gd"
func ev_create():
	(GM.f_sound_play(1.0))
	x = xstart
	y = ystart
	GM.G["lives"] = GM.G["lives"] + (-1.0)
	GM.score = GM.score + (-200.0)
func ev_step():
	if ((((GM.f_random(40.0)) < 1.0))):
		(GM.f_instance_create((x + (-50.0)), (y + (-50.0)), 40.0))
