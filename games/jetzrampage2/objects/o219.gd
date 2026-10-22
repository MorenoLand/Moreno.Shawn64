extends "res://games/jetzrampage2/scripts.gd"
var v_alive = 0.0
var v_boom = 0.0
var v_mypower = 0.0
func ev_create():
	v_mypower = 5.0
	v_alive = 1.0
	alarm[int(0.0)] = 1.0
func ev_alarm_0():
	v_boom = (GM.f_round((GM.f_random(10.0))))
	if ((absf(v_boom - 1.0) < 0.00001)):
		if ((absf(GM.vget(0.0, "v_sign1") - 1.0) < 0.00001)):
			sprite_index = 227.0
			GM.vset(0.0, "v_sign1", 0.0)
		else:
			if ((absf(GM.vget(0.0, "v_sign2") - 1.0) < 0.00001)):
				sprite_index = 220.0
				GM.vset(0.0, "v_sign2", 0.0)
			else:
				if ((absf(GM.vget(0.0, "v_sign3") - 1.0) < 0.00001)):
					sprite_index = 240.0
					GM.vset(0.0, "v_sign3", 0.0)
				else:
					if ((absf(GM.vget(0.0, "v_sign4") - 1.0) < 0.00001)):
						sprite_index = 241.0
						GM.vset(0.0, "v_sign4", 0.0)
					else:
						if ((absf(GM.vget(0.0, "v_sign5") - 1.0) < 0.00001)):
							sprite_index = 244.0
							GM.vset(0.0, "v_sign5", 0.0)
						else:
							if ((absf(GM.vget(0.0, "v_sign6") - 1.0) < 0.00001)):
								sprite_index = 245.0
								GM.vset(0.0, "v_sign6", 0.0)
							else:
								if ((absf(GM.vget(0.0, "v_sign7") - 1.0) < 0.00001)):
									sprite_index = 479.0
									GM.vset(0.0, "v_sign7", 0.0)
								else:
									if ((absf(GM.vget(0.0, "v_sign8") - 1.0) < 0.00001)):
										sprite_index = 484.0
										GM.vset(0.0, "v_sign8", 0.0)
									else:
										if ((absf(GM.vget(0.0, "v_sign9") - 1.0) < 0.00001)):
											sprite_index = 485.0
											GM.vset(0.0, "v_sign9", 0.0)
										else:
											if ((absf(GM.vget(0.0, "v_sign10") - 1.0) < 0.00001)):
												sprite_index = 486.0
												GM.vset(0.0, "v_sign10", 0.0)
	if ((absf(v_boom - 2.0) < 0.00001)):
		if ((absf(GM.vget(0.0, "v_sign2") - 1.0) < 0.00001)):
			sprite_index = 220.0
			GM.vset(0.0, "v_sign2", 0.0)
		else:
			if ((absf(GM.vget(0.0, "v_sign3") - 1.0) < 0.00001)):
				sprite_index = 240.0
				GM.vset(0.0, "v_sign3", 0.0)
			else:
				if ((absf(GM.vget(0.0, "v_sign4") - 1.0) < 0.00001)):
					sprite_index = 241.0
					GM.vset(0.0, "v_sign4", 0.0)
				else:
					if ((absf(GM.vget(0.0, "v_sign5") - 1.0) < 0.00001)):
						sprite_index = 244.0
						GM.vset(0.0, "v_sign5", 0.0)
					else:
						if ((absf(GM.vget(0.0, "v_sign6") - 1.0) < 0.00001)):
							sprite_index = 245.0
							GM.vset(0.0, "v_sign6", 0.0)
						else:
							if ((absf(GM.vget(0.0, "v_sign7") - 1.0) < 0.00001)):
								sprite_index = 479.0
								GM.vset(0.0, "v_sign7", 0.0)
							else:
								if ((absf(GM.vget(0.0, "v_sign8") - 1.0) < 0.00001)):
									sprite_index = 484.0
									GM.vset(0.0, "v_sign8", 0.0)
								else:
									if ((absf(GM.vget(0.0, "v_sign9") - 1.0) < 0.00001)):
										sprite_index = 485.0
										GM.vset(0.0, "v_sign9", 0.0)
									else:
										if ((absf(GM.vget(0.0, "v_sign10") - 1.0) < 0.00001)):
											sprite_index = 486.0
											GM.vset(0.0, "v_sign10", 0.0)
										else:
											if ((absf(GM.vget(0.0, "v_sign1") - 1.0) < 0.00001)):
												sprite_index = 227.0
												GM.vset(0.0, "v_sign1", 0.0)
	if ((absf(v_boom - 3.0) < 0.00001)):
		if ((absf(GM.vget(0.0, "v_sign3") - 1.0) < 0.00001)):
			sprite_index = 240.0
			GM.vset(0.0, "v_sign3", 0.0)
		else:
			if ((absf(GM.vget(0.0, "v_sign4") - 1.0) < 0.00001)):
				sprite_index = 241.0
				GM.vset(0.0, "v_sign4", 0.0)
			else:
				if ((absf(GM.vget(0.0, "v_sign5") - 1.0) < 0.00001)):
					sprite_index = 244.0
					GM.vset(0.0, "v_sign5", 0.0)
				else:
					if ((absf(GM.vget(0.0, "v_sign6") - 1.0) < 0.00001)):
						sprite_index = 245.0
						GM.vset(0.0, "v_sign6", 0.0)
					else:
						if ((absf(GM.vget(0.0, "v_sign7") - 1.0) < 0.00001)):
							sprite_index = 479.0
							GM.vset(0.0, "v_sign7", 0.0)
						else:
							if ((absf(GM.vget(0.0, "v_sign8") - 1.0) < 0.00001)):
								sprite_index = 484.0
								GM.vset(0.0, "v_sign8", 0.0)
							else:
								if ((absf(GM.vget(0.0, "v_sign9") - 1.0) < 0.00001)):
									sprite_index = 485.0
									GM.vset(0.0, "v_sign9", 0.0)
								else:
									if ((absf(GM.vget(0.0, "v_sign10") - 1.0) < 0.00001)):
										sprite_index = 486.0
										GM.vset(0.0, "v_sign10", 0.0)
									else:
										if ((absf(GM.vget(0.0, "v_sign1") - 1.0) < 0.00001)):
											sprite_index = 227.0
											GM.vset(0.0, "v_sign1", 0.0)
										else:
											if ((absf(GM.vget(0.0, "v_sign2") - 1.0) < 0.00001)):
												sprite_index = 220.0
												GM.vset(0.0, "v_sign2", 0.0)
	if ((absf(v_boom - 4.0) < 0.00001)):
		if ((absf(GM.vget(0.0, "v_sign4") - 1.0) < 0.00001)):
			sprite_index = 241.0
			GM.vset(0.0, "v_sign4", 0.0)
		else:
			if ((absf(GM.vget(0.0, "v_sign5") - 1.0) < 0.00001)):
				sprite_index = 244.0
				GM.vset(0.0, "v_sign5", 0.0)
			else:
				if ((absf(GM.vget(0.0, "v_sign6") - 1.0) < 0.00001)):
					sprite_index = 245.0
					GM.vset(0.0, "v_sign6", 0.0)
				else:
					if ((absf(GM.vget(0.0, "v_sign7") - 1.0) < 0.00001)):
						sprite_index = 479.0
						GM.vset(0.0, "v_sign7", 0.0)
					else:
						if ((absf(GM.vget(0.0, "v_sign8") - 1.0) < 0.00001)):
							sprite_index = 484.0
							GM.vset(0.0, "v_sign8", 0.0)
						else:
							if ((absf(GM.vget(0.0, "v_sign9") - 1.0) < 0.00001)):
								sprite_index = 485.0
								GM.vset(0.0, "v_sign9", 0.0)
							else:
								if ((absf(GM.vget(0.0, "v_sign10") - 1.0) < 0.00001)):
									sprite_index = 486.0
									GM.vset(0.0, "v_sign10", 0.0)
								else:
									if ((absf(GM.vget(0.0, "v_sign1") - 1.0) < 0.00001)):
										sprite_index = 227.0
										GM.vset(0.0, "v_sign1", 0.0)
									else:
										if ((absf(GM.vget(0.0, "v_sign2") - 1.0) < 0.00001)):
											sprite_index = 220.0
											GM.vset(0.0, "v_sign2", 0.0)
										else:
											if ((absf(GM.vget(0.0, "v_sign3") - 1.0) < 0.00001)):
												sprite_index = 240.0
												GM.vset(0.0, "v_sign3", 0.0)
	if ((absf(v_boom - 5.0) < 0.00001)):
		if ((absf(GM.vget(0.0, "v_sign5") - 1.0) < 0.00001)):
			sprite_index = 244.0
			GM.vset(0.0, "v_sign5", 0.0)
		else:
			if ((absf(GM.vget(0.0, "v_sign6") - 1.0) < 0.00001)):
				sprite_index = 245.0
				GM.vset(0.0, "v_sign6", 0.0)
			else:
				if ((absf(GM.vget(0.0, "v_sign7") - 1.0) < 0.00001)):
					sprite_index = 479.0
					GM.vset(0.0, "v_sign7", 0.0)
				else:
					if ((absf(GM.vget(0.0, "v_sign8") - 1.0) < 0.00001)):
						sprite_index = 484.0
						GM.vset(0.0, "v_sign8", 0.0)
					else:
						if ((absf(GM.vget(0.0, "v_sign9") - 1.0) < 0.00001)):
							sprite_index = 485.0
							GM.vset(0.0, "v_sign9", 0.0)
						else:
							if ((absf(GM.vget(0.0, "v_sign10") - 1.0) < 0.00001)):
								sprite_index = 486.0
								GM.vset(0.0, "v_sign10", 0.0)
							else:
								if ((absf(GM.vget(0.0, "v_sign1") - 1.0) < 0.00001)):
									sprite_index = 227.0
									GM.vset(0.0, "v_sign1", 0.0)
								else:
									if ((absf(GM.vget(0.0, "v_sign2") - 1.0) < 0.00001)):
										sprite_index = 220.0
										GM.vset(0.0, "v_sign2", 0.0)
									else:
										if ((absf(GM.vget(0.0, "v_sign3") - 1.0) < 0.00001)):
											sprite_index = 240.0
											GM.vset(0.0, "v_sign3", 0.0)
										else:
											if ((absf(GM.vget(0.0, "v_sign4") - 1.0) < 0.00001)):
												sprite_index = 241.0
												GM.vset(0.0, "v_sign4", 0.0)
	if ((absf(v_boom - 6.0) < 0.00001)):
		if ((absf(GM.vget(0.0, "v_sign6") - 1.0) < 0.00001)):
			sprite_index = 245.0
			GM.vset(0.0, "v_sign6", 0.0)
		else:
			if ((absf(GM.vget(0.0, "v_sign7") - 1.0) < 0.00001)):
				sprite_index = 479.0
				GM.vset(0.0, "v_sign7", 0.0)
			else:
				if ((absf(GM.vget(0.0, "v_sign8") - 1.0) < 0.00001)):
					sprite_index = 484.0
					GM.vset(0.0, "v_sign8", 0.0)
				else:
					if ((absf(GM.vget(0.0, "v_sign9") - 1.0) < 0.00001)):
						sprite_index = 485.0
						GM.vset(0.0, "v_sign9", 0.0)
					else:
						if ((absf(GM.vget(0.0, "v_sign10") - 1.0) < 0.00001)):
							sprite_index = 486.0
							GM.vset(0.0, "v_sign10", 0.0)
						else:
							if ((absf(GM.vget(0.0, "v_sign1") - 1.0) < 0.00001)):
								sprite_index = 227.0
								GM.vset(0.0, "v_sign1", 0.0)
							else:
								if ((absf(GM.vget(0.0, "v_sign2") - 1.0) < 0.00001)):
									sprite_index = 220.0
									GM.vset(0.0, "v_sign2", 0.0)
								else:
									if ((absf(GM.vget(0.0, "v_sign3") - 1.0) < 0.00001)):
										sprite_index = 240.0
										GM.vset(0.0, "v_sign3", 0.0)
									else:
										if ((absf(GM.vget(0.0, "v_sign4") - 1.0) < 0.00001)):
											sprite_index = 241.0
											GM.vset(0.0, "v_sign4", 0.0)
										else:
											if ((absf(GM.vget(0.0, "v_sign5") - 1.0) < 0.00001)):
												sprite_index = 244.0
												GM.vset(0.0, "v_sign5", 0.0)
	if ((absf(v_boom - 7.0) < 0.00001)):
		if ((absf(GM.vget(0.0, "v_sign7") - 1.0) < 0.00001)):
			sprite_index = 479.0
			GM.vset(0.0, "v_sign7", 0.0)
		else:
			if ((absf(GM.vget(0.0, "v_sign8") - 1.0) < 0.00001)):
				sprite_index = 484.0
				GM.vset(0.0, "v_sign8", 0.0)
			else:
				if ((absf(GM.vget(0.0, "v_sign9") - 1.0) < 0.00001)):
					sprite_index = 485.0
					GM.vset(0.0, "v_sign9", 0.0)
				else:
					if ((absf(GM.vget(0.0, "v_sign10") - 1.0) < 0.00001)):
						sprite_index = 486.0
						GM.vset(0.0, "v_sign10", 0.0)
					else:
						if ((absf(GM.vget(0.0, "v_sign1") - 1.0) < 0.00001)):
							sprite_index = 227.0
							GM.vset(0.0, "v_sign1", 0.0)
						else:
							if ((absf(GM.vget(0.0, "v_sign2") - 1.0) < 0.00001)):
								sprite_index = 220.0
								GM.vset(0.0, "v_sign2", 0.0)
							else:
								if ((absf(GM.vget(0.0, "v_sign3") - 1.0) < 0.00001)):
									sprite_index = 240.0
									GM.vset(0.0, "v_sign3", 0.0)
								else:
									if ((absf(GM.vget(0.0, "v_sign4") - 1.0) < 0.00001)):
										sprite_index = 241.0
										GM.vset(0.0, "v_sign4", 0.0)
									else:
										if ((absf(GM.vget(0.0, "v_sign5") - 1.0) < 0.00001)):
											sprite_index = 244.0
											GM.vset(0.0, "v_sign5", 0.0)
										else:
											if ((absf(GM.vget(0.0, "v_sign6") - 1.0) < 0.00001)):
												sprite_index = 245.0
												GM.vset(0.0, "v_sign6", 0.0)
	if ((absf(v_boom - 8.0) < 0.00001)):
		if ((absf(GM.vget(0.0, "v_sign8") - 1.0) < 0.00001)):
			sprite_index = 484.0
			GM.vset(0.0, "v_sign8", 0.0)
		else:
			if ((absf(GM.vget(0.0, "v_sign9") - 1.0) < 0.00001)):
				sprite_index = 485.0
				GM.vset(0.0, "v_sign9", 0.0)
			else:
				if ((absf(GM.vget(0.0, "v_sign10") - 1.0) < 0.00001)):
					sprite_index = 486.0
					GM.vset(0.0, "v_sign10", 0.0)
				else:
					if ((absf(GM.vget(0.0, "v_sign1") - 1.0) < 0.00001)):
						sprite_index = 227.0
						GM.vset(0.0, "v_sign1", 0.0)
					else:
						if ((absf(GM.vget(0.0, "v_sign2") - 1.0) < 0.00001)):
							sprite_index = 220.0
							GM.vset(0.0, "v_sign2", 0.0)
						else:
							if ((absf(GM.vget(0.0, "v_sign3") - 1.0) < 0.00001)):
								sprite_index = 240.0
								GM.vset(0.0, "v_sign3", 0.0)
							else:
								if ((absf(GM.vget(0.0, "v_sign4") - 1.0) < 0.00001)):
									sprite_index = 241.0
									GM.vset(0.0, "v_sign4", 0.0)
								else:
									if ((absf(GM.vget(0.0, "v_sign5") - 1.0) < 0.00001)):
										sprite_index = 244.0
										GM.vset(0.0, "v_sign5", 0.0)
									else:
										if ((absf(GM.vget(0.0, "v_sign6") - 1.0) < 0.00001)):
											sprite_index = 245.0
											GM.vset(0.0, "v_sign6", 0.0)
										else:
											if ((absf(GM.vget(0.0, "v_sign7") - 1.0) < 0.00001)):
												sprite_index = 479.0
												GM.vset(0.0, "v_sign7", 0.0)
	if ((absf(v_boom - 9.0) < 0.00001)):
		if ((absf(GM.vget(0.0, "v_sign9") - 1.0) < 0.00001)):
			sprite_index = 485.0
			GM.vset(0.0, "v_sign9", 0.0)
		else:
			if ((absf(GM.vget(0.0, "v_sign10") - 1.0) < 0.00001)):
				sprite_index = 486.0
				GM.vset(0.0, "v_sign10", 0.0)
			else:
				if ((absf(GM.vget(0.0, "v_sign1") - 1.0) < 0.00001)):
					sprite_index = 227.0
					GM.vset(0.0, "v_sign1", 0.0)
				else:
					if ((absf(GM.vget(0.0, "v_sign2") - 1.0) < 0.00001)):
						sprite_index = 220.0
						GM.vset(0.0, "v_sign2", 0.0)
					else:
						if ((absf(GM.vget(0.0, "v_sign3") - 1.0) < 0.00001)):
							sprite_index = 240.0
							GM.vset(0.0, "v_sign3", 0.0)
						else:
							if ((absf(GM.vget(0.0, "v_sign4") - 1.0) < 0.00001)):
								sprite_index = 241.0
								GM.vset(0.0, "v_sign4", 0.0)
							else:
								if ((absf(GM.vget(0.0, "v_sign5") - 1.0) < 0.00001)):
									sprite_index = 244.0
									GM.vset(0.0, "v_sign5", 0.0)
								else:
									if ((absf(GM.vget(0.0, "v_sign6") - 1.0) < 0.00001)):
										sprite_index = 245.0
										GM.vset(0.0, "v_sign6", 0.0)
									else:
										if ((absf(GM.vget(0.0, "v_sign7") - 1.0) < 0.00001)):
											sprite_index = 479.0
											GM.vset(0.0, "v_sign7", 0.0)
										else:
											if ((absf(GM.vget(0.0, "v_sign8") - 1.0) < 0.00001)):
												sprite_index = 484.0
												GM.vset(0.0, "v_sign8", 0.0)
	if ((absf(v_boom - 10.0) < 0.00001)):
		if ((absf(GM.vget(0.0, "v_sign10") - 1.0) < 0.00001)):
			sprite_index = 486.0
			GM.vset(0.0, "v_sign10", 0.0)
		else:
			if ((absf(GM.vget(0.0, "v_sign1") - 1.0) < 0.00001)):
				sprite_index = 227.0
				GM.vset(0.0, "v_sign1", 0.0)
			else:
				if ((absf(GM.vget(0.0, "v_sign2") - 1.0) < 0.00001)):
					sprite_index = 220.0
					GM.vset(0.0, "v_sign2", 0.0)
				else:
					if ((absf(GM.vget(0.0, "v_sign3") - 1.0) < 0.00001)):
						sprite_index = 240.0
						GM.vset(0.0, "v_sign3", 0.0)
					else:
						if ((absf(GM.vget(0.0, "v_sign4") - 1.0) < 0.00001)):
							sprite_index = 241.0
							GM.vset(0.0, "v_sign4", 0.0)
						else:
							if ((absf(GM.vget(0.0, "v_sign5") - 1.0) < 0.00001)):
								sprite_index = 244.0
								GM.vset(0.0, "v_sign5", 0.0)
							else:
								if ((absf(GM.vget(0.0, "v_sign6") - 1.0) < 0.00001)):
									sprite_index = 245.0
									GM.vset(0.0, "v_sign6", 0.0)
								else:
									if ((absf(GM.vget(0.0, "v_sign7") - 1.0) < 0.00001)):
										sprite_index = 479.0
										GM.vset(0.0, "v_sign7", 0.0)
									else:
										if ((absf(GM.vget(0.0, "v_sign8") - 1.0) < 0.00001)):
											sprite_index = 484.0
											GM.vset(0.0, "v_sign8", 0.0)
										else:
											if ((absf(GM.vget(0.0, "v_sign9") - 1.0) < 0.00001)):
												sprite_index = 485.0
												GM.vset(0.0, "v_sign9", 0.0)
