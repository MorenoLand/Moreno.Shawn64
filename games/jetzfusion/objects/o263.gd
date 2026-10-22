extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	y = (-50.0)
	(GM.f_action_move(self, "000100000", 11.5, 0.0))
func ev_step():
	if (((x < 0.0))):
		GM.view_object[0] = 7.0
		(GM.f_instance_create(200.0, (-40.0), 261.0))
		(GM.f_instance_destroy(self))
	if not ((((absf(GM.view_xview[0] - 0.0) < 0.00001) or (absf(GM.view_xview[0] - (GM.room_width - 800.0)) < 0.00001)))):
		GM.background_hspeed[int(1.0)] = (hspeed / 15.0)
		GM.background_hspeed[int(0.0)] = (hspeed / 10.0)
	else:
		GM.background_hspeed[int(1.0)] = 0.0
		GM.background_hspeed[int(0.0)] = 0.0
func ev_draw():
	(GM.f_draw_sprite(269.0, (-1.0), (GM.view_xview[0] + 188.0), 35.0))
