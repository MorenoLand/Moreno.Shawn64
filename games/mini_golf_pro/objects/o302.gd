extends "res://games/mini_golf_pro/scripts.gd"
var v_textstring = ""
func ev_create():
	if (GM.eq(GM.G["levelset"], 4.0)):
		if ((absf(GM.room - 29.0) < 0.00001)):
			v_textstring = "Play all 3 courses together for an overall score!  Prove you're a real pro!"
	else:
		if ((absf(GM.room - 58.0) < 0.00001)):
			v_textstring = "Can you make it to the top of the Gravity Tower?  Try for a high score!"
		if ((absf(GM.room - 53.0) < 0.00001)):
			v_textstring = "Try to hit other people into the holes!  If you fall in yourself you lose!"
		if ((absf(GM.room - 54.0) < 0.00001)):
			v_textstring = "Make it through the mines and obstacles with as little strokes as possible!"
		if ((absf(GM.room - 29.0) < 0.00001)):
			v_textstring = "Dream Land is a beginner course full of surprises.  Tune up your skills!"
		if ((absf(GM.room - 19.0) < 0.00001)):
			v_textstring = "Fun Land is full of fun and original obstacles.  Use them to your advantage!"
		if ((absf(GM.room - 36.0) < 0.00001)):
			v_textstring = "Moonlight Mania is a very technical course!  Plan your shots wisely!"
		if ((absf(GM.room - 60.0) < 0.00001)):
			v_textstring = "A wall of invisible mines is holding you back from the hole!  Can you handle it?"
		if ((absf(GM.room - 61.0) < 0.00001)):
			v_textstring = "This is pure Madness!  Break the balls apart and let the fireworks begin!"
func ev_alarm_1():
	(GM.f_sound_play(25.0))
	(GM.f_instance_create(0.0, 0.0, 266.0))
	GM.G["shoot"] = 0.0
	(GM.f_instance_destroy(self))
func ev_mouse_53():
	alarm[int(1.0)] = 1.0
func ev_draw():
	(GM.f_draw_set_alpha(0.8))
	(GM.f_draw_set_color(0.0))
	(GM.f_draw_rectangle(0.0, 0.0, GM.room_width, GM.room_height, 0.0))
	(GM.f_draw_set_alpha(1.0))
	(GM.f_draw_set_color((GM.f_make_color_rgb(96.0, 96.0, 96.0))))
	(GM.f_draw_set_font(5.0))
	(GM.f_draw_set_halign(1.0))
	(GM.f_draw_text_ext((GM.view_xview[0] + 512.0), (GM.view_yview[0] + 270.0), v_textstring, (-1.0), 850.0))
	(GM.f_draw_set_font(1.0))
	(GM.f_draw_text((GM.view_xview[0] + 512.0), (GM.view_yview[0] + 685.0), "Click to Continue!"))
