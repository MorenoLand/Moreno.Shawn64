extends "res://games/gm_hoops/scripts.gd"
func ev_step():
	x = (GM.mouse_x - 7.0)
	y = GM.mouse_y
	if ((((GM.f_mouse_check_button(1.0))))) >= 0.5:
		sprite_index = 16.0
		image_speed = 1.0
	else:
		sprite_index = 15.0
		image_speed = 1.0
