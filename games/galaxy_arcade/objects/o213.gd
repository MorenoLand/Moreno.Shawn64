extends "res://games/galaxy_arcade/scripts.gd"
func ev_mouse_0():
	if (((absf(GM.G["bombplayers"] - 2.0) < 0.00001))):
		(GM.f_instance_create(64.0, 512.0, 178.0))
		(GM.f_instance_create(704.0, 64.0, 198.0))
		(GM.f_room_goto(44.0))
	if (((absf(GM.G["bombplayers"] - 3.0) < 0.00001))):
		(GM.f_instance_create(64.0, 512.0, 178.0))
		(GM.f_instance_create(704.0, 64.0, 198.0))
		(GM.f_instance_create(64.0, 64.0, 219.0))
		(GM.f_room_goto(44.0))
	if (((absf(GM.G["bombplayers"] - 4.0) < 0.00001))):
		(GM.f_instance_create(64.0, 512.0, 178.0))
		(GM.f_instance_create(704.0, 64.0, 198.0))
		(GM.f_instance_create(64.0, 64.0, 219.0))
		(GM.f_instance_create(704.0, 512.0, 231.0))
		(GM.f_room_goto(44.0))
