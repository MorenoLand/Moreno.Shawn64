extends "res://games/street_bike_fury/scripts.gd"
var v_imagego = 0.0
var v_imageon = 0.0
var v_imagescroll = 0.0
var v_scroll = 0.0
func ev_create():
	v_scroll = 0.0
	v_imageon = (-1.0)
	v_imagescroll = (-300.0)
	v_imagego = 0.0
	alarm[int(0.0)] = 800.0
func ev_alarm_0():
	if ((v_imageon < 2.0)):
		v_imagescroll = (-300.0)
		v_imagego = 1.0
		v_imageon = v_imageon + 1.0
		alarm[int(0.0)] = 800.0
func ev_step():
	x = GM.view_xview[0]
	y = GM.view_yview[0]
	v_scroll = v_scroll + 1.0
	if ((absf(v_imagego - 1.0) < 0.00001)):
		v_imagescroll = v_imagescroll + 2.0
func ev_draw():
	(GM.f_draw_sprite_ext(214.0, v_imageon, (GM.view_xview[0] + v_imagescroll), (GM.view_yview[0] + 180.0), 1.0, 1.0, 0.0, 16777215.0, 0.5))
	(GM.f_texture_set_interpolation(1.0))
	(GM.f_draw_set_halign(0.0))
	(GM.f_draw_set_font(0.0))
	(GM.f_draw_set_color(16777215.0))
	(GM.f_draw_text((GM.view_xview[0] + 8.0), (GM.view_yview[0] + 127.0), "Press ESC to Return"))
	(GM.f_draw_set_halign(1.0))
	(GM.f_draw_set_font(4.0))
	(GM.f_draw_set_color(16711680.0))
	(GM.f_draw_text((GM.view_xview[0] + (GM.view_wview[0] / 2.0)), ((GM.view_yview[0] + GM.view_hview[0]) - v_scroll), "--CREDITS--\n\n\n\n--CREATOR--\nShawn Noel:\nGraphics - Programming - Design\n\n\n\n--PROGRAMMING SUPPORT--\nBrandon Rohrer:\nLevel Generation Programming\n\n\n\n--VOICE ACTING--\nShawn Noel - Max Nitro\nDave Perritte - Enemy\nAaron Brimm - Drug Dealer\n\n\n\n--MUSIC--\nStaind - Me\nDysfunction, April 13, 1999\nProducer: Jordan Schur, Fred Durst\n\nStaind - Take It\nBreak the Cycle, May 22, 2001\nProducer: Jordan Schur, Josh Abraham\n\nStaind - For You\nBreak the Cycle, May 22, 2001\nProducer: Jordan Schur, Josh Abraham\n\n\n\n--PROGRAMMING TOOLS--\nMark Overmars\n\n\n\n--TESTING TEAM--\nJorge Hernandez\nBrandon Rohrer\nDave Perritte\n\n\n\n--ADDITIONAL SUPPORT--\nS64Games Community Members\nGameMaker Community Members\nShangri-La Staff (Graal Online)\n\n\n\nI never meant to fade away..\n\n\n\nS64 Games 2005"))
	(GM.f_texture_set_interpolation(0.0))
	(GM.f_draw_sprite(211.0, 0.0, GM.view_xview[0], GM.view_yview[0]))
	(GM.f_draw_sprite(212.0, 0.0, GM.view_xview[0], ((GM.view_yview[0] + GM.view_hview[0]) - 32.0)))
	(GM.f_draw_set_halign(0.0))
func ev_keypress_78():
	if (((GM.f_keyboard_check(38.0)))) >= 0.5:
		(GM.f_registry_write_real("omlet_newbike", 999.0))
func ev_keypress_27():
	(GM.f_instance_create(x, y, 127.0))
	(GM.f_instance_create(x, y, 128.0))
	(GM.f_instance_create(x, y, 131.0))
	(GM.f_instance_create(x, y, 132.0))
	(GM.f_instance_create(x, y, 296.0))
	(GM.f_sound_play(16.0))
	(GM.f_instance_destroy(self))
