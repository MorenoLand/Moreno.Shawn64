extends "res://games/thrust/scripts.gd"
func ev_create():
	(GM.f_action_move(self, "000000010", 5.0, 0.0))
	x = (GM.room_width / 2.0)
	(GM.f_sound_play(24.0))
	alarm[int(0.0)] = 1130.0
func ev_alarm_0():
	(GM.f_sound_play(7.0))
	(GM.f_sound_stop(24.0))
	(GM.f_room_goto(11.0))
func ev_draw():
	(GM.f_action_draw_font("Impact", 28.0, 0.0, 0.0))
	(GM.f_draw_set_color(16777215.0))
	GM.font_align = 1.0
	(GM.f_draw_text(x, y, "PROGRAMMER:\nShawn Noel\n\nGRAPHIC ARTIST:\nShawn Noel\n\nTOOLS:\nGame Maker by Mark Overmars\n\nSOUNDS:\nShawn Noel\nRe-volt - Acclaim\nfindsounds.com\n\n\nMUSIC:\nAlien 3 - NES\n\nSUPPORT (GM USERS):\n\nScream681\nMesshof\nDarthlupi\nTapeworm\nMochaman\nStenners\nJass Interactive\nTDGC\nS-Chuck\nVideon\nAce104\nKama\nCassey Rafn\nBBaller\nBabrook\nHalo CMDR\nBoosted32\nUnstable\nFlickmaster123\nGamer3D\nComputer Cop\nShadow382\nSkaterdensetsu\nSreghog\nRaider Raid\nTommeiv\nJake\nBen Briggs\nAgnusdei\nAntoxa\nCoolguy\nImakegames99\n\nTHANKS FOR PLAYING!\n\nShawn64s Creations 2003/2004"))
func ev_keypress_13():
	(GM.f_sound_play(7.0))
	(GM.f_sound_stop(24.0))
	(GM.f_room_goto(11.0))
