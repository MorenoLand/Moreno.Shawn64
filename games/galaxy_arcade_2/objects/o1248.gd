extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_step():
	if ((((GM.f_position_meeting(GM.mouse_x, GM.mouse_y, self))))) >= 0.5:
		GM.background_index[int(6.0)] = 48.0
	(self.script_script_hover(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_mouse_0():
	(GM.f_sound_play(15.0))
	GM.G["pac2p2"] = 1.0
	GM.G["pacpoints"] = 0.0
	GM.lives = 6.0
	(GM.f_room_goto(32.0))
func ev_other_4():
	GM.G["pac2p2"] = 0.0
