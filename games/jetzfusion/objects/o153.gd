extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	(GM.f_action_move(self, "000010000", 0.0, 0.0))
	alarm[int(0.0)] = 15.0
func ev_alarm_0():
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 40.0), ((y + (sprite_height / 2.0)) - 40.0), 13.0))
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 75.0), ((y + (sprite_height / 2.0)) - 75.0), 14.0))
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 150.0), ((y + (sprite_height / 2.0)) - 150.0), 59.0))
	(GM.f_sound_play(23.0))
	(self.script_adddamage())
	(GM.f_sound_play(43.0))
	for _r144 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random((sprite_height - 10.0)))), 33.0))
	for _r145 in range(int((25.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random((sprite_height - 10.0)))), 46.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 137.0))
	(GM.f_instance_destroy(self))
