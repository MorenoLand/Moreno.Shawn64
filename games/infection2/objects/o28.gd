extends "res://games/infection2/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 20.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	for _w6 in GM.with_list((0.0), self):
		if _w6._dead:
			continue
		_w6.other = self
		if ((GM.mouse_x > (GM.vb(0.0, "x") + (GM.vb(0.0, "sprite_width") / 2.0)))):
			GM.vset(_w6, "v_weez", ((GM.f_point_direction((_w6.x + (_w6.sprite_width / 2.0)), (_w6.y + (_w6.sprite_height / 2.0)), GM.mouse_x, (GM.mouse_y + 25.0))) + GM.vget(_w6, "v_reload")))
			GM.vset(_w6, "v_poo", (GM.f_instance_create(((_w6.x + 32.0) + (GM.f_lengthdir_x(30.0, GM.vget(_w6, "v_weez")))), (((_w6.y + 36.0) + GM.vget(_w6, "v_yyy2")) + (GM.f_lengthdir_y(30.0, GM.vget(_w6, "v_weez")))), 27.0)))
		else:
			GM.vset(_w6, "v_weez", ((GM.f_point_direction((_w6.x + (_w6.sprite_width / 2.0)), (_w6.y + (_w6.sprite_height / 2.0)), GM.mouse_x, (GM.mouse_y + 25.0))) - GM.vget(_w6, "v_reload")))
			GM.vset(_w6, "v_poo", (GM.f_instance_create(((_w6.x + 26.0) + (GM.f_lengthdir_x(30.0, GM.vget(_w6, "v_weez")))), (((_w6.y + 36.0) + GM.vget(_w6, "v_yyy2")) + (GM.f_lengthdir_y(30.0, GM.vget(_w6, "v_weez")))), 27.0)))
		GM.vsetb(GM.vget(_w6, "v_poo"), "direction", ((GM.vget(_w6, "v_weez") - 5.0) + (GM.f_random(10.0))))
		GM.vsetb(GM.vget(_w6, "v_poo"), "speed", (GM.f_random(3.0)))
		GM.vsetb(28.0, "x", GM.view_xview[0])
		GM.vsetb(28.0, "y", GM.view_yview[0])
