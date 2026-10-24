extends "res://games/gm_hoops/scripts.gd"
func ev_draw():
	(GM.f_draw_sprite(14.0, (-1.0), 10.0, 10.0))
	(GM.f_action_draw_font("Courier", 10.0, 0.0, 0.0))
	(GM.f_draw_set_color(16777215.0))
	(GM.f_draw_text(15.0, 60.0, ("HS: " + (GM.f_string((GM.f_highscore_value(1.0)))))))
	if (((absf((GM.f_instance_number(29.0)) - 0.0) < 0.00001))):
		(GM.f_draw_text(15.0, 20.0, "Time: 60.00"))
		(GM.f_draw_text(15.0, 40.0, "Score: 0"))
	else:
		(GM.f_draw_text(15.0, 20.0, ("Time: " + (GM.f_string((GM.vb(29.0, "alarm")[int(0.0)] / GM.room_speed))))))
		(GM.f_draw_text(15.0, 40.0, ("Score: " + (GM.f_string(GM.score)))))
