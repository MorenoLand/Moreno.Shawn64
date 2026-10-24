extends "res://games/galaxy_arcade_2/scripts.gd"
var v_butty = 0.0
var v_go = 0.0
var v_poop = 0.0
var v_sound = 0.0
var v_wow = 0.0
func ev_create():
	y = y + 1.0
	(GM.f_sound_play(338.0))
	v_wow = GM.vb(1116.0, "direction")
	v_poop = (GM.vb(1116.0, "direction") / 10.0)
	v_go = 0.0
	v_sound = 1.0
	v_butty = 0.0
	(GM.f_motion_set(self, (GM.vb(1116.0, "direction") - 90.0), 5.0))
	(GM.f_motion_add(self, (direction - 270.0), (GM.vb(1116.0, "speed") / 2.0)))
	alarm[int(0.0)] = 10.0
func ev_destroy():
	(GM.f_sound_stop(339.0))
func ev_alarm_0():
	v_go = 1.0
	v_butty = 1.0
func ev_step():
	if (((absf(v_go - 1.0) < 0.00001))):
		if (((speed < 45.0))):
			(GM.f_motion_add(self, v_wow, 0.5))
			for _r150 in range(int((5.0))):
				(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 1171.0))
	if (((absf(v_sound - 1.0) < 0.00001))):
		if ((((GM.f_distance_to_object(self, 1116.0)) > 500.0))):
			(GM.f_sound_stop(339.0))
			v_sound = 0.0
		else:
			if (((absf(v_butty - 1.0) < 0.00001))):
				if (not ((((GM.f_sound_isplaying(339.0)))) >= 0.5)):
					(GM.f_sound_loop(339.0))
func ev_col_1187():
	(GM.f_instance_create((x + (-40.0)), (y + (-40.0)), 1185.0))
	(GM.f_sound_stop(339.0))
	(GM.f_instance_destroy(self))
func ev_col_1186():
	(GM.f_sound_play(341.0))
	(GM.f_instance_create((x + (-40.0)), (y + (-40.0)), 1185.0))
	(GM.f_sound_stop(339.0))
	(GM.f_instance_destroy(self))
func ev_col_1183():
	(GM.f_sound_play(341.0))
	for _r151 in range(int((25.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 1181.0))
	(GM.f_instance_create((x + (-40.0)), (y + (-40.0)), 1185.0))
	(GM.f_sound_stop(339.0))
	(GM.f_instance_destroy(self))
func ev_col_1175():
	(GM.f_instance_create((x + (-40.0)), (y + (-40.0)), 1185.0))
	(GM.f_sound_stop(339.0))
	(GM.f_instance_destroy(self))
func ev_col_1137():
	(GM.f_sound_play(341.0))
	for _r152 in range(int((25.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 1181.0))
	(GM.f_instance_create((x + (-40.0)), (y + (-40.0)), 1185.0))
	(GM.f_sound_stop(339.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_sound_stop(339.0))
	(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_draw_sprite(1155.0, v_poop, (x + 0.0), (y + 0.0)))
