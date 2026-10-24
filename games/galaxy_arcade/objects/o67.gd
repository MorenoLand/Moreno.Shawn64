extends "res://games/galaxy_arcade/scripts.gd"
func ev_step():
	if (((absf((GM.f_instance_number(40.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(51.0)) - 0.0) < 0.00001))):
			await GM.f_show_message("you beat the game!!!")
			(GM.f_room_goto(3.0))
	if (((GM.G["lives"] < 1.0))):
		for _w11 in GM.with_list((44.0), self):
			if _w11._dead:
				continue
			_w11.other = self
			(GM.f_instance_destroy(_w11))
	if (((GM.G["lives2"] < 1.0))):
		for _w12 in GM.with_list((60.0), self):
			if _w12._dead:
				continue
			_w12.other = self
			(GM.f_instance_destroy(_w12))
	if (((absf((GM.f_instance_number(44.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(60.0)) - 0.0) < 0.00001))):
			(GM.f_room_goto(3.0))
func ev_draw():
	(GM.f_action_draw_font("Times New Roman", 16.0, 1.0, 0.0))
	(GM.f_draw_set_color(12632256.0))
	(GM.f_draw_text(340.0, 10.0, ("High Score: " + (GM.f_string(GM.G["asteroidshighscore"])))))
	(GM.f_draw_text(340.0, 50.0, ("Score: " + (GM.f_string(GM.score)))))
	(GM.f_draw_text(50.0, 50.0, ("Lives_p1  " + (GM.f_string(GM.G["lives"])))))
	if (((absf((GM.f_instance_number(60.0)) - 0.0) < 0.00001))):
		(GM.f_draw_text(620.0, 50.0, "push 1 to join"))
	if (((absf((GM.f_instance_number(60.0)) - 1.0) < 0.00001))):
		(GM.f_draw_text(672.0, 50.0, ("Lives_p2  " + (GM.f_string(GM.G["lives2"])))))
