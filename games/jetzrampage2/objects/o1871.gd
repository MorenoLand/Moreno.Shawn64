extends "res://games/jetzrampage2/scripts.gd"
func ev_create():
	(self.script_ControllerInit(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_step():
	(self.script_ControllerStep(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_draw():
	(self.script_ControllerDraw(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_keypress_27():
	(GM.f_room_goto(31.0))
