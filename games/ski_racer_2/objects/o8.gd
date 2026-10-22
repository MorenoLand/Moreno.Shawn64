extends "res://games/ski_racer_2/scripts.gd"
var v_is = 0.0
var v_up = 0.0
func ev_step():
	(GM.f_sound_stop(6.0))
	(GM.f_sound_stop(2.0))
	gravity = 0.0
	GM.score = GM.score + 3.0
	GM.view_object[0] = 8.0
	if ((absf(GM.room - 3.0) < 0.00001)):
		GM.view_hborder[int(1.0)] = ((512.0 / 2.0) - (sprite_width / 2.0))
	else:
		GM.view_hborder[0] = ((1024.0 / 2.0) - (sprite_width / 2.0))
	GM.view_vborder[0] = ((768.0 / 2.0) - (sprite_height / 2.0))
	if ((v_is < GM.G["maxx"])):
		if ((absf(v_up - 1.0) < 0.00001)):
			v_is = (v_is * 1.03)
	if ((v_is > GM.G["maxx"])):
		v_up = 0.0
	if ((absf(v_up - 0.0) < 0.00001)):
		v_is = (v_is / 1.03)
	if ((v_is < 1.0)):
		v_is = 1.0
		GM.view_object[0] = 0.0
		(GM.f_sound_loop(6.0))
		(GM.f_sound_stop(3.0))
		(GM.f_instance_change(self, 0.0, 0.0))
	if ((x < 10.0)):
		x = 10.0
		direction = direction + 6.0
	if ((x > ((GM.room_width - sprite_width) - 10.0))):
		x = ((GM.room_width - sprite_width) - 10.0)
		direction = direction - 6.0
func ev_col_55():
	GM.score = GM.score + 1.0
func ev_col_39():
	for _w8 in GM.with_list((37.0), self):
		if _w8._dead:
			continue
		_w8.other = self
		(GM.f_instance_destroy(_w8))
func ev_col_38():
	if (((absf((GM.f_instance_number(37.0)) - 0.0) < 0.00001))):
		(GM.f_instance_create(0.0, 0.0, 37.0))
func ev_draw():
	(GM.f_draw_sprite_scaled(7.0, (direction / 5.625), x, y, (1.0 / v_is)))
	if ((GM.G["p1"] == "s64")):
		(GM.f_draw_sprite_scaled(0.0, (direction / 5.625), x, y, v_is))
	if ((GM.G["p1"] == "dex")):
		(GM.f_draw_sprite_scaled(8.0, (direction / 5.625), x, y, v_is))
	if ((GM.G["p1"] == "snow")):
		(GM.f_draw_sprite_scaled(13.0, (direction / 5.625), x, y, v_is))
	if ((GM.G["p1"] == "elf")):
		(GM.f_draw_sprite_scaled(34.0, (direction / 5.625), x, y, v_is))
	if ((GM.G["p1"] == "blink")):
		(GM.f_draw_sprite_scaled(36.0, (direction / 5.625), x, y, v_is))
