extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_step():
	if ((((GM.f_position_meeting(GM.mouse_x, GM.mouse_y, self))))) >= 0.5:
		GM.background_index[int(6.0)] = 42.0
	(self.script_script_hover(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_mouse_4():
	(GM.f_sound_play(15.0))
	GM.score = 0.0
	GM.lives = 3.0
	GM.G["field_left"] = 16.0
	GM.G["field_right"] = (GM.G["field_left"] + (11.0 * 32.0))
	(GM.f_room_goto(2.0))
