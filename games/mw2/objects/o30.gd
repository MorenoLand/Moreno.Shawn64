extends "res://games/mw2/scripts.gd"
func ev_destroy():
	(GM.f_mplay_message_send(0.0, 10.0, 0.0))
	(GM.f_sound_play(27.0))
	if (((GM.G["cool"] > 0.0))):
		if (((absf((GM.f_instance_number(92.0)) - 0.0) < 0.00001))):
			GM.G["cool"] = GM.G["cool"] + (-1.0)
func ev_step():
	if ((((GM.f_place_free(self, (x + 0.0), (y + 4.0)))))) >= 0.5:
		(GM.f_action_move(self, "010000000", 4.0, 0.0))
	else:
		(GM.f_action_move(self, "000010000", 0.0, 0.0))
	if (((absf(GM.G["doom"] - 1.0) < 0.00001))):
		(GM.f_sound_play(8.0))
		(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
		(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
		(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
		(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
		(GM.f_instance_destroy(self))
func ev_col_182():
	(GM.f_sound_play(46.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 181.0))
	(GM.f_instance_destroy(self))
func ev_col_180():
	(GM.f_sound_play(46.0))
	alarm[int(0.0)] = 150.0
	(GM.f_instance_change(self, 181.0, 0.0))
func ev_col_109():
	(GM.f_sound_play(8.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_destroy(self))
func ev_col_84():
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_destroy(self))
func ev_col_76():
	(GM.f_sound_play(8.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_destroy(self))
func ev_col_64():
	(GM.f_sound_play(8.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_destroy(self))
func ev_col_63():
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_destroy(self))
func ev_col_62():
	(GM.f_instance_create((x + (-40.0)), (y + (-40.0)), 76.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_destroy(self))
func ev_col_47():
	(GM.f_instance_change(self, 54.0, 0.0))
func ev_col_42():
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_destroy(self))
func ev_col_34():
	(GM.f_sound_play(8.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_destroy(self))
func ev_col_32():
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_destroy(self))
func ev_col_29():
	(GM.f_sound_play(8.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_destroy(self))
func ev_col_28():
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_destroy(self))
func ev_col_27():
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_destroy(self))
func ev_col_26():
	(GM.f_sound_play(8.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_destroy(self))
func ev_col_25():
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_destroy(self))
func ev_col_24():
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_destroy(self))
func ev_col_19():
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_destroy(self))
func ev_col_18():
	(GM.f_sound_play(8.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_destroy(self))
func ev_col_12():
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
	(GM.f_instance_destroy(self))
