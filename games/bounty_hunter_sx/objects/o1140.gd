extends "res://games/bounty_hunter_sx/scripts.gd"
func ev_create():
	if ((((GM.f_random(2.0)) < 1.0))):
		(GM.f_action_move(self, "010000000", 7.0, 0.0))
	else:
		(GM.f_action_move(self, "000000010", 7.0, 0.0))
func ev_other_1():
	(self.script_outside_bounce(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_draw():
	(GM.f_draw_set_color(16777215.0))
	(GM.f_draw_line((x + 0.0), (y + 0.0), (x + 1024.0), (y + 0.0)))
