extends "res://games/ski_racer_2/scripts.gd"
var v_rool = 0.0
func ev_create():
	GM.G["hits"] = 5.0
func ev_step():
	(GM.f_instance_create((GM.f_random(1024.0)), (GM.view_yview[0] + (GM.f_random(768.0))), 50.0))
	if (((absf((GM.f_instance_number(23.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(0.0)) - 1.0) < 0.00001))):
			if (((GM.vb(0.0, "speed") > 10.0))):
				if (((absf((GM.f_instance_number(37.0)) - 0.0) < 0.00001))):
					if ((((GM.f_random(16.0)) < 1.0))):
						v_rool = (GM.f_round((GM.f_random(6.0))))
						if ((absf(v_rool - 0.0) < 0.00001)):
							(GM.f_instance_create((GM.f_random((GM.room_width - 80.0))), (GM.view_yview[0] + 768.0), 10.0))
						if ((absf(v_rool - 1.0) < 0.00001)):
							(GM.f_instance_create((GM.f_random((GM.room_width - 80.0))), (GM.view_yview[0] + 768.0), 27.0))
						if ((absf(v_rool - 2.0) < 0.00001)):
							(GM.f_instance_create((GM.f_random((GM.room_width - 80.0))), (GM.view_yview[0] + 768.0), 31.0))
						if ((absf(v_rool - 3.0) < 0.00001)):
							(GM.f_instance_create((GM.f_random((GM.room_width - 80.0))), (GM.view_yview[0] + 768.0), 20.0))
						if ((absf(v_rool - 4.0) < 0.00001)):
							(GM.f_instance_create((GM.f_random((GM.room_width - 80.0))), (GM.view_yview[0] + 768.0), 17.0))
						if ((absf(v_rool - 5.0) < 0.00001)):
							(GM.f_instance_create((GM.f_random((GM.room_width - 80.0))), (GM.view_yview[0] - 80.0), 26.0))
						if ((absf(v_rool - 6.0) < 0.00001)):
							(GM.f_instance_create((GM.f_random((GM.room_width - 117.0))), ((GM.view_yview[0] + 768.0) + 113.0), 6.0))
				if ((((GM.f_random(35.0)) < 1.0))):
					(GM.f_instance_create((GM.f_random((GM.room_width - 106.0))), (GM.view_yview[0] + 768.0), 51.0))
				if ((((GM.f_random(15.0)) < 1.0))):
					v_rool = (GM.f_round((GM.f_random(3.0))))
					if ((absf(v_rool - 1.0) < 0.00001)):
						(GM.f_instance_create((GM.f_random((GM.room_width - 50.0))), (GM.view_yview[0] + 768.0), 32.0))
					if ((absf(v_rool - 2.0) < 0.00001)):
						(GM.f_instance_create((GM.f_random((GM.room_width - 50.0))), (GM.view_yview[0] + 768.0), 33.0))
					if ((absf(v_rool - 3.0) < 0.00001)):
						(GM.f_instance_create((GM.f_random((GM.room_width - 50.0))), (GM.view_yview[0] + 768.0), 34.0))
				if ((((GM.f_random(50.0)) < 1.0))):
					(GM.f_instance_create(0.0, (GM.view_yview[0] + 1024.0), 64.0))
func ev_draw():
	(GM.f_draw_set_color(16777215.0))
	(GM.f_draw_rectangle(((GM.view_xview[0] + 1024.0) - 20.0), (GM.view_yview[0] + 10.0), ((GM.view_xview[0] + 1024.0) - 10.0), ((GM.view_yview[0] + 768.0) - 10.0), (1.0 if not (((0.0)) >= 0.5) else 0.0)))
	if (((absf((GM.f_instance_number(0.0)) - 1.0) < 0.00001))):
		(GM.f_draw_sprite(4.0, (-1.0), (GM.view_xview[0] + 1005.0), ((GM.view_yview[0] + 10.0) + (GM.vb(0.0, "y") / 87.07))))
	if (((absf((GM.f_instance_number(2.0)) - 1.0) < 0.00001))):
		(GM.f_draw_sprite(4.0, (-1.0), (GM.view_xview[0] + 1005.0), ((GM.view_yview[0] + 10.0) + (GM.vb(2.0, "y") / 87.07))))
	(GM.f_action_draw_font("Impact", 36.0, 0.0, 0.0))
	(GM.f_draw_set_color(16711680.0))
	GM.font_align = 1.0
	GM.font_color = 16711680.0
	if ((absf(GM.G["hits"] - 5.0) < 0.00001)):
		(GM.f_draw_text((GM.room_width / 2.0), (GM.view_yview[0] + 50.0), "Health: Great"))
	if ((absf(GM.G["hits"] - 4.0) < 0.00001)):
		(GM.f_draw_text((GM.room_width / 2.0), (GM.view_yview[0] + 50.0), "Health: Good"))
	GM.font_color = (GM.f_make_color(255.0, 128.0, 64.0))
	if ((absf(GM.G["hits"] - 3.0) < 0.00001)):
		(GM.f_draw_text((GM.room_width / 2.0), (GM.view_yview[0] + 50.0), "Health: OK"))
	if ((absf(GM.G["hits"] - 2.0) < 0.00001)):
		(GM.f_draw_text((GM.room_width / 2.0), (GM.view_yview[0] + 50.0), "Health: Poor"))
	GM.font_color = 255.0
	if ((absf(GM.G["hits"] - 1.0) < 0.00001)):
		(GM.f_draw_text((GM.room_width / 2.0), (GM.view_yview[0] + 50.0), "Health: DANGER"))
	GM.font_color = 16711680.0
	(GM.f_draw_text((GM.room_width / 2.0), (GM.view_yview[0] + 100.0), ("Score: " + (GM.f_string(GM.score)))))
func ev_keypress_27():
	(GM.f_game_restart())
