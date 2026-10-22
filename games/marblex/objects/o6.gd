extends "res://games/marblex/scripts.gd"
func ev_other_7():
	if (((GM.lives < 1.0))):
		GM.score = GM.score + GM.lives
		(GM.f_room_goto(4.0))
	alarm[int(0.0)] = alarm[int(0.0)] + 25.0
	(GM.f_instance_change(self, 9.0, 0.0))
