extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	timeline_index = 1.0
	timeline_position = 0.0
	timeline_running = 1.0
	timeline_speed = 1.0
	(GM.f_action_move(self, "000000010", 1.5, 0.0))
	(GM.f_sound_play(55.0))
	for _r440 in range(int((100.0))):
		(GM.f_instance_create(0.0, 0.0, 88.0))
func ev_step():
	if (not ((((GM.f_sound_isplaying(55.0)))) >= 0.5)):
		(GM.f_instance_create(0.0, 0.0, 467.0))
		(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_action_draw_font("Arial", 24.0, 1.0, 0.0))
	(GM.f_draw_set_color(255.0))
	(GM.f_draw_text(x, y, "CREATOR:\nShawn Noel\n\nGRAPHIC ARTISTS:\nShawn Noel\nMocha Man\nSkiracer901\n\nMUSIC:\nLinkin Park - Papercut\nLinkin Park - Faint\nLinkin Park - Runaway\nLinkin Park - Somewhere I Belong\n\nSOUNDS:\nShawn Noel\nMocha Man\nStenners\nFindSounds.Com\n\nTOOLS:\nGame Maker by Mark Overmars\n\nSUPPORT (GM USERS):\nMochaMan\nTheman\nFunnyFace\nSte2brill\nCapnChubby\nDsx\nStenners\nSkiracer901\nBballer\nAdam\nPoke the Penguine\nDiagonalmoonn\nBeanjo\nSpawnManiaKul\nSaiyanPrince\nAdashofSiren\nEaglesoft\nSpringymajig\nCookiecooker\nMasterChief\nGrus86\nAVataRR\nMonkeyMan91\nJLabs\nDraylian2003\nBenoitrouleau\nAcidgame\nPhunky Monkey\nZimmy2002\nSegafreak\nPyroguy\nSoRbY 18\nXedas Kbrea\nDarthlupi\nSmiley Inc.\nShortysteammm\nDarkraider1\nCUBEgraphix\nGMLegendary\nPogo708\nSuperelRetardo\nDifficultman3\nH0IX\nSonicFire1980\nMr. Buddy\nJoeylea7\nDFGaming\nCorrozion\nBofrazz\nRustmik2\nTomate\nWee50\nGamerforever\nMasterofthelamp\nScubachef11\nThe Animec\nTherabidwombat\nMesshof\nShinobi Z\nGizmo\nXDarkenX\nSuperDarby\nTorreyG\nScrappersa\nBenjinator\nCrazyclown2\nScam Ent\nDevilslightwaveradio\nSangokyu\nHolsteinCow\nRusty\nMastaswardsman\nNahtanoJ88\nAndrew Lyne\nFactandfiction101\nLamefaker\nThe2wingeddragon\nLoki34622\nRivalForces\nCyan47\nHaloInverse\nCizza\nFGFK\nDreglor\nIcenfire\nThe Stefan\nNeonsoulstealer\nCaseyrafn\nAnathemaRaptor\nGameHampe\nTarika\nR1ck14\nAND THE REST OF THE GAME MAKER PEOPLE!\n\nShawn64s Creations 2003\n####"))
func ev_keypress_27():
	(GM.f_sound_stop_all())
	(GM.f_room_goto(1.0))
