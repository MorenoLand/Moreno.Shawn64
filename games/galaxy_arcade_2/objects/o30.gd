extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_step():
	(self.script_script_hover(0.0, 0.0, 0.0, 0.0, 0.0))
	x = (592.0 + GM.view_xview[int(0.0)])
	y = (528.0 + GM.view_yview[int(0.0)])
func ev_mouse_4():
	(GM.f_mplay_session_end())
	(GM.f_sound_stop(345.0))
	(GM.f_sound_stop(359.0))
	(GM.f_sound_stop(358.0))
	(GM.f_sound_stop(347.0))
	(GM.f_sound_stop(336.0))
	(GM.f_sound_stop(335.0))
	(GM.f_sound_stop(348.0))
	(GM.f_sound_stop(339.0))
	(GM.f_sound_stop(133.0))
	(GM.f_sound_play(15.0))
	(GM.f_sound_stop(127.0))
	(GM.f_room_goto(1.0))
func ev_mouse_2():
	(GM.f_room_goto(82.0))
func ev_other_2():
	GM.G["srhigh"] = 0.0
	GM.G["sbhigh"] = 0.0
	GM.G["sdhigh"] = 0.0
	GM.G["crashhigh"] = 0.0
	GM.G["roidshigh"] = 0.0
	GM.G["pachigh"] = 0.0
	GM.G["zzhigh"] = 0.0
	GM.G["pphigh"] = 0.0
	GM.G["snows"] = 0.0
