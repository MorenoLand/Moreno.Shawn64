extends "res://games/bubblegum/scripts.gd"
var v_good = 0.0
func ev_create():
	v_good = 0.0
func ev_step():
	if ((((GM.f_random(15.0)) < 1.0))):
		(GM.f_instance_create((GM.f_random(640.0)), 0.0, 116.0))
	if (((v_good > 24.0))):
		(GM.f_action_kill_position(608.0, 416.0))
		for _w74 in GM.with_list((111.0), self):
			if _w74._dead:
				continue
			_w74.other = self
			(GM.f_instance_create((_w74.x + 0.0), (_w74.y + 0.0), 117.0))
		for _w75 in GM.with_list((111.0), self):
			if _w75._dead:
				continue
			_w75.other = self
			(GM.f_instance_destroy(_w75))
func ev_draw():
	(GM.f_action_draw_font("Times New Roman", 0.0, 0.0, 0.0))
	(GM.f_draw_set_color(0.0))
	(GM.f_draw_text(280.0, 5.0, (GM.f_string(((GM.f_string(v_good)) + "/25")))))
