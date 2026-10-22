extends "res://games/ski_racer_2/scripts.gd"
var v_is = 0.0
var v_up = 0.0
func ev_step():
	(GM.f_sound_stop(25.0))
	gravity = 0.0
	GM.G["score2"] = GM.G["score2"] + 3.0
	GM.view_object[int(1.0)] = 68.0
	GM.view_hborder[int(1.0)] = ((512.0 / 2.0) - (sprite_width / 2.0))
	GM.view_vborder[int(1.0)] = ((768.0 / 2.0) - (sprite_height / 2.0))
	if ((v_is < GM.G["maxx2"])):
		if ((absf(v_up - 1.0) < 0.00001)):
			v_is = (v_is * 1.03)
	if ((v_is > GM.G["maxx2"])):
		v_up = 0.0
	if ((absf(v_up - 0.0) < 0.00001)):
		v_is = (v_is / 1.03)
	if ((v_is < 1.0)):
		v_is = 1.0
		GM.view_object[int(1.0)] = 66.0
		(GM.f_sound_stop(26.0))
		(GM.f_instance_change(self, 66.0, 0.0))
	if ((x < 10.0)):
		x = 10.0
		direction = direction + 6.0
	if ((x > ((GM.room_width - sprite_width) - 10.0))):
		x = ((GM.room_width - sprite_width) - 10.0)
		direction = direction - 6.0
func ev_col_55():
	GM.score = GM.score + 1.0
func ev_draw():
	(GM.f_draw_sprite_scaled(7.0, (direction / 5.625), x, y, (1.0 / v_is)))
	if ((GM.G["p2"] == "s64")):
		(GM.f_draw_sprite_scaled(0.0, (direction / 5.625), x, y, v_is))
	if ((GM.G["p2"] == "dex")):
		(GM.f_draw_sprite_scaled(8.0, (direction / 5.625), x, y, v_is))
	if ((GM.G["p2"] == "snow")):
		(GM.f_draw_sprite_scaled(13.0, (direction / 5.625), x, y, v_is))
	if ((GM.G["p2"] == "elf")):
		(GM.f_draw_sprite_scaled(34.0, (direction / 5.625), x, y, v_is))
	if ((GM.G["p2"] == "blink")):
		(GM.f_draw_sprite_scaled(36.0, (direction / 5.625), x, y, v_is))
