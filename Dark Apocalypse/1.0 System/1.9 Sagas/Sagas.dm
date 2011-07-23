var
	saga_spaced 			= 0
	//--General Saga Vars---

	sagas_on 				= 0
	sagas_evil				= 0
	sagas_good				= 0
	sagas_stopped 			= 0
	saga 					= "Not On"
	part					= "Not On"
	saga_difficulty			= "Easy"
	location				= "Not On"

	//--Evil Sagas---

	//-Saiyan Saga-
	raditz_saga 			= 0
	raditz_saga_on			= 0
	vegeta_saga 			= 0
	vegeta_saga_on			= 0


	//-Namek Saga-
	ginyu_saga 				= 0
	ginyu_saga_on			= 0
	frieza_saga 			= 0
	frieza_saga_on			= 0
	frieza2_saga_on			= 0
	frieza3_saga_on			= 0
	frieza4_saga_on			= 0
	frieza5_saga_on			= 0

	//-Earth Saga-
	android_saga 			= 0
	android_saga_on			= 0
	android2_saga_on		= 0
	android3_saga_on		= 0
	cell_saga				= 0
	cell_saga_on			= 0
	cell2_saga_on			= 0
	cell3_saga_on			= 0
	majin_saga 				= 0
	majin_saga_on			= 0
	majin2_saga_on			= 0
	majin3_saga_on			= 0
	majin4_saga_on			= 0
	majin5_saga_on			= 0
	majin6_saga_on			= 0
	super_17_saga			= 0
	super_17_saga_on		= 0
	bebi_saga				= 0
	bebi_saga_on			= 0
	bebi2_saga_on			= 0
	bebi3_saga_on			= 0
	dragon_saga				= 0
	omega_shenron_saga_on	= 0
	//--Good Sagas---

	//-Saiyan Saga-
	goku_piccolo_saga		= 0
	goku_piccolo_saga_on	= 0
	z_force_saga			= 0
	z_force_saga_on			= 0
	z_force_saga2_on		= 0

	//-Namek Saga-
	z_force_2_saga			= 0
	z_force_2_saga_on		= 0
	z_force_saga2			= 0
	z_force2_2_saga			= 0
	z_force2_2_saga_on		= 0
	super_piccolo_saga		= 0
	super_piccolo_saga_on	= 0
	super_goku_saga			= 0
	super_goku_saga_on		= 0
	ssj_goku_saga			= 0
	ssj_goku_saga2			= 0
	ssj_goku_saga2_on		= 0

	//-Earth Saga-
	trunks_saga				= 0
	trunks_saga_on			= 0

	ssj_goku_2_saga			= 0
	ssj_goku_2_saga_on		= 0
	ssj_vegeta_saga			= 0
	ssj_vegeta_saga_on		= 0

	super_piccolo_2_saga 	= 0
	super_piccolo_2_saga_on = 0

	ascended_vegeta_saga 	= 0
	ascended_vegeta_saga_on	= 0
	ascended_trunks_saga 	= 0
	ascended_trunks_saga_on	= 0
	z_fighters_3_saga	 	= 0
	z_fighters_3_saga_on 	= 0
	ssj_2_gohan				= 0
	ssj_2_gohan_on			= 0

	ssj_2_gohan_2_saga		= 0
	ssj_2_gohan_2_saga_on	= 0
	ssj_2_goku_saga			= 0
	ssj_2_goku_saga_on		= 0
	gotenks_saga			= 0
	gotenks_saga_on			= 0
	mystic_gohan_saga		= 0
	mystic_gohan_saga_on	= 0
	vegito_saga				= 0
	vegito_saga_on			= 0
	goku_vegeta_kais_saga	= 0
	goku_vegeta_kais_saga_on	= 0

	//-Earth GT Saga-

	kid_goku_ssj3_saga		= 0
	kid_goku_ssj3_saga_on	= 0
	goku_ssj4_saga			= 0
	goku_ssj4_saga_on			= 0
	vegeta_ssj4_saga		= 0
	vegeta_ssj4_saga_on		= 0
	gogeta_ssj4_saga		= 0
	gogeta_ssj4_saga_on		= 0


