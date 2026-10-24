extends "res://games/galaxy_arcade/scripts.gd"
func ev_col_115():
	if (((GM.G["sky"] > GM.G["skyhighscore"]))):
		GM.G["skyhighscore"] = GM.G["sky"]
	(GM.f_sound_stop(9.0))
	(GM.f_sound_play(13.0))
	if (((GM.score < 500.0))):
		await GM.f_show_message("RANK: pathetic")
		(GM.f_room_goto(3.0))
	if (((GM.score < 1000.0))):
		if (((GM.score > 499.0))):
			await GM.f_show_message("RANK: there is none for a loozer like you")
			(GM.f_room_goto(3.0))
	if (((GM.score < 1500.0))):
		if (((GM.score > 999.0))):
			await GM.f_show_message("RANK: grandma")
			(GM.f_room_goto(3.0))
	if (((GM.score < 2000.0))):
		if (((GM.score > 1499.0))):
			await GM.f_show_message("Failing")
			(GM.f_room_goto(3.0))
	if (((GM.score < 2500.0))):
		if (((GM.score > 1999.0))):
			await GM.f_show_message("below average")
			(GM.f_room_goto(3.0))
	if (((GM.score < 3000.0))):
		if (((GM.score > 2499.0))):
			await GM.f_show_message("RANK: Intermediate")
			(GM.f_room_goto(3.0))
	if (((GM.score < 3500.0))):
		if (((GM.score > 2999.0))):
			await GM.f_show_message("RANK: Exellent")
			(GM.f_room_goto(3.0))
	if (((GM.score < 4000.0))):
		if (((GM.score > 3499.0))):
			await GM.f_show_message("RANK: pro")
			(GM.f_room_goto(3.0))
	if (((GM.score > 4000.0))):
		await GM.f_show_message("RANK: master")
		(GM.f_room_goto(3.0))
func ev_key_39():
	(GM.f_action_move(self, "000001000", 6.0, 0.0))
func ev_key_38():
	(GM.f_action_move(self, "000010000", 0.0, 0.0))
func ev_key_37():
	(GM.f_action_move(self, "000100000", 6.0, 0.0))
