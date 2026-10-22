extends "res://games/jetzfusion/scripts.gd"
var v_dienow = 0.0
var v_dis = 0.0
var v_hdir = 0.0
var v_maxh = 0.0
var v_maxv = 0.0
var v_mypower = 0.0
var v_vdir = 0.0
var v_weapon = 0.0
func ev_create():
	(GM.f_action_move(self, "010000000", 6.0, 0.0))
	alarm[int(0.0)] = 1.0
	v_hdir = 0.0
	v_vdir = 0.0
	v_maxh = 0.0
	v_maxv = 0.0
	v_dis = (GM.f_random(300.0))
	v_mypower = 100.0
	v_dienow = 0.0
	v_weapon = 1.0
	(GM.f_sound_loop(25.0))
func ev_step():
	(GM.f_motion_add(self, 0.0, 0.3))
	if (((x > (GM.view_xview[0] + 800.0)))):
		(GM.f_sound_stop(26.0))
		(GM.f_instance_create(200.0, (-40.0), 262.0))
		(GM.f_instance_destroy(self))
	for _r352 in range(int((7.0))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 18.0))
func ev_other_1():
	(self.script_outsidestayin(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_draw():
	if (((absf(v_weapon - 1.0) < 0.00001))):
		if (((hspeed > 0.0))):
			(GM.f_draw_sprite(243.0, (hspeed / 0.5), (x + 0.0), (y + 0.0)))
			(GM.f_draw_sprite(22.0, (-1.0), (x + 25.0), (y + 20.0)))
		else:
			(GM.f_draw_sprite(244.0, ((-hspeed) / 0.5), (x + 0.0), (y + 0.0)))
			(GM.f_draw_sprite(23.0, (-1.0), (x + (-3.0)), (y + 20.0)))
	if (((absf(v_weapon - 2.0) < 0.00001))):
		if (((hspeed > 0.0))):
			(GM.f_draw_sprite(243.0, (hspeed / 0.5), (x + 0.0), (y + 0.0)))
			(GM.f_draw_sprite(19.0, (-1.0), (x + 25.0), (y + 20.0)))
		else:
			(GM.f_draw_sprite(244.0, ((-hspeed) / 0.5), (x + 0.0), (y + 0.0)))
			(GM.f_draw_sprite(20.0, (-1.0), (x + (-3.0)), (y + 20.0)))
