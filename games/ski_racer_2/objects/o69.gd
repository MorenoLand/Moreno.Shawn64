extends "res://games/ski_racer_2/scripts.gd"
var v_blinker = 0.0
var v_is = 0.0
var v_right = 0.0
var v_showme = 0.0
var v_speedy = 0.0
var v_thing1 = 0.0
func ev_create():
	for _w24 in GM.with_list((69.0), self):
		if _w24._dead:
			continue
		_w24.other = self
		(GM.f_action_move(_w24, "010000000", GM.vb(66.0, "vspeed"), 0.0))
	(GM.f_sound_loop(27.0))
	v_right = 0.0
	v_speedy = 5.0
	if ((GM.G["p2"] == "s64")):
		sprite_index = 0.0
	if ((GM.G["p2"] == "dex")):
		sprite_index = 8.0
	if ((GM.G["p2"] == "snow")):
		sprite_index = 13.0
	if ((GM.G["p2"] == "elf")):
		sprite_index = 34.0
	if ((GM.G["p2"] == "blink")):
		sprite_index = 36.0
	image_single = (GM.vb(66.0, "direction") / 5.625)
	v_thing1 = y
	gravity_direction = 270.0
	gravity = 0.3
func ev_step():
	if (not ((((GM.f_place_meeting(self, x, y, 16.0)))) >= 0.5)):
		(GM.f_sound_stop(27.0))
		gravity_direction = 270.0
		gravity = 0.0
		GM.G["score2"] = GM.G["score2"] + (GM.f_round((((y - v_thing1)) / 2.0)))
		v_is = 1.0
		v_speedy = 0.0
		v_showme = 1.0
		gravity = 0.5
		v_blinker = 0.0
		GM.view_object[int(1.0)] = 66.0
		(GM.f_instance_change(self, 66.0, 0.0))
	for _r25 in range(int((5.0))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 49.0))
	if ((speed > 20.0)):
		speed = 20.0
func ev_col_47():
	x = GM.vb(self.other, "x")
