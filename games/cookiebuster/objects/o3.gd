extends "res://games/cookiebuster/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 1000.0
func ev_alarm_0():
	GM.lives = GM.lives + (-1.0)
	(GM.f_sound_stop(0.0))
	(GM.f_sound_play(3.0))
	if (((absf(GM.lives - 0.0) < 0.00001))):
		GM.G["levely"] = 1.0
		GM.score = 0.0
		GM.lives = 5.0
		(GM.f_room_goto(4.0))
	for _w2 in GM.with_list((0.0), self):
		if _w2._dead:
			continue
		_w2.other = self
		(GM.f_instance_create(0.0, 0.0, 22.0))
	gravity_direction = 270.0
	gravity = 0.2
	for _w3 in GM.with_list((23.0), self):
		if _w3._dead:
			continue
		_w3.other = self
		(GM.f_instance_change(_w3, 23.0, 0.0))
func ev_draw():
	(GM.f_action_draw_font("Westminster", 20.0, 1.0, 0.0))
	(GM.f_draw_set_color(12632256.0))
	(GM.f_draw_text(((GM.room_width / 2.0) - 50.0), 10.0, ("TIME: " + (GM.f_string((alarm[int(0.0)] / 30.0))))))