proc
	SAGA_DIFFICULTY()
		if(saga_difficulty == "Medium")
			for(var/mob/Saga/M in world)
				M.powerlevel *= 2.5
				M.ki *= 2.5
				M.strength *= 2.5
				M.defence *= 2.5
				M.powerlevel_max *= 2.5
				M.ki_max *= 2.5
				M.strength_max *= 2.5
				M.defence_max *= 2.5
				M.zenni *= 2.5
				M.exp *= 2.5
				M.tnl *= 2.5
		if(saga_difficulty == "Hard")
			for(var/mob/Saga/M in world)
				M.powerlevel *= 5
				M.ki *= 5
				M.strength *= 5
				M.defence *= 5
				M.powerlevel_max *= 5
				M.ki_max *= 5
				M.strength_max *= 5
				M.defence_max *= 5
				M.zenni *= 5
				M.exp *= 3.5
				M.tnl *= 3.5
		if(saga_difficulty == "Extreme")
			for(var/mob/Saga/M in world)
				M.powerlevel *= 6.5
				M.ki *= 6.5
				M.strength *= 6.5
				M.defence *= 5
				M.powerlevel_max *= 6.5
				M.ki_max *= 6.5
				M.strength_max *= 6.5
				M.defence_max *= 6.5
				M.zenni *= 7.5
				M.exp *= 5
				M.tnl *= 5
	SAGA_CHECK()
		set background = 1

		if(!sagas_stopped && !sagas_on && !sagas_evil && !sagas_good)
			sagas_on = 1
			sagas_evil = 1

		if(sagas_on && sagas_evil)
			if(!raditz_saga && !raditz_saga_on)
				world << "<font color = lime>Saga Information:</font> Sagas have been Activated!"
				world << "<font color = lime>Saga Information:</font> Saiyan Saga: Part I - A New Power!"
				saga = "Saiyan"
				part = "Raditz"
				location = "Earth"
				raditz_saga_on = 1
				sagas_on = 1
				spawn() status_change()
				var/Raditz = /mob/Saga/Raditz
				new Raditz(locate(65,230,1))
				SAGA_DIFFICULTY()

			if(!vegeta_saga && raditz_saga && !vegeta_saga_on)
				world << "<font color = lime>Saga Information:</font> Raditz has been Defeated! Pfft..."
				world << "<font color = lime>Saga Information:</font> Saiyan Saga: Part II - Saiyan Invasion!"
				saga = "Saiyan"
				part = "Vegeta and Nappa"
				location = "Earth"
				vegeta_saga_on = 1
				spawn() status_change()
				var/Vegeta = /mob/Saga/Evil_Vegeta
				new Vegeta(locate(23,122,1))
				var/Nappa = /mob/Saga/Nappa
				new Nappa(locate(27,122,1))
				SAGA_DIFFICULTY()

			if(!ginyu_saga && vegeta_saga >= 2 && !ginyu_saga_on)
				world << "<font color = lime>Saga Information:</font> Nappa and Vegeta have been Defeated! Come on!"
				world << "<font color = lime>Saga Information:</font> Frieza Saga: Part I - The Ginyu Force!"
				saga = "Frieza"
				part = "Ginyu Force"
				location = "Namek"
				ginyu_saga_on = 1
				spawn() status_change()
				var/Jeice = /mob/Saga/Jeice
				new Jeice(locate(214,210,2))
				var/Burter = /mob/Saga/Burter
				new Burter(locate(215,210,2))
				var/Recoom = /mob/Saga/Recoom
				new Recoom(locate(213,210,2))
				var/Guldo = /mob/Saga/Guldo
				new Guldo(locate(214,211,2))
				var/Ginyu = /mob/Saga/Captain_Ginyu
				new Ginyu(locate(162,144,2))
				SAGA_DIFFICULTY()

			if(!frieza_saga && ginyu_saga >= 5 && !frieza_saga_on)
				world << "<font color = lime>Saga Information:</font> The Ginyu Force has been Defeated! Still not impressed"
				world << "<font color = lime>Saga Information:</font> Frieza Saga: Part II - Lord Frieza's Awakening!"
				saga = "Frieza"
				part = "Frieza Form I"
				location = "Namek"
				frieza_saga_on = 1
				spawn() status_change()
				for(var/mob/NPC/Frieza/M in world)
					del(M)

				var/Frieza = /mob/Saga/Frieza_1
				new Frieza(locate(111,235,2))
				SAGA_DIFFICULTY()

			if(frieza_saga && !frieza2_saga_on)
				world << "<font color = lime>Saga Information:</font> Form I Frieza has been Defeated! Not Bad... "
				world << "<font color = lime>Saga Information:</font> Frieza Saga: Part III - Frieza's New Form!"
				saga = "Frieza"
				part = "Frieza Form II"
				location = "Namek"
				frieza2_saga_on = 1
				spawn() status_change()
				var/Frieza2 = /mob/Saga/Frieza_2
				new Frieza2(locate(111,235,2))
				SAGA_DIFFICULTY()

			if(frieza_saga >= 2 && !frieza3_saga_on)
				world << "<font color = lime>Saga Information:</font> Form II Frieza has been Defeated! You're pretty good."
				world << "<font color = lime>Saga Information:</font> Frieza Saga: Part IV - Frieza's Unstoppable Power!"
				saga = "Frieza"
				part = "Frieza Form III"
				location = "Namek"
				frieza3_saga_on = 1
				spawn() status_change()
				var/Frieza3 = /mob/Saga/Frieza_3
				new Frieza3(locate(111,235,2))
				SAGA_DIFFICULTY()

			if(frieza_saga >= 3 && !frieza4_saga_on)
				world << "<font color = lime>Saga Information:</font> Form III Frieza has been Defeated! Whoa...!"
				world << "<font color = lime>Saga Information:</font> Frieza Saga: Part V - Another Form!?"
				saga = "Frieza"
				part = "Frieza Form IV"
				location = "Namek"
				frieza4_saga_on = 1
				spawn() status_change()
				var/Frieza4 = /mob/Saga/Frieza_4
				new Frieza4(locate(111,235,2))
				SAGA_DIFFICULTY()

			if(frieza_saga >= 4 && !frieza5_saga_on)
				world << "<font color = lime>Saga Information:</font> Form IV Frieza has been Defeated! o_o"
				world << "<font color = lime>Saga Information:</font> Frieza Saga: Part VI - 100% Power!"
				saga = "Frieza"
				part = "Frieza 100% Power"
				location = "Namek"
				frieza5_saga_on = 1
				spawn() status_change()
				var/Frieza4 = /mob/Saga/Frieza_4_100
				new Frieza4(locate(111,235,2))
				SAGA_DIFFICULTY()

			if(!android_saga && frieza_saga >= 5 && !android_saga_on)
				world << "<font color = lime>Saga Information:</font> Form IV 100% Frieza has been Defeated! WOW!"
				world << "<font color = lime>Saga Information:</font> Android Saga: Part I - Frieza's Revenge!"
				saga = "Android"
				part = "Cyborg Frieza"
				location = "Earth"
				android_saga_on = 1
				spawn() status_change()
				var/Cyborg_Frieza = /mob/Saga/Metal_Frieza
				new Cyborg_Frieza(locate(170,180,1))
				var/King_Cold = /mob/Saga/King_Cold
				new King_Cold(locate(171,180,1))
				SAGA_DIFFICULTY()

			if(android_saga >= 2 && !android2_saga_on)
				world << "<font color = lime>Saga Information:</font> Cyborg Frieza and King Cold have been Defeated! You're damn strong!"
				world << "<font color = lime>Saga Information:</font> Android Saga: Part II - The Doctors new Creation!"
				saga = "Android"
				part = "Android 19 and 20"
				location = "Earth"
				android2_saga_on = 1
				spawn() status_change()
				for(var/mob/NPC/Dr_Gero/D in world)
					del(D)

				var/Android_19 = /mob/Saga/Android_19
				new Android_19(locate(200,56,1))
				var/Dr_Gero = /mob/Saga/Dr_Gero
				new Dr_Gero(locate(201,56,1))
				SAGA_DIFFICULTY()

			if(android_saga >= 4 && !android3_saga_on)
				world << "<font color = lime>Saga Information:</font> Android 19 and Dr Gero have been Defeated! I can't believe this!"
				world << "<font color = lime>Saga Information:</font> Android Saga: Part III - The Deadly Trio!"
				saga = "Android"
				part = "Android 16, 17 and 18"
				location = "Earth"
				android3_saga_on = 1
				spawn() status_change()
				var/Android_16 = /mob/Saga/Android_16
				new Android_16(locate(100,190,1))
				var/Android_17 = /mob/Saga/Android_17
				new Android_17(locate(101,190,1))
				var/Android_18 = /mob/Saga/Android_18
				new Android_18(locate(102,190,1))
				SAGA_DIFFICULTY()

			if(!cell_saga && android_saga >= 7 && !cell_saga_on)
				world << "<font color = lime>Saga Information:</font> Android 16, 17 and 18 have been Defeated! You own!"
				world << "<font color = lime>Saga Information:</font> Cell Saga: Part I - Super Warrior!"
				saga = "Cell"
				part = "Cell Form I"
				location = "Earth"
				cell_saga_on = 1
				spawn() status_change()
				var/Cell = /mob/Saga/Cell_1
				new Cell(locate(205,200,1))
				SAGA_DIFFICULTY()

			if(cell_saga && !cell2_saga_on)
				world << "<font color = lime>Saga Information:</font> Form I Cell has been Defeated! Keep going!"
				world << "<font color = lime>Saga Information:</font> Cell Saga: Part II - Cell's new Form!"
				saga = "Cell"
				part = "Imperfect Cell"
				location = "Earth"
				cell2_saga_on = 1
				spawn() status_change()
				var/Imperfect_Cell = /mob/Saga/Cell_2
				new Imperfect_Cell(locate(205,200,1))
				SAGA_DIFFICULTY()

			if(cell_saga >= 2 && !cell3_saga_on)
				world << "<font color = lime>Saga Information:</font> Imperfect Cell has been Defeated! O_O!!!"
				world << "<font color = lime>Saga Information:</font> Cell Saga: Part III - Perfection!"
				saga = "Cell"
				part = "Perfect Cell"
				location = "Earth"
				cell3_saga_on = 1
				spawn() status_change()
				var/Perfect_Cell = /mob/Saga/Cell_3
				new Perfect_Cell(locate(40,37,1))
				SAGA_DIFFICULTY()

			if(!majin_saga && cell_saga >= 3 && !majin_saga_on)
				world << "<font color = lime>Saga Information:</font> Perfect Cell has been Defeated! You've proved me wrong!"
				world << "<font color = lime>Saga Information:</font> Buu Saga: Part I - Might of the Demon Lord!"
				saga = "Buu"
				part = "Babidi and Dabura"
				location = "Earth"
				majin_saga_on = 1
				spawn() status_change()
				var/Dabura = /mob/Saga/Dabura
				new Dabura(locate(30,112,1))
				var/Babidi = /mob/Saga/Babidi
				new Babidi(locate(31,112,1))
				SAGA_DIFFICULTY()

			if(majin_saga >= 2 && !majin2_saga_on)
				world << "<font color = lime>Saga Information:</font> Dabura and Babidi have been Defeated! Un-freakin-believable."
				world << "<font color = lime>Saga Information:</font> Buu Saga: Part II - Majin Buu Unleashed!"
				saga = "Buu"
				part = "Fat Buu"
				location = "Earth"
				majin2_saga_on = 1
				spawn() status_change()
				var/Fat_Buu = /mob/Saga/Fat_Buu
				new Fat_Buu(locate(40,115,1))
				SAGA_DIFFICULTY()

			if(majin_saga >= 3 && !majin3_saga_on)
				world << "<font color = lime>Saga Information:</font> Majin Buu has been Defeated! Untouchable..."
				world << "<font color = lime>Saga Information:</font> Buu Saga: Part III - A New Buu?!"
				saga = "Buu"
				part = "Skinny Buu"
				location = "Earth"
				majin3_saga_on = 1
				spawn() status_change()
				var/Skinny_Buu = /mob/Saga/Skinny_Buu
				new Skinny_Buu(locate(28,134,1))
				SAGA_DIFFICULTY()

			if(majin_saga >= 4 && !majin4_saga_on)
				world << "<font color = lime>Saga Information:</font> Skinny Buu has been Defeated! You're a god among men..."
				world << "<font color = lime>Saga Information:</font> Buu Saga: Part IV - Buu's Rampage!"
				saga = "Buu"
				part = "Super Buu"
				location = "Dende"
				majin4_saga_on = 1
				spawn() status_change()
				var/Super_Buu = /mob/Saga/Super_Buu
				new Super_Buu(locate(233,240,3))
				SAGA_DIFFICULTY()

			if(majin_saga >= 5 && !majin5_saga_on)
				world << "<font color = lime>Saga Information:</font> Super Buu has been Defeated! You're badass!"
				world << "<font color = lime>Saga Information:</font> Buu Saga: Part V - Kid Form!"
				saga = "Buu"
				part = "Kid Buu"
				location = "Supreme Kai"
				majin5_saga_on = 1
				spawn() status_change()
				var/Kid_Buu = /mob/Saga/Kid_Buu
				new Kid_Buu(locate(131,156,3))
				SAGA_DIFFICULTY()

			if(majin_saga >= 6 && !majin6_saga_on)
				world << "<font color = lime>Saga Information:</font> Kid Buu has been Defeated! You did it! You saved the earth!"
				world << "<font color = lime>Saga Information:</font> Evil Saga's Complete!"
				saga = "Not On"
				part = "Not On"
				location = "Not On"
				majin6_saga_on = 1
				spawn() status_change()
				sagas_on = 0
				sagas_evil = 0
				sleep(3000)
				sagas_on = 1
				sagas_good = 1
				sagas_evil = 0
				sleep(30)
				SAGA_CHECK_2()

		sleep(300)
		SAGA_CHECK()

	SAGA_CHECK_2()
		set background = 1
		if(sagas_on && sagas_good && !sagas_stopped)
			if(!goku_piccolo_saga && !goku_piccolo_saga_on)
				world << "<font color = lime>Saga Information:</font> Sagas have been Activated! You don't have a chance."
				world << "<font color = lime>Saga Information:</font> Saiyan Saga: Part I - A New Alliance!"
				saga = "Saiyan"
				part = "Goku and Piccolo"
				location = "Earth"
				sagas_on = 1
				goku_piccolo_saga_on = 1
				spawn() status_change()
				var/Goku = /mob/Saga/Goku
				new Goku(locate(65,228,1))
				var/Piccolo = /mob/Saga/Piccolo
				new Piccolo(locate(64,228,1))
				SAGA_DIFFICULTY()

			if(!z_force_saga && goku_piccolo_saga >= 2 && !z_force_saga_on)
				world << "<font color = lime>Saga Information:</font> Goku and Piccolo have been Defeated! Pfft..."
				world << "<font color = lime>Saga Information:</font> Saiyan Saga: Part II - The Z Force!"
				saga = "Saiyan"
				part = "The Z Force"
				location = "Earth"
				z_force_saga_on = 1
				spawn() status_change()
				var/Piccolo = /mob/Saga/Piccolo_2
				new Piccolo(locate(192,183,1))
				var/Gohan = /mob/Saga/Gohan
				new Gohan(locate(193,183,1))
				var/Tien = /mob/Saga/Tien
				new Tien(locate(193,184,1))
				var/Yamcha = /mob/Saga/Yamcha
				new Yamcha(locate(191,182,1))
				var/Krillin = /mob/Saga/Krillin
				new Krillin(locate(192,181,1))
				var/Choutzu = /mob/Saga/Choutzu
				new Choutzu(locate(191,183,1))
				SAGA_DIFFICULTY()

			if(z_force_saga >= 6 && !z_force_saga2_on)
				world << "<font color = lime>Saga Information:</font> The Z Force has been Defeated! Come on."
				world << "<font color = lime>Saga Information:</font> Saiyan Saga: Part III - Goku's Arrival!"
				saga = "Saiyan"
				part = "Goku"
				location = "Earth"
				z_force_saga2_on = 1
				spawn() status_change()
				var/Goku = /mob/Saga/Goku_2
				new Goku(locate(27,123,1))
				SAGA_DIFFICULTY()

			if(!z_force_2_saga && z_force_saga >= 7 && !z_force_2_saga_on)
				world << "<font color = lime>Saga Information:</font> Goku has been Defeated! Still not impressed"
				world << "<font color = lime>Saga Information:</font> Namek Saga: Part I - Hunt for the Dragonballs! "
				saga = "Namek"
				part = "The Z Force"
				location = "Namek"
				z_force_2_saga_on = 1
				spawn() status_change()
				var/Gohan = /mob/Saga/Gohan_2
				new Gohan(locate(24,138,2))
				var/Krillin = /mob/Saga/Krillin_2
				new Krillin(locate(25,138,2))
				var/Vegeta = /mob/Saga/Vegeta_2
				new Vegeta(locate(160,37,2))
				SAGA_DIFFICULTY()

			if(z_force_2_saga >= 3 && !z_force2_2_saga_on)
				world << "<font color = lime>Saga Information:</font> The Z Force has been Defeated! Not bad"
				world << "<font color = lime>Saga Information:</font> Namek Saga: Part II - The Renewed Goku!"
				saga = "Namek"
				part = "Goku"
				location = "Namek"
				z_force2_2_saga_on = 1
				spawn() status_change()
				var/Goku = /mob/Saga/Goku_3
				new Goku(locate(130,102,2))
				SAGA_DIFFICULTY()

			if(!super_piccolo_saga && z_force_2_saga >= 4 && !super_piccolo_saga_on)
				world << "<font color = lime>Saga Information:</font> Goku has been Defeated! You're pretty good"
				world << "<font color = lime>Saga Information:</font> Frieza Saga: Part III - Super Piccolo!"
				saga = "Namek"
				part = "Super Piccolo"
				location = "Namek"
				super_piccolo_saga_on = 1
				spawn() status_change()
				var/Goku = /mob/Saga/Piccolo_3
				new Goku(locate(64,208,2))
				SAGA_DIFFICULTY()

			if(!super_goku_saga && super_piccolo_saga && !super_goku_saga_on)
				world << "<font color = lime>Saga Information:</font> Piccolo has been Defeated! Whoa..."
				world << "<font color = lime>Saga Information:</font> Namek Saga: Part IV - Unstopable Goku!"
				saga = "Namek"
				part = "Goku"
				location = "Namek"
				super_goku_saga_on = 1
				spawn() status_change()
				var/Goku = /mob/Saga/Goku_4
				new Goku(locate(220,205,2))
				SAGA_DIFFICULTY()

			if(super_goku_saga && super_goku_saga_on && !saga_spaced)
				world << "<font color = lime>Saga Information:</font> Goku has been Defeated! o_o"
				world << "<font color = lime>Saga Information:</font> Namek Saga: Part V - Super Saiyan Goku!?"
				saga = "Namek"
				part = "Super Saiyan Goku"
				location = "Namek"
				saga_spaced = 1
				spawn() status_change()
				var/Goku = /mob/Saga/Goku_5
				new Goku(locate(120,93,2))
				SAGA_DIFFICULTY()

			if(!trunks_saga && super_goku_saga >= 2 && !trunks_saga_on)
				world << "<font color = lime>Saga Information:</font> Super Saiyan Goku has been Defeated! WOW!"
				world << "<font color = lime>Saga Information:</font> Android Saga: Part I - Mysterious Youth!"
				saga = "Android"
				part = "Trunks"
				location = "Earth"
				trunks_saga_on = 1
				spawn() status_change()
				var/Trunks = /mob/Saga/Trunks
				new Trunks(locate(41,124,1))
				SAGA_DIFFICULTY()

			if(!ssj_goku_2_saga && trunks_saga && !ssj_goku_2_saga_on)
				world << "<font color = lime>Saga Information:</font> Trunks has been Defeated! You're damn strong!"
				world << "<font color = lime>Saga Information:</font> Android Saga: Part II - A Weakend Saiyan!"
				saga = "Android"
				part = "Super Saiyan Goku"
				location = "Earth"
				ssj_goku_2_saga_on = 1
				spawn() status_change()
				var/Goku = /mob/Saga/Goku_6
				new Goku(locate(71,199,1))
				SAGA_DIFFICULTY()

			if(!ssj_vegeta_saga && ssj_goku_2_saga && !ssj_vegeta_saga_on)
				world << "<font color = lime>Saga Information:</font> Super Saiyan Goku has been Defeated I can't believe this!"
				world << "<font color = lime>Saga Information:</font> Android Saga: Part II - The Super Saiyan Prince!"
				saga = "Android"
				part = "Super Saiyan Vegeta"
				location = "Earth"
				ssj_vegeta_saga_on = 1
				spawn() status_change()
				var/Vegeta = /mob/Saga/Vegeta_3
				new Vegeta(locate(212,171,1))
				SAGA_DIFFICULTY()

				for(var/mob/NPC/Dr_Gero/D in world)
					del(D)
			if(!super_piccolo_2_saga && ssj_vegeta_saga && !super_piccolo_2_saga_on)
				world << "<font color = lime>Saga Information:</font> Super Saiyan Vegeta has been Defeated! You own!"
				world << "<font color = lime>Saga Information:</font> Android Saga: Part III - The Super Namek!"
				saga = "Android"
				part = "Super Piccolo 2"
				location = "Earth"
				super_piccolo_2_saga_on = 1
				spawn() status_change()
				var/Piccolo = /mob/Saga/Piccolo_4
				new Piccolo(locate(197,60,1))
				SAGA_DIFFICULTY()

			if(!ascended_vegeta_saga && super_piccolo_2_saga && !ascended_vegeta_saga_on)
				world << "<font color = lime>Saga Information:</font> Super Piccolo 2 has been Defeated! O_O!!!"
				world << "<font color = lime>Saga Information:</font> Cell Saga: Part I - Super Vegeta!"
				saga = "Cell"
				part = "Ascended Vegeta"
				location = "Earth"
				ascended_vegeta_saga_on = 1
				spawn() status_change()
				var/Vegeta = /mob/Saga/Vegeta_4
				new Vegeta(locate(171,180,1))
				SAGA_DIFFICULTY()

			if(!ascended_trunks_saga && ascended_vegeta_saga && !ascended_trunks_saga_on)
				world << "<font color = lime>Saga Information:</font> Super Vegeta has been Defeated! You kick ass!!"
				world << "<font color = lime>Saga Information:</font> Cell Saga: Part II - Super Trunks!"
				saga = "Cell"
				part = "Super Trunks"
				location = "Earth"
				ascended_trunks_saga_on = 1
				spawn() status_change()
				var/Trunks = /mob/Saga/Trunks_2
				new Trunks(locate(171,180,1))
				SAGA_DIFFICULTY()

			if(!z_fighters_3_saga && ascended_trunks_saga && !z_fighters_3_saga_on)
				world << "<font color = lime>Saga Information:</font> Super Trunks has been Defeated! Un-freakin-believable!"
				world << "<font color = lime>Saga Information:</font> Cell Saga: Part III - Cell Games!"
				saga = "Cell"
				part = "Cell Games"
				location = "Earth"
				z_fighters_3_saga_on = 1
				spawn() status_change()
				var/Goku = /mob/Saga/Goku_7
				new Goku(locate(35,38,1))
				var/Gohan = /mob/Saga/Gohan_3
				new Gohan(locate(37,38,1))
				var/Tien = /mob/Saga/Tien_2
				new Tien(locate(36,41,1))
				var/Yamcha = /mob/Saga/Yamcha_2
				new Yamcha(locate(37,41,1))
				var/Trunks = /mob/Saga/Trunks_2
				new Trunks(locate(38,41,1))
				var/Vegeta = /mob/Saga/Vegeta_4
				new Vegeta(locate(41,40,1))
				var/Piccolo = /mob/Saga/Piccolo_5
				new Piccolo(locate(39,40,1))
				SAGA_DIFFICULTY()

			if(!ssj_2_gohan && z_fighters_3_saga >= 6 && !ssj_2_gohan_on)
				world << "<font color = lime>Saga Information:</font> The Z Force has been Defeated! Keep going! Untouchable!"
				world << "<font color = lime>Saga Information:</font> Cell Saga: Part IV - Explosion of Anger!"
				saga = "Cell"
				part = "Super Saiyan 2 Gohan"
				location = "Earth"
				ssj_2_gohan_on = 1
				spawn() status_change()
				var/Gohan = /mob/Saga/Gohan_4
				new Gohan(locate(38,38,1))
				SAGA_DIFFICULTY()

			if(!ssj_2_gohan_2_saga && ssj_2_gohan && !ssj_2_gohan_2_saga_on)
				world << "<font color = lime>Saga Information:</font> Super Saiyan 2 Gohan has been Defeated! You're INSANE!"
				world << "<font color = lime>Saga Information:</font> Buu Saga: Part I - Earth's Protector!"
				saga = "Buu"
				part = "Gohan"
				location = "Earth"
				ssj_2_gohan_2_saga_on = 1
				spawn() status_change()
				var/Gohan = /mob/Saga/Gohan_5
				new Gohan(locate(30,117,1))
				SAGA_DIFFICULTY()

			if(!ssj_2_goku_saga && ssj_2_gohan_2_saga && !ssj_2_goku_saga_on)
				world << "<font color = lime>Saga Information:</font> Gohan has been Defeated! No one stands a chance!"
				world << "<font color = lime>Saga Information:</font> Buu Saga: Part II - Last Hope..."
				saga = "Majin"
				part = "Super Saiyan 2 Goku"
				location = "Earth"
				ssj_2_goku_saga_on = 1
				spawn() status_change()
				var/Goku = /mob/Saga/Goku_8
				new Goku(locate(205,66,1))
				SAGA_DIFFICULTY()

			if(!gotenks_saga && ssj_2_goku_saga && !gotenks_saga_on)
				world << "<font color = lime>Saga Information:</font> Super Saiyan 2 Goku has been Defeated! I'm honored to be your announcer!"
				world << "<font color = lime>Saga Information:</font> Buu Saga: Part III - Fusion!"
				saga = "Buu"
				part = "Gotenks"
				location = "Dende"
				gotenks_saga_on = 1
				spawn() status_change()
				var/Gotenks = /mob/Saga/Gotenks
				new Gotenks(locate(233,240,3))
				SAGA_DIFFICULTY()

			if(!mystic_gohan_saga && gotenks_saga && !mystic_gohan_saga_on)
				world << "<font color = lime>Saga Information:</font> Gotenks has been Defeated! You must love the taste of blood!"
				world << "<font color = lime>Saga Information:</font> Buu Saga: Part IV - Gohan Reborn!"
				saga = "Buu"
				part = "Mystic Gohan"
				location = "Earth"
				mystic_gohan_saga_on = 1
				spawn() status_change()
				var/Gohan = /mob/Saga/Gohan_6
				new Gohan(locate(55,178,1))
				SAGA_DIFFICULTY()

			if(!vegito_saga && mystic_gohan_saga && !vegito_saga_on)
				world << "<font color = lime>Saga Information:</font> Mystic Gohan has been Defeated! You're a god among men!"
				world << "<font color = lime>Saga Information:</font> Buu Saga: Part V - Vegito?!"
				saga = "Buu"
				part = "Vegito"
				location = "Earth"
				vegito_saga_on = 1
				spawn() status_change()
				var/Vegito = /mob/Saga/Vegito
				new Vegito(locate(28,51,1))
				SAGA_DIFFICULTY()

			if(!goku_vegeta_kais_saga && vegito_saga && !goku_vegeta_kais_saga_on)
				world << "<font color = lime>Saga Information:</font> Vegito has been Defeated! Good god!"
				world << "<font color = lime>Saga Information:</font> Buu Saga: Part V - The Last Stand!"
				saga = "Buu"
				part = "Goku and Vegeta"
				location = "Supreme Kai"
				goku_vegeta_kais_saga_on = 1
				spawn() status_change()
				var/Goku = /mob/Saga/Goku_9
				new Goku(locate(126,209,3))
				var/Vegeta = /mob/Saga/Vegeta_5
				new Vegeta(locate(127,209,3))
				SAGA_DIFFICULTY()

			if(goku_vegeta_kais_saga >= 2 && goku_vegeta_kais_saga_on)
				world << "<font color = lime>Saga Information:</font> Goku and Vegeta have been Defeated! You're pure evil! "
				world << "<font color = lime>Saga Information:</font> Good Saga's Complete!"
				saga = "Not On"
				part = "Not On"
				location = "Not On"
				goku_vegeta_kais_saga_on = 1
				spawn() status_change()
				sagas_on = 0
				sagas_good = 0
				sleep(3000)
				sagas_on = 1
				sagas_evil = 1
				sleep(5)
				SAGA_CHECK()

		sleep(300)
		SAGA_CHECK_2()