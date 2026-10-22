extends "res://games/mini_golf_pro/scripts.gd"
func ev_create():
	if ((absf((GM.f_instance_number(158.0)) - 1.0) < 0.00001)):
		sprite_index = 117.0
	if ((absf(GM.room - 60.0) < 0.00001)):
		visible = 0.0
func ev_col_301():
	if ((absf((GM.f_instance_number(158.0)) - 1.0) < 0.00001)):
		(GM.f_sound_play(20.0))
	else:
		(self.script_sound_plays(19.0))
	if ((absf((GM.f_instance_number(158.0)) - 1.0) < 0.00001)):
		for _r15 in range(int((25.0))):
			(GM.f_instance_create((x + (GM.f_random((sprite_width - 7.0)))), (y + (GM.f_random((sprite_height - 7.0)))), 106.0))
	else:
		for _r16 in range(int((50.0))):
			(GM.f_instance_create(((x - 12.0) + (GM.f_random(24.0))), ((y - 12.0) + (GM.f_random(24.0))), 210.0))
		for _r17 in range(int((50.0))):
			(GM.f_instance_create((x + (GM.f_random((sprite_width - 7.0)))), (y + (GM.f_random((sprite_height - 7.0)))), 106.0))
	(GM.f_instance_destroy(self))
func ev_col_235():
	if ((absf((GM.f_instance_number(158.0)) - 1.0) < 0.00001)):
		for _r18 in range(int((25.0))):
			(GM.f_instance_create((x + (GM.f_random((sprite_width - 7.0)))), (y + (GM.f_random((sprite_height - 7.0)))), 106.0))
	else:
		for _r19 in range(int((50.0))):
			(GM.f_instance_create(((x - 12.0) + (GM.f_random(24.0))), ((y - 12.0) + (GM.f_random(24.0))), 210.0))
		for _r20 in range(int((50.0))):
			(GM.f_instance_create((x + (GM.f_random((sprite_width - 7.0)))), (y + (GM.f_random((sprite_height - 7.0)))), 106.0))
func ev_col_0():
	if ((GM.eq(GM.G["yourplayer"], GM.vget(self.other, "v_implayer")) or (absf(GM.G["online"] - 0.0) < 0.00001))):
		if ((absf((GM.f_instance_number(158.0)) - 1.0) < 0.00001)):
			for _r21 in range(int((25.0))):
				(GM.f_instance_create((x + (GM.f_random((sprite_width - 7.0)))), (y + (GM.f_random((sprite_height - 7.0)))), 106.0))
		else:
			for _r22 in range(int((50.0))):
				(GM.f_instance_create(((x - 12.0) + (GM.f_random(24.0))), ((y - 12.0) + (GM.f_random(24.0))), 210.0))
			for _r23 in range(int((50.0))):
				(GM.f_instance_create((x + (GM.f_random((sprite_width - 7.0)))), (y + (GM.f_random((sprite_height - 7.0)))), 106.0))
func ev_mouse_4():
	if ((absf(GM.G["minecheat"] - 1.0) < 0.00001)):
		(GM.f_mplay_message_send_guaranteed(0.0, 603.0, (((GM.f_string((x + 20.0))) + "|") + (GM.f_string((y + 20.0))))))
		for _r24 in range(int((50.0))):
			(GM.f_instance_create(((x - 12.0) + (GM.f_random(24.0))), ((y - 12.0) + (GM.f_random(24.0))), 210.0))
