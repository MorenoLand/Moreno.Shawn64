extends "res://games/missilewave3d/scripts.gd"
var v_image_single = 0.0
func ev_create():
	v_image_single = (GM.f_random(3.0))
func ev_step():
	if ((((GM.f_place_meeting(self, (x + 0.0), (y + 8.0), 54.0))))) >= 0.5:
		vspeed = 0.0
func ev_col_58():
	vspeed = 0.0
func ev_col_55():
	(GM.f_action_move(self, "010000000", 8.0, 0.0))
