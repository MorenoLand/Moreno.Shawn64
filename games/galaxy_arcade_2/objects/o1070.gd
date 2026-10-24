extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_step():
	(self.script_script_hover(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_mouse_0():
	(GM.f_sound_play(15.0))
	(GM.f_room_goto(82.0))
