extends "res://games/missilewave3d/scripts.gd"
func ev_create():
	x = (500.0 - (sprite_width / 2.0))
	y = 568.0
func ev_step():
	(self.script_mouse_over(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_mouse_4():
	(GM.f_room_goto(5.0))
