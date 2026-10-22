extends "res://games/jetzrampage/scripts.gd"
func ev_create():
	(GM.f_action_move(self, "000001000", 4.0, 0.0))
func ev_step():
	if (((GM.G["lives"] > 90.0))):
		if ((((GM.f_random(25.0)) < 1.0))):
			(GM.f_instance_create((x + 63.0), (y + 17.0), 144.0))
		if (((GM.vb(0.0, "x") < (x - 200.0)))):
			(GM.f_action_move(self, "000100000", 4.0, 0.0))
		if (((GM.vb(0.0, "x") > (x + 200.0)))):
			(GM.f_action_move(self, "000001000", 4.0, 0.0))
		if (((x < (GM.vb(0.0, "x") + 200.0)))):
			if (((x > (GM.vb(0.0, "x") - 200.0)))):
				(GM.f_action_move(self, "000010000", 0.0, 0.0))
func ev_other_0():
	(self.script_outside_wrap(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_draw():
	if (((speed > 0.0))):
		(GM.f_draw_sprite(136.0, (-1.0), (x + 0.0), (y + 0.0)))
	else:
		(GM.f_draw_sprite(136.0, 0.0, (x + 0.0), (y + 0.0)))
