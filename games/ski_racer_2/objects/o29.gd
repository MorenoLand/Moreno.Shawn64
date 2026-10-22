extends "res://games/ski_racer_2/scripts.gd"
var v_is = 0.0
var v_rool = 0.0
var v_view_top = 0.0
func ev_create():
	v_is = 1.0
	v_rool = (GM.f_round((GM.f_random(3.0))))
	if ((absf(v_rool - 0.0) < 0.00001)):
		sprite_index = 2.0
	if ((absf(v_rool - 1.0) < 0.00001)):
		sprite_index = 10.0
	if ((absf(v_rool - 2.0) < 0.00001)):
		sprite_index = 33.0
	if ((absf(v_rool - 3.0) < 0.00001)):
		sprite_index = 35.0
	(GM.f_sound_play(5.0))
	(GM.f_action_move(self, "010000000", 25.0, 0.0))
func ev_step():
	(GM.f_instance_create((x + (GM.f_random((sprite_width - 10.0)))), (y + (GM.f_random((sprite_height - 10.0)))), 16.0))
	if (((absf(GM.room - 3.0) < 0.00001))):
		if ((GM.aget(v_view_top, 0.0) > GM.aget(v_view_top, 1.0))):
			if ((y > GM.add(GM.aget(v_view_top, 0.0), 768.0))):
				(GM.f_instance_destroy(self))
		if ((GM.aget(v_view_top, 1.0) > GM.aget(v_view_top, 0.0))):
			if ((y > GM.add(GM.aget(v_view_top, 1.0), 768.0))):
				(GM.f_instance_destroy(self))
	else:
		if (((y > (GM.view_yview[0] + 768.0)))):
			(GM.f_instance_destroy(self))
	if ((v_is > 1.0)):
		if not ((((GM.f_place_meeting(self, x, y, 6.0)))) >= 0.5):
			v_is = (v_is / 1.02)
	if ((v_is < 1.01)):
		v_is = 1.0
func ev_col_27():
	v_is = (v_is * 1.02)
func ev_col_6():
	v_is = (v_is * 1.02)
func ev_other_7():
	(GM.f_sound_play(1.0))
func ev_draw():
	if ((absf(v_rool - 0.0) < 0.00001)):
		(GM.f_draw_sprite_scaled(2.0, (-1.0), x, y, v_is))
	if ((absf(v_rool - 1.0) < 0.00001)):
		(GM.f_draw_sprite_scaled(10.0, (-1.0), x, y, v_is))
	if ((absf(v_rool - 2.0) < 0.00001)):
		(GM.f_draw_sprite_scaled(33.0, (-1.0), x, y, v_is))
	if ((absf(v_rool - 3.0) < 0.00001)):
		(GM.f_draw_sprite_scaled(35.0, (-1.0), x, y, v_is))
