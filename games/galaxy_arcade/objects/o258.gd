extends "res://games/galaxy_arcade/scripts.gd"
func ev_step():
	(GM.f_instance_create((x + 16.0), (y + 16.0), 45.0))
func ev_col_245():
	(GM.f_instance_destroy(self))
func ev_col_98():
	if (((GM.G["missils"] > GM.G["missilshigh"]))):
		(GM.f_sound_play(10.0))
		await GM.f_show_message("NEW HIGH SCORE!")
		GM.G["missilshigh"] = GM.G["missils"]
		(GM.f_room_goto(3.0))
	else:
		(GM.f_sound_play(10.0))
		(GM.f_room_goto(3.0))
func ev_mouse_0():
	GM.G["missils"] = GM.G["missils"] + 1.0
	GM.G["missilspeed"] = GM.G["missilspeed"] + (-5.0)
	(GM.f_sound_play(1.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 254.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 254.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 254.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 254.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 254.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 254.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 254.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 254.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 254.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 254.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 254.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 254.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 254.0))
	(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_draw_sprite(165.0, (direction / 10.0), (x + 0.0), (y + 0.0)))
