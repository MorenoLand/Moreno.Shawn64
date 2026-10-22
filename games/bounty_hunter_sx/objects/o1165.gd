extends "res://games/bounty_hunter_sx/scripts.gd"
func ev_step():
	if ((GM.G["zz"] < 100.0)):
		(GM.f_instance_destroy(self))
	if ((GM.G["mycolor"] == "yellow")):
		(GM.f_instance_destroy(self))
	(self.script_hover(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_mouse_4():
	if ((GM.G["zz"] > 99.0)):
		GM.G["zz"] = GM.G["zz"] - 100.0
		GM.G["mycolor"] = "yellow"
		(GM.f_sound_play(310.0))
		GM.G["ucolor"] = 1.0
	else:
		(GM.f_sound_play(309.0))
	if (((absf((GM.f_instance_number(1206.0)) - 0.0) < 0.00001))):
		(GM.f_instance_create((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 310.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 233.0), 1206.0))
	if (((absf((GM.f_instance_number(1163.0)) - 0.0) < 0.00001))):
		(GM.f_instance_create((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 310.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 163.0), 1163.0))
	if (((absf((GM.f_instance_number(1164.0)) - 0.0) < 0.00001))):
		(GM.f_instance_create((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 310.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 93.0), 1164.0))
	if (((absf((GM.f_instance_number(1165.0)) - 0.0) < 0.00001))):
		(GM.f_instance_create((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 310.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 128.0), 1165.0))
	if (((absf((GM.f_instance_number(1166.0)) - 0.0) < 0.00001))):
		(GM.f_instance_create((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 310.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 58.0), 1166.0))
	if (((absf((GM.f_instance_number(1167.0)) - 0.0) < 0.00001))):
		(GM.f_instance_create((((GM.view_xview[0] + (1024.0 / 2.0)) - 201.5) + 310.0), (((GM.view_yview[0] + (768.0 / 2.0)) - 157.0) + 198.0), 1167.0))