func ev_col_108():
	gravity_direction = 270.0
	gravity = 0.3
func ev_col_103():
	if (((absf(v_alive - 1.0) < 0.00001))):
		(self.script_lives_add(0.0, 0.0, 0.0, 0.0, 0.0))
		(GM.f_sound_play(179.0))
		(GM.f_instance_create(((x + (sprite_width / 2.0)) - 40.0), ((y + (sprite_height / 2.0)) - 40.0), 233.0))
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 108.0))
		gravity_direction = 270.0
		gravity = 0.3
		v_alive = 0.0
func ev_col_16():
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 40.0), ((y + (sprite_height / 2.0)) - 40.0), 233.0))
	(GM.f_sound_play(15.0))
	for _r93 in range(int((100.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
	(GM.f_instance_destroy(self))
func ev_col_10():
	v_mypower = v_mypower + (-1.0)
	if (((absf(v_alive - 1.0) < 0.00001))):
		if (((v_mypower < 1.0))):
			(self.script_lives_add(0.0, 0.0, 0.0, 0.0, 0.0))
			(GM.f_sound_play(179.0))
			(GM.f_instance_create(((x + (sprite_width / 2.0)) - 40.0), ((y + (sprite_height / 2.0)) - 40.0), 233.0))
			(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 108.0))
			gravity_direction = 270.0
			gravity = 0.3
			v_alive = 0.0
