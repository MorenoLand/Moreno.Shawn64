extends "res://games/svsj/scripts.gd"
var v_psound = 0.0
func ev_create():
	v_psound = 1.0
	x = ((GM.room_width / 2.0) - (sprite_width / 2.0))
func ev_step():
	(self.script_hover(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_mouse_4():
	(GM.f_sound_play(9.0))
	(GM.f_room_goto(0.0))
