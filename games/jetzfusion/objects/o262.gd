extends "res://games/jetzfusion/objects/o7.gd"
func ev_create():
	(GM.f_sound_play(20.0))
	(GM.f_sound_loop(25.0))
	(GM.f_action_move(self, "010000000", 10.0, 0.0))
	hspeed = 0.1
	v_start = 1.0
	v_guyright2 = 1.0
	v_guyleft2 = 1.0
	v_weapon = 1.0
	v_weaponready = 1.0
	GM.view_hborder[0] = (400.0 - (sprite_width / 2.0))
	GM.view_vborder[0] = (300.0 - (sprite_height / 2.0))
	v_chargeup = 0.0
	GM.G["grenades"] = 20.0
	v_evil = 0.0
	(GM.f_motion_add(self, 90.0, 5.0))
	v_nohelmet = 0.0
	v_mode = 0.0
	v_malfo = 0.0
	friction = 0.1
