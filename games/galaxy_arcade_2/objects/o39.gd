extends "res://games/galaxy_arcade_2/scripts.gd"
var v_rdy = 0.0
func ev_create():
	v_rdy = 1.0
func ev_alarm_0():
	v_rdy = 1.0
func ev_step():
	if (((absf(v_rdy - 1.0) < 0.00001))):
		if ((((GM.f_mouse_check_button(1.0))))) >= 0.5:
			if (((GM.score > 19.0))):
				(GM.f_sound_play(30.0))
				v_rdy = 0.0
				alarm[int(0.0)] = 5.0
				GM.score = GM.score + (-20.0)
				(GM.f_instance_create(((x + sprite_xoffset) - 6.0), (y + 1.0), 56.0))
				(GM.f_instance_create(((x + (-sprite_xoffset)) + 3.0), (y + 1.0), 56.0))
	x = GM.mouse_x
	y = 569.0
func ev_col_63():
	(GM.f_sound_play(28.0))
	if (((absf(sprite_index - 78.0) < 0.00001))):
		sprite_index = 77.0
		image_speed = 1.0
	if (((absf(sprite_index - 77.0) < 0.00001))):
		sprite_index = 50.0
		image_speed = 1.0
	for _w79 in GM.with_list((self.other), self):
		if _w79._dead:
			continue
		_w79.other = self
		(GM.f_instance_destroy(_w79))
func ev_col_61():
	(GM.f_sound_play(28.0))
	if (((absf(sprite_index - 77.0) < 0.00001))):
		sprite_index = 78.0
		image_speed = 1.0
	if (((absf(sprite_index - 50.0) < 0.00001))):
		sprite_index = 77.0
		image_speed = 1.0
	for _w80 in GM.with_list((self.other), self):
		if _w80._dead:
			continue
		_w80.other = self
		(GM.f_instance_destroy(_w80))
func ev_col_40():
	(GM.f_sound_play(21.0))
	if ((GM.vb(self.other, "x") < x)):
		GM.vsetb(self.other, "direction", (110.0 + ((80.0 * ((x - GM.vb(self.other, "x")))) / sprite_width)))
	else:
		GM.vsetb(self.other, "direction", (70.0 + ((80.0 * ((x - GM.vb(self.other, "x")))) / sprite_width)))
	if ((GM.vb(self.other, "y") > y)):
		GM.vsetb(self.other, "direction", (360.0 - GM.vb(self.other, "direction")))
