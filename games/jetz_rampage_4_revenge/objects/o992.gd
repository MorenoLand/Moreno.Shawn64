extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_draw():
	(GM.f_action_draw_font("Times New Roman", 24.0, 1.0, 0.0))
	(GM.f_draw_set_color(255.0))
	GM.font_align = 1.0
	(GM.f_draw_text_ext((GM.view_xview[0] + 400.0), (GM.view_yview[0] + 15.0), "Content Warning -", (-1.0), 700.0))
	(GM.f_draw_text_ext((GM.view_xview[0] + 400.0), (GM.view_yview[0] + 65.0), "Contains intense violence, strong language, animated blood and gore, drug references, sexual themes, and mild nudity.", (-1.0), 700.0))
	(GM.f_draw_text_ext((GM.view_xview[0] + 400.0), (GM.view_yview[0] + 200.0), "Seizure Warning - ", (-1.0), 700.0))
	(GM.f_draw_text_ext((GM.view_xview[0] + 400.0), (GM.view_yview[0] + 250.0), "A very small percentage of people may experience a seizure when exposed to certain visual images, including flashing lights or patterns that may appear in video games.  Immediately stop playing and consult a doctor if you experience any strange symptoms.", (-1.0), 700.0))
	(GM.f_draw_text_ext((GM.view_xview[0] + 400.0), (GM.view_yview[0] + 500.0), "Copyright ©2000-2004 Shawn64's Creations. All rights reserved.", (-1.0), 700.0))
