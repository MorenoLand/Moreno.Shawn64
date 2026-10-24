extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_boobs = 0.0
var v_centerx = 0.0
var v_centery = 0.0
var v_i = 0.0
var v_j = 0.0
var v_pen_color = 0.0
var v_wee = 0.0
func ev_draw():
	if ((((GM.f_keyboard_check(16.0))) >= 0.5 and (absf(GM.vget(7.0, "v_movenow") - 1.0) < 0.00001))):
		v_pen_color = (GM.f_make_color(68.0, 68.0, 68.0))
		v_centerx = (GM.view_xview[int(0.0)] + (GM.view_wview[int(0.0)] / 2.0))
		v_centery = (GM.view_yview[int(0.0)] + (GM.view_hview[int(0.0)] / 2.0))
		(GM.f_draw_sprite(465.0, 0.0, v_centerx, v_centery))
		v_i = 0.0
		while (v_i < 3.0):
			v_j = 0.0
			while (v_j < 6.0):
				if (absf((((v_j - v_i)) + ((7.0 * v_i))) - GM.vget(7.0, "v_select")) < 0.00001):
					v_boobs = 1.0
				else:
					v_boobs = 0.0
				(GM.f_draw_sprite(593.0, v_boobs, ((v_centerx - 145.0) + ((v_j * 48.0))), ((v_centery - 33.0) + ((v_i * 46.0)))))
				v_wee = 0.0
				if ((((absf(v_j - 2.0) < 0.00001) and (absf(v_i - 0.0) < 0.00001)) and (absf(GM.G["j4var1"] - 0.0) < 0.00001))):
					v_wee = 1.0
				else:
					if ((((absf(v_j - 3.0) < 0.00001) and (absf(v_i - 0.0) < 0.00001)) and (absf(GM.G["j4var2"] - 0.0) < 0.00001))):
						v_wee = 1.0
					else:
						if ((((absf(v_j - 4.0) < 0.00001) and (absf(v_i - 0.0) < 0.00001)) and (absf(GM.G["j4var3"] - 0.0) < 0.00001))):
							v_wee = 1.0
						else:
							if ((((absf(v_j - 5.0) < 0.00001) and (absf(v_i - 0.0) < 0.00001)) and (absf(GM.G["j4var4"] - 0.0) < 0.00001))):
								v_wee = 1.0
							else:
								if ((((absf(v_j - 0.0) < 0.00001) and (absf(v_i - 1.0) < 0.00001)) and (absf(GM.G["j4var5"] - 0.0) < 0.00001))):
									v_wee = 1.0
								else:
									if ((((absf(v_j - 1.0) < 0.00001) and (absf(v_i - 1.0) < 0.00001)) and (absf(GM.G["j4var6"] - 0.0) < 0.00001))):
										v_wee = 1.0
									else:
										if ((((absf(v_j - 2.0) < 0.00001) and (absf(v_i - 1.0) < 0.00001)) and (absf(GM.G["j4var7"] - 0.0) < 0.00001))):
											v_wee = 1.0
										else:
											if ((((absf(v_j - 3.0) < 0.00001) and (absf(v_i - 1.0) < 0.00001)) and (absf(GM.G["j4var8"] - 0.0) < 0.00001))):
												v_wee = 1.0
											else:
												if ((((absf(v_j - 4.0) < 0.00001) and (absf(v_i - 1.0) < 0.00001)) and (absf(GM.G["j4var9"] - 0.0) < 0.00001))):
													v_wee = 1.0
												else:
													if ((((absf(v_j - 5.0) < 0.00001) and (absf(v_i - 1.0) < 0.00001)) and (absf(GM.G["j4var10"] - 0.0) < 0.00001))):
														v_wee = 1.0
													else:
														if ((((absf(v_j - 0.0) < 0.00001) and (absf(v_i - 2.0) < 0.00001)) and (absf(GM.G["j4var17"] - 0.0) < 0.00001))):
															v_wee = 1.0
														else:
															if ((((absf(v_j - 1.0) < 0.00001) and (absf(v_i - 2.0) < 0.00001)) and (absf(GM.G["j4var18"] - 0.0) < 0.00001))):
																v_wee = 1.0
															else:
																if ((((absf(v_j - 2.0) < 0.00001) and (absf(v_i - 2.0) < 0.00001)) and (absf(GM.G["j4var19"] - 0.0) < 0.00001))):
																	v_wee = 1.0
																else:
																	if ((((absf(v_j - 3.0) < 0.00001) and (absf(v_i - 2.0) < 0.00001)) and (absf(GM.G["j4var20"] - 0.0) < 0.00001))):
																		v_wee = 1.0
																	else:
																		if ((((absf(v_j - 4.0) < 0.00001) and (absf(v_i - 2.0) < 0.00001)) and (absf(GM.G["j4var21"] - 0.0) < 0.00001))):
																			v_wee = 1.0
																		else:
																			if ((((absf(v_j - 5.0) < 0.00001) and (absf(v_i - 2.0) < 0.00001)) and (absf(GM.G["j4var22"] - 0.0) < 0.00001))):
																				v_wee = 1.0
				if (GM.eq(v_wee, 1.0)):
					(GM.f_draw_sprite(466.0, 18.0, ((v_centerx - 145.0) + ((v_j * 48.0))), ((v_centery - 33.0) + ((v_i * 46.0)))))
				else:
					(GM.f_draw_sprite(466.0, (((v_j - v_i)) + ((7.0 * v_i))), ((v_centerx - 145.0) + ((v_j * 48.0))), ((v_centery - 33.0) + ((v_i * 46.0)))))
				v_j = v_j + 1.0
			v_i = v_i + 1.0
func ev_keyrelease_16():
	(GM.f_instance_destroy(self))
