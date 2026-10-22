extends "res://games/bounty_hunter_sx/scripts.gd"
func ev_create():
	x = (GM.f_random((GM.room_width - sprite_width)))
	y = (GM.f_random((GM.room_height - sprite_height)))
func ev_col_482():
	if (((absf(GM.G["maphave"] - 1.0) < 0.00001))):
		if (((absf(GM.G["orbhave"] - 1.0) < 0.00001))):
			GM.G["pearlgot"] = 1.0
			(GM.f_instance_create(0.0, 0.0, 1244.0))
			(GM.f_instance_destroy(self))
func ev_draw():
	if (((absf(GM.G["maphave"] - 1.0) < 0.00001))):
		(GM.f_draw_sprite(1151.0, (-1.0), (((x / 66.6) + GM.view_xview[0]) + 874.0), (((y / 66.6) + GM.view_yview[0]) + 618.0)))
		if (((absf(GM.G["orbhave"] - 1.0) < 0.00001))):
			(GM.f_draw_sprite(1150.0, (-1.0), (x + 0.0), (y + 0.0)))
