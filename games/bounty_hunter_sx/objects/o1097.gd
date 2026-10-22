extends "res://games/bounty_hunter_sx/scripts.gd"
var v_psound = 0.0
func ev_create():
	v_psound = 0.0
	x = ((GM.room_width / 2.0) - (sprite_width / 2.0))
func ev_step():
	(self.script_hover(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_mouse_4():
	if ((((GM.f_file_exists("BHSX.S64"))))) >= 0.5:
		pass
