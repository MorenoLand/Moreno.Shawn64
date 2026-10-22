extends "res://games/missilewave3d/scripts.gd"
func ev_create():
	x = (100.0 - (sprite_width / 2.0))
	y = 568.0
func ev_step():
	(self.script_mouse_over(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_mouse_4():
	(GM.f_sound_stop(9.0))
	(GM.f_room_goto(0.0))
