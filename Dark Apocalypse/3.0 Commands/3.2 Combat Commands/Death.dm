mob
	var
		combat_points = 0
		combat_points_max = 0
		witness_deaths = 0
		android_dead = 0


mob
	proc
		Rage_Unleash()
			set background = 1

			if(src.race == "Saiyan" && src.rage_chromosome && !src.gone_ssj)
				if(src.powerlevel_max >= 85000)
					if(src.witness_deaths >= 5 && src.rage >= 50)
						if(!src.gone_ssj)
							src.gone_ssj = 1
							for(var/mob/PC/M in view(6))
								if(M != src)
									M << "\white <I>[src.name] Stands there, their face twisted with Rage..."
									spawn(10) M << "\white <I>[src.name] clentchs their fists, as tears well in their eyes. Veins protrude from [src.name]'s hands and forehead as the ground rumbles"

							src << "\white <I>You feel an uncontrollable rage burning in you as you remember the people who have died infront of you"
							sleep(10)
							src << "\white <I>You clentch your fists, as tears well in your eyes. Veins protrude from your hands and forehead as the ground rumbles"
							src.icon_state = "enrage"
							sleep(10)
							view(6) << "\white [src.name]: I WILL NOT LET IT HAPPEN ANYMORE!"
							src.powerlevel = src.powerlevel_max
							src.contents += new/obj/Transform/Transform
							src.contents += new/obj/Transform/Revert
							spawn() src.Saiyan_Trans()
							Explode(new /Effect/BasicBoom(src.loc,1,3))



 /***************\
|*****************|
|***MELEE DEATH***|
|*****************|
 \***************/

mob/proc/DeathCheck()
	if(src.powerlevel <= 0)
		..()

mob/Monster/DeathCheck(mob/PC/M)
	if(src.powerlevel <= 0)
		var/bonus_exp = src.tnl
		if("minor_exp_buff" in M.buffs)
			bonus_exp += bonus_exp * 0.05
		if("exp_buff" in M.buffs)
			bonus_exp += bonus_exp * 0.25
		src.killer = M.name
		if(src.owner != M)
			M.exp += bonus_exp
			M.zenni += src.zenni

			if(src.name == "{NPC} Goku")
				M.goku_wins+=1
				M.Evil_Sagas_fin()

			if(src.name == "{NPC} Piccolo")
				M.piccolo_wins+=1
				M.Evil_Sagas_fin()

			if(src.name == "{NPC} Yamcha")
				M.yamcha_wins+=1
				M.Evil_Sagas_fin()

			if(src.name == "{NPC} Tien")
				M.tien_wins+=1
				M.Evil_Sagas_fin()

			if(src.name == "{NPC} Krillin")
				M.krillin_wins+=1
				M.Evil_Sagas_fin()

			if(src.name == "{NPC} Gohan")
				M.gohan_wins+=1
				M.Evil_Sagas_fin()

			if(src.name == "{NPC} Choutzu")
				M.choutzu_wins+=1
				M.Evil_Sagas_fin()

			if(src.name == "{NPC} Vegeta")
				M.vegeta_wins+=1
				M.Evil_Sagas_fin()

			if(src.name == "{NPC} SSJ Goku")
				M.SSJ_goku_wins+=1
				M.Evil_Sagas_fin()

			if(src.name == "{NPC} Trunks")
				M.trunks_wins+=1
				M.Evil_Sagas_fin()

			if(src.name == "{NPC} Gotenks")
				M.gotenks_wins+=1
				M.Evil_Sagas_fin()

			if(src.name == "{NPC} Vegito")
				M.vegito_wins+=1
				M.Evil_Sagas_fin()





			if(src.name == "{NPC} Raditz")
				M.raditz_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Vegeta")
				M.raditz_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Nappa")
				M.nappa_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Burter")
				M.burter_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Captain Ginyu")
				M.captain_ginyu_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Guldo")
				M.guldo_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Jeice")
				M.jeice_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Recoom")
				M.recoom_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Frieza")
				M.frieza_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} King Cold")
				M.king_cold_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Android 16")
				M.android_16_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Android 17")
				M.android_17_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Android 18")
				M.android_18_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Cell")
				M.cell_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Perfect Cell")
				M.perfect_cell_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Majin Buu")
				M.majin_buu_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{{NPC} Kid Buu")
				M.kid_buu_wins+=1
				M.Good_Sagas_fin()
			M << "\white Zenni +[src.zenni]"
			M << "\white EXP +[bonus_exp]"
		spawn() M.Level_Up()
		for(var/mob/PC/B in world)
			if(src.owner == B)
				B.cell_jrs --

		for(var/mob/PC/S in world)
			if(src.maker == S)
				S.splits --

		if(src.race == "Green Saibaman")
			M.green_kills ++

		if(src.race == "Henchman")
			M.thug_kills ++

		if(src.race == "CellJ")
			M.cell_jr_kills ++


		if(src.name == "{NPC} Brolly")
			M.brolly_kill ++

		if(src.race == "Namekian Warrior")
			M.namek_kills ++

		if(src.name == "{NPC} Android 17")
			M.killed_17 = 1

		if(src.name == "{NPC} Android 18")
			M.killed_18 = 1

		if(src.name == "{NPC} Cell")
			M.killed_cell = 1

		if(src.name == "{NPC} Vegito")
			M.killed_vegito = 1

		del(src)
		..()

mob/Saga/DeathCheck(mob/PC/M)
	if(src.powerlevel <= 0)
		var/bonus_exp = src.tnl
		if("minor_exp_buff" in M.buffs)
			bonus_exp += bonus_exp * 0.05
		if("exp_buff" in M.buffs)
			bonus_exp += bonus_exp * 0.25
		M.exp += bonus_exp
		M.zenni += src.zenni
		if(src.name == "{NPC} Raditz")
			M.raditz_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Vegeta")
			M.raditz_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Nappa")
			M.nappa_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Burter")
			M.burter_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Captain Ginyu")
			M.captain_ginyu_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Guldo")
			M.guldo_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Jeice")
			M.jeice_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Recoom")
			M.recoom_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Frieza")
			M.frieza_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} King Cold")
			M.king_cold_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Android 16")
			M.android_16_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Android 17")
			M.android_17_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Android 18")
			M.android_18_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Cell")
			M.cell_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Perfect Cell")
			M.perfect_cell_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Majin Buu")
			M.majin_buu_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{{NPC} Kid Buu")
			M.kid_buu_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Goku")
			M.goku_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Piccolo")
			M.piccolo_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Yamcha")
			M.yamcha_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Tien")
			M.tien_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Krillin")
			M.krillin_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Gohan")
			M.gohan_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Choutzu")
			M.choutzu_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Vegeta")
			M.vegeta_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} SSJ Goku")
			M.SSJ_goku_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Trunks")
			M.trunks_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Gotenks")
			M.gotenks_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Vegito")
			M.vegito_wins+=1
			M.Evil_Sagas_fin()

		M << "\white Zenni +[src.zenni]"
		M << "\white EXP +[bonus_exp]"
		spawn() M.Level_Up()





		if(src.name == "{NPC} Dr Gero")
			if(prob(85))
				var/obj/Equipment/Micro_Chip/O = new
				O.icon = 'Micro Chip.dmi'
				O.loc = src.loc

		if(src.name == "{NPC} Android 19")
			if(prob(85))
				var/obj/Equipment/Micro_Chip/O = new
				O.icon = 'Micro Chip.dmi'
				O.loc = src.loc

		if(src.name == "{NPC} Android 16")
			if(prob(85))
				var/obj/Equipment/Micro_Chip/O = new
				O.icon = 'Micro Chip.dmi'
				O.loc = src.loc

		if(src.name == "{NPC} Android 18")
			if(prob(85))
				var/obj/Equipment/Micro_Chip/O = new
				O.icon = 'Micro Chip.dmi'
				O.loc = src.loc

		if(src.name == "{NPC} Android 17")
			if(prob(85))
				var/obj/Equipment/Micro_Chip/O = new
				O.icon = 'Micro Chip.dmi'
				O.loc = src.loc

		if(raditz_saga_on)
			raditz_saga ++


		if(vegeta_saga_on)
			vegeta_saga ++


		if(ginyu_saga_on)
			ginyu_saga ++

		if(frieza_saga_on)
			frieza_saga ++

		if(android_saga_on)
			android_saga ++

		if(cell_saga_on)
			cell_saga ++

		if(majin_saga_on)
			majin_saga ++

		if(goku_piccolo_saga_on)
			goku_piccolo_saga ++

		if(z_force_saga_on)
			z_force_saga ++

		if(z_force_saga2_on)
			z_force_saga2 ++

		if(z_force_2_saga_on)
			if(usr.frieza_quest2_start)
				if(src.name == "{NPC} Vegeta")
					usr.questnamekvegeta_kill = 1
				if(src.name == "{NPC} Gohan")
					usr.questnamekgohan_kill = 1
				if(src.name == "{NPC} Goku")
					if(usr.questnamekgoku_kill == 0)
						usr.questnamekgoku_kill += 1

			z_force_2_saga ++

		if(z_force2_2_saga_on)
			if(usr.frieza_quest2_start)
				if(src.name == "{NPC} Goku")
					if(usr.questnamekgoku_kill == 1)
						usr.questnamekgoku_kill += 1

				if(src.name == "{NPC} SSJ Goku")
					if(usr.questnamekgoku_kill == 2)
						usr.questnamekgoku_kill += 1

			z_force2_2_saga ++

		if(super_piccolo_saga_on)
			super_piccolo_saga ++

		if(super_goku_saga_on)
			super_piccolo_saga ++
			super_goku_saga ++

		if(ssj_goku_saga2_on)
			ssj_goku_saga2 ++

		if(trunks_saga_on)
			trunks_saga ++

		if(ssj_goku_2_saga_on)
			ssj_goku_2_saga ++

		if(ssj_vegeta_saga_on)
			ssj_vegeta_saga ++

		if(super_piccolo_2_saga_on)
			super_piccolo_2_saga ++

		if(ascended_vegeta_saga_on)
			ascended_vegeta_saga ++

		if(ascended_trunks_saga_on)
			ascended_trunks_saga ++

		if(z_fighters_3_saga_on)
			z_fighters_3_saga ++

		if(ssj_2_gohan_on)
			ssj_2_gohan ++

		if(ssj_2_gohan_2_saga_on)
			ssj_2_gohan_2_saga ++

		if(ssj_2_goku_saga_on)
			ssj_2_goku_saga ++

		if(gotenks_saga_on)
			gotenks_saga ++

		if(mystic_gohan_saga_on)
			mystic_gohan_saga ++

		if(vegito_saga_on)
			vegito_saga ++

		if(goku_vegeta_kais_saga_on)
			goku_vegeta_kais_saga ++

		del(src)
		..()

mob/PC/DeathCheck(mob/M)
	var/zenniup = 0

	if(src.powerlevel <= 0)
		if(src.guildb)
			if(src.opponent == "[M]")
				for(var/mob/C in world)
					if(C.guild_name == src.guild_name)
						C << "<FONT color = green>Guild Battle Information:<FONT color = White> [src] was defeated by [M]!"

				M.guildb = 0
				src.guildb = 0
				M.Power_Redefine()
				src.Power_Redefine()
				src << "<Font color=white>Your base power has been obtained."
				M << "<Font color=white>Your base power has been obtained."

				if(src.guildbrank >= M.guildbrank)
					M.guildbrank ++
					M << "<font color = #BB0EDA>Guild Information:</font> Your Guild Battle Rank has gone up!"
				return

		if(src.arenab)
			if(src.opponent == "[M]")
				for(var/mob/PC/C in world)
					C << "<FONT color = #66FFFF>Arena Information:<FONT color = White> [src] was defeated by [M]!"
				arena_battle_on = 0

				M.arenab = 0
				src.arenab = 0
				M.arena_wins += 1
				M.Arena_winsM()

				src.arena_losses += 1
				src.zenni /= 2
				zenniup = src.zenni
				M.zenni += zenniup
				M << "\white You gained [zenniup] Zenni!"
				src << "\white You lost [zenniup] Zenni..."
				return
		if(M.type == /mob/Monster/Simulator_NPC)
			spawn(35) del(M)

		if(src.level >= M.level / 4)
			if(M.combat_points < M.combat_points_max)
				M.combat_points += 50
				M << "Your Combat Points have increased by: \red 50"

		if(M.karma == src.karma)
			M.karma_rating -= 1
		else
			M.karma_rating += 1

		if(M.karma_rating < 0)
			if(M.karma == "Good")
				M << "<I>You feel an Evil inside of you begin to awaken..."
				M.karma = "Evil"
				M.karma_rating = 0
			else
				M << "<I>You feel the Good inside of you begin to awaken..."
				M.karma = "Good"
				M.karma_rating = 0


		if(src.race == "Android")
			for(var/obj/Dragonballs/O in src)
				src.e_db_1 = 0
				src.e_db_2 = 0
				src.e_db_3 = 0
				src.e_db_4 = 0
				src.e_db_5 = 0
				src.e_db_6 = 0
				src.e_db_7 = 0
				O.loc = src.loc
				..()
			for(var/obj/Namek_Dragonballs/O in src)
				src.n_db_1 = 0
				src.n_db_2 = 0
				src.n_db_3 = 0
				src.n_db_4 = 0
				src.n_db_5 = 0
				src.n_db_6 = 0
				src.n_db_7 = 0
				O.loc = src.loc
				..()


			src.absorbing = 0
			src.android_dead = 1
			src.powerlevel = src.powerlevel_max
			src.ki = src.ki_max
			src.strength = src.strength_max
			src.defence = src.defence_max
			src.speed = src.speed_max
			src.overlays -= small_death_ball
			src.overlays -= big_death_ball
			src.buku = 0
			src.rest = 0
			src.frozen = 0
			src.charging = 0
			src.boxing = 0

			src.doing = 0
			src.icon_state = ""
			src.density = 1
			src.loc = locate(162,7,3)
			src.attack_lock = 0
			src.ki_lock = 0
			src.it_lock = 0
			src.it_blocked = 0
			src.regen_dead = 0
			src.powerlevel = 50
			src.KO = 0
			src.rage = 0
			src.sight &= ~BLIND
			src.deaths += 1
			src.Gokus()
			M.kills += 1
			M.LooseK()
			world << "<FONT color = red>Battle Information:<FONT color = White> [src] died at the hands of [M]!"
			src.android_dead = 1
			spawn(300) src.android_dead = 0
		else
			if(src.race == "Majin")
				if(!src.regen_dead)
					src.icon_state = "Dead"
					src.frozen = 1
					src.boxing = 0

					src.doing = 1
					src.density = 1
					src.attack_lock = 1
					src.ki_lock = 1
					src.charging = 0
					src.it_lock = 1
					src.regen_dead = 1
					src.powerlevel = 0
					src.kaioken = 0
					src.KO = 0
					src.overlays -= small_death_ball
					src.overlays -= big_death_ball
					src.rage = 0
					src.sight &= ~BLIND
					M.kills += 1
					src.safe = 1
					spawn(30) src.safe = 0
				else
					spawn() src.Power_Redefine()
					for(var/obj/Dragonballs/O in src)
						src.e_db_1 = 0
						src.e_db_2 = 0
						src.e_db_3 = 0
						src.e_db_4 = 0
						src.e_db_5 = 0
						src.e_db_6 = 0
						src.e_db_7 = 0
						O.loc = src.loc
						..()
					for(var/obj/Namek_Dragonballs/O in src)
						src.n_db_1 = 0
						src.n_db_2 = 0
						src.n_db_3 = 0
						src.n_db_4 = 0
						src.n_db_5 = 0
						src.n_db_6 = 0
						src.n_db_7 = 0
						O.loc = src.loc
						..()
					src.buku = 0
					src.rest = 0
					src.frozen = 0
					src.boxing = 0

					src.doing = 0
					src.icon_state = ""
					src.density = 1
					src.loc = locate(55,6,3)
					src.attack_lock = 0
					src.ki_lock = 0
					src.dead = 1
					src.it_lock = 0
					src.it_blocked = 0
					src.regen_dead = 0
					src.kaioken = 0
					src.powerlevel = 50
					src.KO = 0
					src.rage = 0
					src.sight &= ~BLIND
					src.overlays += src.halo
					src.deaths += 1
					M.kills += 1
					M.LooseK()
					src << "Your body was completely Destroyed!"
					world << "<FONT color = red>Battle Information:<FONT color = White> [src] died at the hands of [M]!"

			else
				spawn() src.Power_Redefine()
				for(var/obj/Dragonballs/O in src)
					src.e_db_1 = 0
					src.e_db_2 = 0
					src.e_db_3 = 0
					src.e_db_4 = 0
					src.e_db_5 = 0
					src.e_db_6 = 0
					src.e_db_7 = 0
					O.loc = src.loc
					..()
				for(var/obj/Namek_Dragonballs/O in src)
					src.n_db_1 = 0
					src.n_db_2 = 0
					src.n_db_3 = 0
					src.n_db_4 = 0
					src.n_db_5 = 0
					src.n_db_6 = 0
					src.n_db_7 = 0
					O.loc = src.loc
					..()
				src.buku = 0
				src.dead = 1
				src.rest = 0
				src.frozen = 0
				src.boxing = 0

				src.doing = 0
				src.icon_state = ""
				src.density = 1
				src.loc = locate(55,6,3)
				src.attack_lock = 0
				src.charging = 0
				src.ki_lock = 0
				src.it_lock = 0
				src.it_blocked = 0
				src.powerlevel = 50
				src.kaioken = 0
				src.KO = 0
				src.overlays -= small_death_ball
				src.overlays -= big_death_ball
				src.rage = 0
				src.sight &= ~BLIND
				src.overlays += src.halo
				src.deaths += 1
				src.Gokus()
				M.kills += 1
				M.LooseK()
				world << "<FONT color = red>Battle Information:<FONT color = White> [src] died at the hands of [M]!"

		for(var/mob/PC/M2 in view(8))
			if(!M2)return
			if(M2.race == "Saiyan" || M2.race == "Half Saiyan")
				M2.witness_deaths ++
				M2.Watchdeath()
				spawn() M2.Rage_Unleash()
			if(M2 == M)continue
			M2 << "\red You feel your Rage Grow..."
			M2.rage += round(rand(20,50))
			if(M2.rage >= 100)
				M2.rage = 100



 /***************\
|*****************|
|*SMALL KI  DEATH*|
|*****************|
 \***************/

mob/proc/SmallKiDeathCheck()
	if(src.powerlevel <= 0)
		..()

mob/Monster/SmallKiDeathCheck(mob/PC/M)
	if(src.powerlevel <= 0)
		new/obj/techs/Overlays/Crater_Small(src.loc)

		var/bonus_exp = src.tnl
		if("minor_exp_buff" in M.buffs)
			bonus_exp += bonus_exp * 0.05
		if("exp_buff" in M.buffs)
			bonus_exp += bonus_exp * 0.25
		src.killer = M.name
		if(src.owner != M)
			M.exp += bonus_exp
			M.zenni += src.zenni
			M << "\white Zenni +[src.zenni]"
			M << "\white EXP +[bonus_exp]"
		spawn() M.Level_Up()
		for(var/mob/PC/B in world)
			if(src.owner == B)
				B.cell_jrs --

		for(var/mob/PC/S in world)
			if(src.maker == S)
				S.splits --

		if(src.race == "Green Saibaman")
			M.green_kills ++

		if(src.name == "{NPC} Brolly")
			M.brolly_kill ++

		if(src.race == "Henchman")
			M.thug_kills ++

		if(src.race == "CellJ")
			M.cell_jr_kills ++

		if(src.race == "Namekian Warrior")
			M.namek_kills ++

		if(src.name == "{NPC} Android 17")
			M.killed_17 = 1

		if(src.name == "{NPC} Android 18")
			M.killed_18 = 1

		if(src.name == "{NPC} Cell")
			M.killed_cell = 1

		if(src.name == "{NPC} Vegito")
			M.killed_vegito = 1

		M.kills ++
		del(src)
		..()

mob/Saga/SmallKiDeathCheck(mob/PC/M)
	if(src.powerlevel <= 0)

		var/bonus_exp = src.tnl
		if("minor_exp_buff" in M.buffs)
			bonus_exp += bonus_exp * 0.05
		if("exp_buff" in M.buffs)
			bonus_exp += bonus_exp * 0.25
		M.exp += bonus_exp
		M.zenni += src.zenni
		if(src.name == "{NPC} Raditz")
			M.raditz_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Vegeta")
			M.raditz_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Nappa")
			M.nappa_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Burter")
			M.burter_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Captain Ginyu")
			M.captain_ginyu_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Guldo")
			M.guldo_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Jeice")
			M.jeice_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Recoom")
			M.recoom_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Frieza")
			M.frieza_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} King Cold")
			M.king_cold_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Android 16")
			M.android_16_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Android 17")
			M.android_17_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Android 18")
			M.android_18_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Cell")
			M.cell_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Perfect Cell")
			M.perfect_cell_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Majin Buu")
			M.majin_buu_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{{NPC} Kid Buu")
			M.kid_buu_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Goku")
			M.goku_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Piccolo")
			M.piccolo_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Yamcha")
			M.yamcha_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Tien")
			M.tien_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Krillin")
			M.krillin_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Gohan")
			M.gohan_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Choutzu")
			M.choutzu_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Vegeta")
			M.vegeta_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} SSJ Goku")
			M.SSJ_goku_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Trunks")
			M.trunks_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Gotenks")
			M.gotenks_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Vegito")
			M.vegito_wins+=1
			M.Evil_Sagas_fin()
		M << "\white Zenni +[src.zenni]"
		M << "\white EXP +[bonus_exp]"
		spawn() M.Level_Up()

		if(src.name == "{NPC} Dr Gero")
			if(prob(85))
				var/obj/Equipment/Micro_Chip/O = new
				O.icon = 'Micro Chip.dmi'
				O.loc = src.loc

		if(src.name == "{NPC} Android 19")
			if(prob(85))
				var/obj/Equipment/Micro_Chip/O = new
				O.icon = 'Micro Chip.dmi'
				O.loc = src.loc

		if(src.name == "{NPC} Android 16")
			if(prob(85))
				var/obj/Equipment/Micro_Chip/O = new
				O.icon = 'Micro Chip.dmi'
				O.loc = src.loc

		if(src.name == "{NPC} Android 18")
			if(prob(85))
				var/obj/Equipment/Micro_Chip/O = new
				O.icon = 'Micro Chip.dmi'
				O.loc = src.loc

		if(src.name == "{NPC} Android 17")
			if(prob(85))
				var/obj/Equipment/Micro_Chip/O = new
				O.icon = 'Micro Chip.dmi'
				O.loc = src.loc

		if(raditz_saga_on)
			raditz_saga ++
		//	M.raditz_wins+=1
		//	M.Good_Sagas_lis()
		//	M.Good_Sagas_fin()

		if(vegeta_saga_on)
			vegeta_saga ++
		//	M.vegeta_wins+=1
		//	M.Good_Sagas_lis()
		//	M.Good_Sagas_fin()

		if(ginyu_saga_on)
			ginyu_saga ++

		if(frieza_saga_on)
			frieza_saga ++

		if(android_saga_on)
			android_saga ++

		if(cell_saga_on)
			cell_saga ++

		if(majin_saga_on)
			majin_saga ++

		if(goku_piccolo_saga_on)
			goku_piccolo_saga ++

		if(z_force_saga_on)
			z_force_saga ++

		if(z_force_saga2_on)
			z_force_saga2 ++

		if(z_force_2_saga_on)
			z_force_2_saga ++

		if(z_force2_2_saga_on)
			z_force2_2_saga ++

		if(super_piccolo_saga_on)
			super_piccolo_saga ++

		if(super_goku_saga_on)
			super_piccolo_saga ++
			super_goku_saga ++

		if(ssj_goku_saga2_on)
			ssj_goku_saga2 ++

		if(trunks_saga_on)
			trunks_saga ++

		if(ssj_goku_2_saga_on)
			ssj_goku_2_saga ++

		if(ssj_vegeta_saga_on)
			ssj_vegeta_saga ++

		if(super_piccolo_2_saga_on)
			super_piccolo_2_saga ++

		if(ascended_vegeta_saga_on)
			ascended_vegeta_saga ++

		if(ascended_trunks_saga_on)
			ascended_trunks_saga ++

		if(z_fighters_3_saga_on)
			z_fighters_3_saga ++

		if(ssj_2_gohan_on)
			ssj_2_gohan ++

		if(ssj_2_gohan_2_saga_on)
			ssj_2_gohan_2_saga ++

		if(ssj_2_goku_saga_on)
			ssj_2_goku_saga ++

		if(gotenks_saga_on)
			gotenks_saga ++

		if(mystic_gohan_saga_on)
			mystic_gohan_saga ++

		if(vegito_saga_on)
			vegito_saga ++

		if(goku_vegeta_kais_saga_on)
			goku_vegeta_kais_saga ++

		del(src)
		..()


mob/PC/SmallKiDeathCheck(mob/M)
	var/zenniup = 0

	if(src.powerlevel <= 0)
		if(src.guildb)
			if(src.opponent == "[M]")
				for(var/mob/C in world)
					if(C.guild_name == src.guild_name)
						C << "<FONT color = green>Guild Battle Information:<FONT color = White> [src] was defeated by [M]!"

				M.guildb = 0
				src.guildb = 0
				M.Power_Redefine()
				src.Power_Redefine()
				src << "<Font color=white>Your base power has been obtained."
				M << "<Font color=white>Your base power has been obtained."

				if(src.guildbrank >= M.guildbrank)
					M.guildbrank ++
					M << "<font color = #BB0EDA>Guild Information:</font> Your Guild Battle Rank has gone up!"
				return
		if(src.arenab)
			if(src.opponent == "[M]")
				for(var/mob/PC/C in world)
					C << "<FONT color = #66FFFF>Arena Information:<FONT color = White> [src] was defeated by [M]!"
				arena_battle_on = 0


				M.arenab = 0
				src.arenab = 0
				M.arena_wins += 1
				M.Arena_winsM()
				src.arena_losses += 1
				src.zenni /= 2
				zenniup = src.zenni
				M.zenni += zenniup
				M << "\white You gained [zenniup] Zenni!"
				src << "\white You lost [zenniup] Zenni..."
				return
		new/obj/techs/Overlays/Crater_Small(src.loc)

		if(src.level >= M.level / 4)
			if(M.combat_points < M.combat_points_max)
				M.combat_points += 50
				M << "Your Combat Points have increased by: \red 50"

		if(M.karma == src.karma)
			M.karma_rating -= 1
		else
			M.karma_rating += 1

		if(M.karma_rating < 0)
			if(M.karma == "Good")
				M << "<I>You feel an Evil inside of you begin to awaken..."
				M.karma = "Evil"
				M.karma_rating = 0
			else
				M << "<I>You feel the Good inside of you begin to awaken..."
				M.karma = "Good"
				M.karma_rating = 0

		if(src.race == "Android")
			for(var/obj/Dragonballs/O in src)
				src.e_db_1 = 0
				src.e_db_2 = 0
				src.e_db_3 = 0
				src.e_db_4 = 0
				src.e_db_5 = 0
				src.e_db_6 = 0
				src.e_db_7 = 0
				O.loc = src.loc
				..()

			for(var/obj/Namek_Dragonballs/O in src)
				src.n_db_1 = 0
				src.n_db_2 = 0
				src.n_db_3 = 0
				src.n_db_4 = 0
				src.n_db_5 = 0
				src.n_db_6 = 0
				src.n_db_7 = 0
				O.loc = src.loc
				..()

			src.absorbing = 0

			src.powerlevel = src.powerlevel_max
			src.ki = src.ki_max
			src.strength = src.strength_max
			src.defence = src.defence_max
			src.speed = src.speed_max
			src.overlays -= small_death_ball
			src.overlays -= big_death_ball
			src.buku = 0
			src.rest = 0
			src.frozen = 0
			src.boxing = 0

			src.doing = 0
			src.charging = 0
			src.icon_state = ""
			src.density = 1
			src.loc = locate(162,7,3)
			src.attack_lock = 0
			src.ki_lock = 0
			src.kaioken = 0
			src.it_lock = 0
			src.grav_delay = 0
			src.grav_on = 0
			src.grav = 0
			src.it_blocked = 0
			src.regen_dead = 0
			src.powerlevel = 50
			src.KO = 0
			src.rage = 0
			src.sight &= ~BLIND
			src.deaths += 1
			src.Gokus()
			M.kills += 1
			M.LooseK()
			world << "<FONT color = red>Battle Information:<FONT color = White> [src] died at the hands of [M]!"
			src.android_dead = 1
			spawn(300) src.android_dead = 0

		else
			if(src.race == "Majin")
				if(!src.regen_dead)
					src.icon_state = "Dead"
					src.frozen = 1
					src.boxing = 0

					src.doing = 1
					src.density = 1
					src.attack_lock = 1
					src.ki_lock = 1
					src.charging = 0
					src.it_lock = 1
					src.regen_dead = 1
					src.powerlevel = 0
					src.kaioken = 0
					src.overlays -= small_death_ball
					src.overlays -= big_death_ball
					src.KO = 0
					src.rage = 0
					src.sight &= ~BLIND
					M.kills += 1
					src.safe = 1
					spawn(30) src.safe = 0
				else
					spawn() src.Power_Redefine()
					for(var/obj/Dragonballs/O in src)
						src.e_db_1 = 0
						src.e_db_2 = 0
						src.e_db_3 = 0
						src.e_db_4 = 0
						src.e_db_5 = 0
						src.e_db_6 = 0
						src.e_db_7 = 0
						O.loc = src.loc
						..()

					for(var/obj/Namek_Dragonballs/O in src)
						src.n_db_1 = 0
						src.n_db_2 = 0
						src.n_db_3 = 0
						src.n_db_4 = 0
						src.n_db_5 = 0
						src.n_db_6 = 0
						src.n_db_7 = 0
						O.loc = src.loc
						..()

					src.overlays -= small_death_ball
					src.overlays -= big_death_ball
					src.buku = 0
					src.rest = 0
					src.frozen = 0
					src.boxing = 0

					src.doing = 0
					src.icon_state = ""
					src.density = 1
					src.loc = locate(55,6,3)
					src.attack_lock = 0
					src.ki_lock = 0
					src.dead = 1
					src.grav_delay = 0
					src.grav_on = 0
					src.grav = 0
					src.it_lock = 0
					src.it_blocked = 0
					src.kaioken = 0
					src.regen_dead = 0
					src.powerlevel = 50
					src.KO = 0
					src.rage = 0
					src.sight &= ~BLIND
					src.overlays += src.halo
					src.deaths += 1
					src.Gokus()
					M.kills += 1
					M.LooseK()
					src << "Your body was completely Destroyed!"
					world << "<FONT color = red>Battle Information:<FONT color = White> [src] died at the hands of [M]!"

			else
				spawn() src.Power_Redefine()
				for(var/obj/Dragonballs/O in src)
					src.e_db_1 = 0
					src.e_db_2 = 0
					src.e_db_3 = 0
					src.e_db_4 = 0
					src.e_db_5 = 0
					src.e_db_6 = 0
					src.e_db_7 = 0
					O.loc = src.loc
					..()

				for(var/obj/Namek_Dragonballs/O in src)
					src.n_db_1 = 0
					src.n_db_2 = 0
					src.n_db_3 = 0
					src.n_db_4 = 0
					src.n_db_5 = 0
					src.n_db_6 = 0
					src.n_db_7 = 0
					O.loc = src.loc
					..()
				src.buku = 0
				src.overlays -= small_death_ball
				src.overlays -= big_death_ball
				src.dead = 1
				src.rest = 0
				src.charging = 0
				src.frozen = 0
				src.boxing = 0

				src.doing = 0
				src.icon_state = ""
				src.density = 1
				src.loc = locate(55,6,3)
				src.attack_lock = 0
				src.grav_delay = 0
				src.grav_on = 0
				src.grav = 0
				src.kaioken = 0
				src.ki_lock = 0
				src.it_lock = 0
				src.it_blocked = 0
				src.powerlevel = 50
				src.KO = 0
				src.rage = 0
				src.sight &= ~BLIND
				src.overlays += src.halo
				src.deaths += 1
				M.kills += 1
				src.Gokus()
				M.LooseK()
				world << "<FONT color = red>Battle Information:<FONT color = White> [src] died at the hands of [M]!"

		for(var/mob/PC/M2 in view(12))
			if(!M2)return
			if(M2.race == "Saiyan" || M2.race == "Half Saiyan")
				M2.witness_deaths ++
				M2.Watchdeath()
				spawn() M2.Rage_Unleash()
			if(M2 == M)continue
			M2 << "\red You feel your Rage Grow..."
			M2.rage += round(rand(20,50))
			if(M2.rage >= 100)
				M2.rage = 100

 /***************\
|*****************|
|**BIG KI  DEATH**|
|*****************|
 \***************/

mob/proc/BigKiDeathCheck()
	if(src.powerlevel <= 0)
		..()

mob/Monster/BigKiDeathCheck(mob/PC/M)
	if(src.powerlevel <= 0)
		new/obj/techs/Overlays/Crater_Center(src.loc)

		var/bonus_exp = src.tnl
		if("minor_exp_buff" in M.buffs)
			bonus_exp += bonus_exp * 0.05
		if("exp_buff" in M.buffs)
			bonus_exp += bonus_exp * 0.25
		src.killer = M.name
		if(src.owner != M)
			M.exp += bonus_exp
			M.zenni += src.zenni
			if(src.name == "{NPC} Raditz")
				M.raditz_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Vegeta")
				M.raditz_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Nappa")
				M.nappa_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Burter")
				M.burter_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Captain Ginyu")
				M.captain_ginyu_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Guldo")
				M.guldo_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Jeice")
				M.jeice_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Recoom")
				M.recoom_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Frieza")
				M.frieza_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} King Cold")
				M.king_cold_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Android 16")
				M.android_16_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Android 17")
				M.android_17_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Android 18")
				M.android_18_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Cell")
				M.cell_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Perfect Cell")
				M.perfect_cell_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Majin Buu")
				M.majin_buu_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{{NPC} Kid Buu")
				M.kid_buu_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Goku")
				M.goku_wins+=1
				M.Evil_Sagas_fin()

			if(src.name == "{NPC} Piccolo")
				M.piccolo_wins+=1
				M.Evil_Sagas_fin()

			if(src.name == "{NPC} Yamcha")
				M.yamcha_wins+=1
				M.Evil_Sagas_fin()

			if(src.name == "{NPC} Tien")
				M.tien_wins+=1
				M.Evil_Sagas_fin()

			if(src.name == "{NPC} Krillin")
				M.krillin_wins+=1
				M.Evil_Sagas_fin()

			if(src.name == "{NPC} Gohan")
				M.gohan_wins+=1
				M.Evil_Sagas_fin()

			if(src.name == "{NPC} Choutzu")
				M.choutzu_wins+=1
				M.Evil_Sagas_fin()

			if(src.name == "{NPC} Vegeta")
				M.vegeta_wins+=1
				M.Evil_Sagas_fin()

			if(src.name == "{NPC} SSJ Goku")
				M.SSJ_goku_wins+=1
				M.Evil_Sagas_fin()

			if(src.name == "{NPC} Trunks")
				M.trunks_wins+=1
				M.Evil_Sagas_fin()

			if(src.name == "{NPC} Gotenks")
				M.gotenks_wins+=1
				M.Evil_Sagas_fin()

			if(src.name == "{NPC} Vegito")
				M.vegito_wins+=1
				M.Evil_Sagas_fin()
				M << "\white Zenni +[src.zenni]"
				M << "\white EXP +[bonus_exp]"
		spawn() M.Level_Up()
		for(var/mob/PC/B in world)
			if(src.owner == B)
				B.cell_jrs --

		for(var/mob/PC/S in world)
			if(src.maker == S)
				S.splits --

		if(src.race == "Green Saibaman")
			M.green_kills ++

		if(src.name == "{NPC} Brolly")
			M.brolly_kill ++

		if(src.name == "{NPC} Android 17")
			M.killed_17 = 1

		if(src.name == "{NPC} Android 18")
			M.killed_18 = 1

		if(src.name == "{NPC} Cell")
			M.killed_cell = 1

		if(src.race == "Henchman")
			M.thug_kills ++

		if(src.race == "CellJ")
			M.cell_jr_kills ++

		if(src.name == "{NPC} Vegito")
			M.killed_vegito = 1

		if(src.race == "Namekian Warrior")
			M.namek_kills ++


		M.kills ++
		M.LooseK()
		del(src)
		..()

mob/Saga/BigKiDeathCheck(mob/PC/M)
	if(src.powerlevel <= 0)

		var/bonus_exp = src.tnl
		if("minor_exp_buff" in M.buffs)
			bonus_exp += bonus_exp * 0.05
		if("exp_buff" in M.buffs)
			bonus_exp += bonus_exp * 0.25
		M.exp += bonus_exp
		M.zenni += src.zenni
		if(src.name == "{NPC} Raditz")
			M.raditz_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Vegeta")
			M.raditz_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Nappa")
			M.nappa_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Burter")
			M.burter_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Captain Ginyu")
			M.captain_ginyu_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Guldo")
			M.guldo_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Jeice")
			M.jeice_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Recoom")
			M.recoom_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Frieza")
			M.frieza_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} King Cold")
			M.king_cold_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Android 16")
			M.android_16_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Android 17")
			M.android_17_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Android 18")
			M.android_18_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Cell")
			M.cell_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Perfect Cell")
			M.perfect_cell_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Majin Buu")
			M.majin_buu_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{{NPC} Kid Buu")
			M.kid_buu_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Goku")
			M.goku_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Piccolo")
			M.piccolo_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Yamcha")
			M.yamcha_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Tien")
			M.tien_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Krillin")
			M.krillin_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Gohan")
			M.gohan_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Choutzu")
			M.choutzu_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Vegeta")
			M.vegeta_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} SSJ Goku")
			M.SSJ_goku_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Trunks")
			M.trunks_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Gotenks")
			M.gotenks_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Vegito")
			M.vegito_wins+=1
			M.Evil_Sagas_fin()
		M << "\white Zenni +[src.zenni]"
		M << "\white EXP +[bonus_exp]"
		spawn() M.Level_Up()

		if(src.name == "{NPC} Dr Gero")
			if(prob(85))
				var/obj/Equipment/Micro_Chip/O = new
				O.icon = 'Micro Chip.dmi'
				O.loc = src.loc

		if(src.name == "{NPC} Android 19")
			if(prob(85))
				var/obj/Equipment/Micro_Chip/O = new
				O.icon = 'Micro Chip.dmi'
				O.loc = src.loc

		if(src.name == "{NPC} Android 16")
			if(prob(85))
				var/obj/Equipment/Micro_Chip/O = new
				O.icon = 'Micro Chip.dmi'
				O.loc = src.loc

		if(src.name == "{NPC} Android 18")
			if(prob(85))
				var/obj/Equipment/Micro_Chip/O = new
				O.icon = 'Micro Chip.dmi'
				O.loc = src.loc

		if(src.name == "{NPC} Android 17")
			if(prob(85))
				var/obj/Equipment/Micro_Chip/O = new
				O.icon = 'Micro Chip.dmi'
				O.loc = src.loc

		if(raditz_saga_on)
			raditz_saga ++
			M.raditz_wins+=1
			M.Good_Sagas_fin()

		if(vegeta_saga_on)
			vegeta_saga ++
			M.vegeta_wins+=1
			M.Good_Sagas_fin()

		if(ginyu_saga_on)
			ginyu_saga ++

		if(frieza_saga_on)
			frieza_saga ++

		if(android_saga_on)
			android_saga ++

		if(cell_saga_on)
			cell_saga ++

		if(majin_saga_on)
			majin_saga ++

		if(goku_piccolo_saga_on)
			goku_piccolo_saga ++

		if(z_force_saga_on)
			z_force_saga ++

		if(z_force_saga2_on)
			z_force_saga2 ++

		if(z_force_2_saga_on)
			z_force_2_saga ++

		if(z_force2_2_saga_on)
			z_force2_2_saga ++

		if(super_piccolo_saga_on)
			super_piccolo_saga ++

		if(super_goku_saga_on)
			super_piccolo_saga ++
			super_goku_saga ++

		if(ssj_goku_saga2_on)
			ssj_goku_saga2 ++

		if(trunks_saga_on)
			trunks_saga ++

		if(ssj_goku_2_saga_on)
			ssj_goku_2_saga ++

		if(ssj_vegeta_saga_on)
			ssj_vegeta_saga ++

		if(super_piccolo_2_saga_on)
			super_piccolo_2_saga ++

		if(ascended_vegeta_saga_on)
			ascended_vegeta_saga ++

		if(ascended_trunks_saga_on)
			ascended_trunks_saga ++

		if(z_fighters_3_saga_on)
			z_fighters_3_saga ++

		if(ssj_2_gohan_on)
			ssj_2_gohan ++

		if(ssj_2_gohan_2_saga_on)
			ssj_2_gohan_2_saga ++

		if(ssj_2_goku_saga_on)
			ssj_2_goku_saga ++

		if(gotenks_saga_on)
			gotenks_saga ++

		if(mystic_gohan_saga_on)
			mystic_gohan_saga ++

		if(vegito_saga_on)
			vegito_saga ++

		if(goku_vegeta_kais_saga_on)
			goku_vegeta_kais_saga ++

		del(src)
		..()

mob/PC/BigKiDeathCheck(mob/M)
	var/zenniup = 0

	if(src.powerlevel <= 0)
		new/obj/techs/Overlays/Crater_Center(src.loc)

		if(src.guildb)
			if(src.opponent == "[M]")
				for(var/mob/C in world)
					if(C.guild_name == src.guild_name)
						C << "<FONT color = green>Guild Battle Information:<FONT color = White> [src] was defeated by [M]!"

				M.guildb = 0
				src.guildb = 0
				M.Power_Redefine()
				src.Power_Redefine()
				src << "<Font color=white>Your base power has been obtained."
				M << "<Font color=white>Your base power has been obtained."

				if(src.guildbrank >= M.guildbrank)
					M.guildbrank ++
					M << "<font color = #BB0EDA>Guild Information:</font> Your Guild Battle Rank has gone up!"
				return
		if(src.arenab)
			if(src.opponent == "[M]")
				for(var/mob/PC/C in world)
					C << "<FONT color = #66FFFF>Arena Information:<FONT color = White> [src] was defeated by [M]!"
				arena_battle_on = 0


				M.arenab = 0
				src.arenab = 0
				M.arena_wins += 1
				M.Arena_winsM()
				src.arena_losses += 1
				src.zenni /= 2
				zenniup = src.zenni
				M.zenni += zenniup
				M << "\white You gained [zenniup] Zenni!"
				src << "\white You lost [zenniup] Zenni..."
				return
		if(src.level >= M.level / 4)
			if(M.combat_points < M.combat_points_max)
				M.combat_points += 50
				M << "Your Combat Points have increased by: \red 50"

		if(M.karma == src.karma)
			M.karma_rating -= 1
		else
			M.karma_rating += 1

		if(M.karma_rating < 0)
			if(M.karma == "Good")
				M.karma = "Evil"
				M << "<I>You feel an Evil inside of you begin to awaken..."
				M.karma_rating = 0
			else
				M.karma = "Good"
				M << "<I>You feel the Good inside of you begin to awaken..."
				M.karma_rating = 0


		if(src.race == "Android")
			for(var/obj/Dragonballs/O in src)
				src.e_db_1 = 0
				src.e_db_2 = 0
				src.e_db_3 = 0
				src.e_db_4 = 0
				src.e_db_5 = 0
				src.e_db_6 = 0
				src.e_db_7 = 0
				O.loc = src.loc
				..()

			for(var/obj/Namek_Dragonballs/O in src)
				src.n_db_1 = 0
				src.n_db_2 = 0
				src.n_db_3 = 0
				src.n_db_4 = 0
				src.n_db_5 = 0
				src.n_db_6 = 0
				src.n_db_7 = 0
				O.loc = src.loc
				..()
			src.absorbing = 0

			src.powerlevel = src.powerlevel_max
			src.ki = src.ki_max
			src.strength = src.strength_max
			src.defence = src.defence_max
			src.speed = src.speed_max
			src.buku = 0
			src.overlays -= small_death_ball
			src.overlays -= big_death_ball
			src.rest = 0
			src.frozen = 0
			src.boxing = 0

			src.doing = 0
			src.icon_state = ""
			src.charging = 0
			src.density = 1
			src.loc = locate(162,7,3)
			src.attack_lock = 0
			src.ki_lock = 0
			src.it_lock = 0
			src.it_blocked = 0
			src.kaioken = 0
			src.grav_delay = 0
			src.grav_on = 0
			src.grav = 0
			src.regen_dead = 0
			src.powerlevel = 50
			src.KO = 0
			src.rage = 0
			src.sight &= ~BLIND
			src.deaths += 1
			src.Gokus()
			M.kills += 1
			M.LooseK()
			world << "<FONT color = red>Battle Information:<FONT color = White> [src] died at the hands of [M]!"
			src.android_dead = 1
			spawn(300) src.android_dead = 0

		else
			if(src.race == "Majin")
				if(!src.regen_dead)
					src.icon_state = "Dead"
					src.frozen = 1
					src.boxing = 0

					src.doing = 1
					src.density = 1
					src.attack_lock = 1
					src.overlays -= small_death_ball
					src.charging = 0
					src.overlays -= big_death_ball
					src.ki_lock = 1
					src.it_lock = 1
					src.regen_dead = 1
					src.powerlevel = 0
					src.kaioken = 0
					src.KO = 0
					src.rage = 0
					src.sight &= ~BLIND
					M.kills += 1
					src.safe = 1
					spawn(30) src.safe = 0
				else
					spawn() src.Power_Redefine()
					for(var/obj/Dragonballs/O in src)
						src.e_db_1 = 0
						src.e_db_2 = 0
						src.e_db_3 = 0
						src.e_db_4 = 0
						src.e_db_5 = 0
						src.e_db_6 = 0
						src.e_db_7 = 0
						O.loc = src.loc
						..()
					for(var/obj/Namek_Dragonballs/O in src)
						src.n_db_1 = 0
						src.n_db_2 = 0
						src.n_db_3 = 0
						src.n_db_4 = 0
						src.n_db_5 = 0
						src.n_db_6 = 0
						src.n_db_7 = 0
						O.loc = src.loc
						..()
					src.buku = 0
					src.rest = 0
					src.frozen = 0
					src.boxing = 0

					src.doing = 0
					src.icon_state = ""
					src.density = 1
					src.loc = locate(55,6,3)
					src.attack_lock = 0
					src.ki_lock = 0
					src.dead = 1
					src.it_lock = 0
					src.it_blocked = 0
					src.regen_dead = 0
					src.grav_delay = 0
					src.grav_on = 0
					src.grav = 0
					src.kaioken = 0
					src.powerlevel = 50
					src.KO = 0
					src.rage = 0
					src.sight &= ~BLIND
					src.overlays += src.halo
					src.deaths += 1
					M.kills += 1
					src.Gokus()
					M.LooseK()
					src << "Your body was completely Destroyed!"
					world << "<FONT color = red>Battle Information:<FONT color = White> [src] died at the hands of [M]!"

			else
				spawn() src.Power_Redefine()
				for(var/obj/Dragonballs/O in src)
					src.e_db_1 = 0
					src.e_db_2 = 0
					src.e_db_3 = 0
					src.e_db_4 = 0
					src.e_db_5 = 0
					src.e_db_6 = 0
					src.e_db_7 = 0
					O.loc = src.loc
					..()

				for(var/obj/Namek_Dragonballs/O in src)
					src.n_db_1 = 0
					src.n_db_2 = 0
					src.n_db_3 = 0
					src.n_db_4 = 0
					src.n_db_5 = 0
					src.n_db_6 = 0
					src.n_db_7 = 0
					O.loc = src.loc
					..()

				src.buku = 0
				src.dead = 1
				src.charging = 0
				src.rest = 0
				src.frozen = 0
				src.overlays -= small_death_ball
				src.overlays -= big_death_ball
				src.boxing = 0

				src.doing = 0
				src.icon_state = ""
				src.density = 1
				src.loc = locate(55,6,3)
				src.attack_lock = 0
				src.ki_lock = 0
				src.it_lock = 0
				src.kaioken = 0
				src.it_blocked = 0
				src.grav_delay = 0
				src.grav_on = 0
				src.grav = 0
				src.powerlevel = 50
				src.KO = 0
				src.rage = 0
				src.sight &= ~BLIND
				src.overlays += src.halo
				src.deaths += 1
				src.Gokus()
				M.kills += 1
				M.LooseK()
				world << "<FONT color = red>Battle Information:<FONT color = White> [src] died at the hands of [M]!"

		for(var/mob/PC/M2 in view(12))
			if(!M2)return
			if(M2.race == "Saiyan" || M2.race == "Half Saiyan")
				M2.witness_deaths ++
				M2.Watchdeath()
				spawn() M2.Rage_Unleash()
			if(M2 == M)continue
			M2 << "\red You feel your Rage Grow..."
			M2.rage += round(rand(20,50))
			if(M2.rage >= 100)
				M2.rage = 100

 /***************\
|*****************|
|**ABSORB  DEATH**|
|*****************|
 \***************/

mob/proc/AbsorbDeathCheck()
	if(src.powerlevel <= 0)
		..()

mob/Monster/AbsorbDeathCheck(mob/PC/M)
	if(src.powerlevel <= 0)
		new/obj/techs/Overlays/Crater_Center(src.loc)

		var/bonus_exp = src.tnl
		if("minor_exp_buff" in M.buffs)
			bonus_exp += bonus_exp * 0.05
		if("exp_buff" in M.buffs)
			bonus_exp += bonus_exp * 0.25
		src.killer = M.name
		if(src.owner != M)
			M.exp += bonus_exp
			M.zenni += src.zenni
			M << "\white Zenni +[src.zenni]"
			M << "\white EXP +[bonus_exp]"
		spawn() M.Level_Up()
		for(var/mob/PC/B in world)
			if(src.owner == B)
				B.cell_jrs --

		for(var/mob/PC/S in world)
			if(src.maker == S)
				S.splits --

		if(src.race == "Green Saibaman")
			M.green_kills ++

		if(src.name == "{NPC} Brolly")
			M.brolly_kill ++

		if(src.name == "{NPC} Android 17")
			M.killed_17 = 1

		if(src.name == "{NPC} Android 18")
			M.killed_18 = 1

		if(src.name == "{NPC} Cell")
			M.killed_cell = 1


		if(src.race == "Henchman")
			M.thug_kills ++

		if(src.race == "CellJ")
			M.cell_jr_kills ++

		if(src.race == "Namekian Warrior")
			M.namek_kills ++

		if(src.name == "{NPC} Vegito")
			M.killed_vegito = 1


		M.kills ++
		M.LooseK()
		del(src)
		..()

mob/Saga/AbsorbDeathCheck(mob/PC/M)
	if(src.powerlevel <= 0)
		var/bonus_exp = src.tnl
		if("minor_exp_buff" in M.buffs)
			bonus_exp += bonus_exp * 0.05
		if("exp_buff" in M.buffs)
			bonus_exp += bonus_exp * 0.25
		M.exp += bonus_exp
		M.zenni += src.zenni
		if(src.name == "{NPC} Raditz")
			M.raditz_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Vegeta")
			M.raditz_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Nappa")
			M.nappa_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Burter")
			M.burter_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Captain Ginyu")
			M.captain_ginyu_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Guldo")
			M.guldo_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Jeice")
			M.jeice_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Recoom")
			M.recoom_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Frieza")
			M.frieza_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} King Cold")
			M.king_cold_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Android 16")
			M.android_16_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Android 17")
			M.android_17_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Android 18")
			M.android_18_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Cell")
			M.cell_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Perfect Cell")
			M.perfect_cell_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Majin Buu")
			M.majin_buu_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{{NPC} Kid Buu")
			M.kid_buu_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Goku")
			M.goku_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Piccolo")
			M.piccolo_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Yamcha")
			M.yamcha_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Tien")
			M.tien_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Krillin")
			M.krillin_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Gohan")
			M.gohan_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Choutzu")
			M.choutzu_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Vegeta")
			M.vegeta_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} SSJ Goku")
			M.SSJ_goku_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Trunks")
			M.trunks_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Gotenks")
			M.gotenks_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Vegito")
			M.vegito_wins+=1
			M.Evil_Sagas_fin()

		M << "\white Zenni +[src.zenni]"
		M << "\white EXP +[bonus_exp]"
		spawn() M.Level_Up()

		if(src.name == "{NPC} Dr Gero")
			if(prob(85))
				var/obj/Equipment/Micro_Chip/O = new
				O.icon = 'Micro Chip.dmi'
				O.loc = src.loc

		if(src.name == "{NPC} Android 19")
			if(prob(85))
				var/obj/Equipment/Micro_Chip/O = new
				O.icon = 'Micro Chip.dmi'
				O.loc = src.loc

		if(src.name == "{NPC} Android 16")
			if(prob(85))
				var/obj/Equipment/Micro_Chip/O = new
				O.icon = 'Micro Chip.dmi'
				O.loc = src.loc

		if(src.name == "{NPC} Android 18")
			if(prob(85))
				var/obj/Equipment/Micro_Chip/O = new
				O.icon = 'Micro Chip.dmi'
				O.loc = src.loc

		if(src.name == "{NPC} Android 17")
			if(prob(85))
				var/obj/Equipment/Micro_Chip/O = new
				O.icon = 'Micro Chip.dmi'
				O.loc = src.loc

		if(raditz_saga_on)
			raditz_saga ++

		if(vegeta_saga_on)
			vegeta_saga ++

		if(ginyu_saga_on)
			ginyu_saga ++

		if(frieza_saga_on)
			frieza_saga ++

		if(android_saga_on)
			android_saga ++

		if(cell_saga_on)
			cell_saga ++

		if(majin_saga_on)
			majin_saga ++

		if(goku_piccolo_saga_on)
			goku_piccolo_saga ++

		if(z_force_saga_on)
			z_force_saga ++

		if(z_force_saga2_on)
			z_force_saga2 ++

		if(z_force_2_saga_on)
			z_force_2_saga ++

		if(z_force2_2_saga_on)
			z_force2_2_saga ++

		if(super_piccolo_saga_on)
			super_piccolo_saga ++

		if(super_goku_saga_on)
			super_piccolo_saga ++
			super_goku_saga ++

		if(ssj_goku_saga2_on)
			ssj_goku_saga2 ++

		if(trunks_saga_on)
			trunks_saga ++

		if(ssj_goku_2_saga_on)
			ssj_goku_2_saga ++

		if(ssj_vegeta_saga_on)
			ssj_vegeta_saga ++

		if(super_piccolo_2_saga_on)
			super_piccolo_2_saga ++

		if(ascended_vegeta_saga_on)
			ascended_vegeta_saga ++

		if(ascended_trunks_saga_on)
			ascended_trunks_saga ++

		if(z_fighters_3_saga_on)
			z_fighters_3_saga ++

		if(ssj_2_gohan_on)
			ssj_2_gohan ++

		if(ssj_2_gohan_2_saga_on)
			ssj_2_gohan_2_saga ++

		if(ssj_2_goku_saga_on)
			ssj_2_goku_saga ++

		if(gotenks_saga_on)
			gotenks_saga ++

		if(mystic_gohan_saga_on)
			mystic_gohan_saga ++

		if(vegito_saga_on)
			vegito_saga ++

		if(goku_vegeta_kais_saga_on)
			goku_vegeta_kais_saga ++


		del(src)
		..()

mob/PC/AbsorbDeathCheck(mob/M)
	var/zenniup = 0

	if(src.powerlevel <= 0)
		if(src.guildb)
			if(src.opponent == "[M]")
				for(var/mob/C in world)
					if(C.guild_name == src.guild_name)
						C << "<FONT color = green>Guild Battle Information:<FONT color = White> [src] was defeated by [M]!"

				M.guildb = 0
				src.guildb = 0
				M.Power_Redefine()
				src.Power_Redefine()
				src << "<Font color=white>Your base power has been obtained."
				M << "<Font color=white>Your base power has been obtained."

				if(src.guildbrank >= M.guildbrank)
					M.guildbrank ++
					M << "<font color = #BB0EDA>Guild Information:</font> Your Guild Battle Rank has gone up!"
				return
		if(src.arenab)
			if(src.opponent == "[M]")
				for(var/mob/PC/C in world)
					C << "<FONT color = #66FFFF>Arena Information:<FONT color = White> [src] was defeated by [M]!"

				arena_battle_on = 0

				M.arenab = 0
				src.arenab = 0
				M.arena_wins += 1
				M.Arena_winsM()
				src.arena_losses += 1
				src.zenni /= 2
				zenniup = src.zenni
				M.zenni += zenniup
				M << "\white You gained [zenniup] Zenni!"
				src << "\white You lost [zenniup] Zenni..."
				return
		if(src.level >= M.level / 4)
			if(M.combat_points < M.combat_points_max)
				M.combat_points += 50
				M << "Your Combat Points have increased by: \red 50"

		if(M.karma == src.karma)
			M.karma_rating -= 1
		else
			M.karma_rating += 1

		if(M.karma_rating < 0)
			if(M.karma == "Good")
				M << "<I>You feel an Evil inside of you begin to awaken..."
				M.karma = "Evil"
				M.karma_rating = 0
			else
				M << "<I>You feel the Good inside of you begin to awaken..."
				M.karma = "Good"
				M.karma_rating = 0

		spawn() src.Power_Redefine()

		src.loc = locate(55,6,3)

		if(src.race == "Majin")
			if(!src.regen_dead)
				for(var/obj/Dragonballs/O in src)
					src.e_db_1 = 0
					src.e_db_2 = 0
					src.e_db_3 = 0
					src.e_db_4 = 0
					src.e_db_5 = 0
					src.e_db_6 = 0
					src.e_db_7 = 0
					O.loc = src.loc
					..()
				for(var/obj/Namek_Dragonballs/O in src)
					src.n_db_1 = 0
					src.n_db_2 = 0
					src.n_db_3 = 0
					src.n_db_4 = 0
					src.n_db_5 = 0
					src.n_db_6 = 0
					src.n_db_7 = 0
					O.loc = src.loc
					..()

				src.rest = 0
				src.frozen = 0
				src.overlays -= small_death_ball
				src.overlays -= big_death_ball
				src.boxing = 0

				src.doing = 0
				src.icon_state = ""
				src.density = 1
				src.charging = 0
				src.attack_lock = 0
				src.ki_lock = 0
				src.it_lock = 0
				src.grav_delay = 0
				src.grav_on = 0
				src.grav = 0
				src.buku_lock = 0
				src.it_blocked = 0
				src.kaioken = 0
				src.regen_dead = 0
				src.powerlevel = 50
				src.KO = 0
				src.rage = 0
				src.sight &= ~BLIND
				src.overlays += src.halo
				src.deaths += 1
				src.Gokus()
				M.kills += 1
				M.LooseK()
				src << "Your body was Absorbed!"
				world << "<FONT color = red>Battle Information:<FONT color = White> [src] was Absorbed by [M]!"

		else
			for(var/obj/Dragonballs/O in src)
				src.e_db_1 = 0
				src.e_db_2 = 0
				src.e_db_3 = 0
				src.e_db_4 = 0
				src.e_db_5 = 0
				src.e_db_6 = 0
				src.e_db_7 = 0
				O.loc = src.loc
				..()

			for(var/obj/Namek_Dragonballs/O in src)
				src.n_db_1 = 0
				src.n_db_2 = 0
				src.n_db_3 = 0
				src.n_db_4 = 0
				src.n_db_5 = 0
				src.n_db_6 = 0
				src.n_db_7 = 0
				O.loc = src.loc
				..()
			src.buku = 0
			src.dead = 1
			src.rest = 0
			src.frozen = 0
			src.overlays -= small_death_ball
			src.charging = 0
			src.overlays -= big_death_ball
			src.boxing = 0

			src.doing = 0
			src.icon_state = ""
			src.density = 1
			src.attack_lock = 0
			src.ki_lock = 0
			src.it_lock = 0
			src.grav_delay = 0
			src.grav_on = 0
			src.grav = 0
			src.buku_lock = 0
			src.it_blocked = 0
			src.kaioken = 0
			src.powerlevel = 50
			src.KO = 0
			src.rage = 0
			src.sight &= ~BLIND
			src.overlays += src.halo
			src.Gokus()
			src.deaths += 1
			M.kills += 1
			M.LooseK()
			world << "<FONT color = red>Battle Information:<FONT color = White> [src] was Absorbed by [M]!"

		for(var/mob/PC/M2 in view(8))
			if(!M2)return
			if(M2.race == "Saiyan" || M2.race == "Half Saiyan")
				M2.witness_deaths ++
				M2.Watchdeath()
				spawn() M2.Rage_Unleash()
			if(M2 == M)continue
			M2 << "\red You feel your Rage Grow..."
			M2.rage += round(rand(20,50))
			if(M2.rage >= 100)
				M2.rage = 100


mob
	proc
		GRAVITYDeath()
			if(src.powerlevel <= 0)

				src.grav_on = 0
				src.grav = 0
				src.grav_popup = 0

				world << "<FONT color = #F3982D>Training Information:<FONT color = White> [src] died whilst Gravity Training!"

				spawn() src.Power_Redefine()

				if(src.race == "Android")
					for(var/obj/Dragonballs/O in src)
						src.e_db_1 = 0
						src.e_db_2 = 0
						src.e_db_3 = 0
						src.e_db_4 = 0
						src.e_db_5 = 0
						src.e_db_6 = 0
						src.e_db_7 = 0
						O.loc = src.loc
						..()
					for(var/obj/Namek_Dragonballs/O in src)
						src.n_db_1 = 0
						src.n_db_2 = 0
						src.n_db_3 = 0
						src.n_db_4 = 0
						src.n_db_5 = 0
						src.n_db_6 = 0
						src.n_db_7 = 0
						O.loc = src.loc
						..()

					src.absorbing = 0
					src.powerlevel = src.powerlevel_max
					src.ki = src.ki_max
					src.strength = src.strength_max
					src.defence = src.defence_max
					src.speed = src.speed_max
					src.buku = 0
					src.rest = 0
					src.overlays -= small_death_ball
					src.overlays -= big_death_ball
					src.frozen = 0
					src.boxing = 0

					src.doing = 0
					src.icon_state = ""
					src.density = 1
					src.loc = locate(162,7,3)
					src.charging = 0
					src.attack_lock = 0
					src.ki_lock = 0
					src.buku_lock = 0
					src.it_lock = 0
					src.it_blocked = 0
					src.regen_dead = 0
					src.kaioken = 0
					src.powerlevel = 50
					src.KO = 0
					src.rage = 0
					src.sight &= ~BLIND
					src.deaths += 1
					src.Gokus()
					src.android_dead = 1
					spawn(300) src.android_dead = 0

				else
					if(src.race == "Majin")
						for(var/obj/Dragonballs/O in src)
							src.e_db_1 = 0
							src.e_db_2 = 0
							src.e_db_3 = 0
							src.e_db_4 = 0
							src.e_db_5 = 0
							src.e_db_6 = 0
							src.e_db_7 = 0
							O.loc = src.loc
							..()
						for(var/obj/Namek_Dragonballs/O in src)
							src.n_db_1 = 0
							src.n_db_2 = 0
							src.n_db_3 = 0
							src.n_db_4 = 0
							src.n_db_5 = 0
							src.n_db_6 = 0
							src.n_db_7 = 0
							O.loc = src.loc
							..()
						src.buku = 0
						src.rest = 0
						src.frozen = 0
						src.boxing = 0

						src.buku_lock = 0
						src.doing = 0
						src.icon_state = ""
						src.density = 1
						src.loc = locate(55,6,3)
						src.attack_lock = 0
						src.ki_lock = 0
						src.dead = 1
						src.it_lock = 0
						src.it_blocked = 0
						src.regen_dead = 0
						src.powerlevel = 50
						src.kaioken = 0
						src.KO = 0
						src.rage = 0
						src.sight &= ~BLIND
						src.overlays += src.halo
						src.deaths += 1
						src.Gokus()
						src << "Your body was completely Destroyed!"

					else
						for(var/obj/Dragonballs/O in src)
							src.e_db_1 = 0
							src.e_db_2 = 0
							src.e_db_3 = 0
							src.e_db_4 = 0
							src.e_db_5 = 0
							src.e_db_6 = 0
							src.e_db_7 = 0
							O.loc = src.loc
							..()

						for(var/obj/Namek_Dragonballs/O in src)
							src.n_db_1 = 0
							src.n_db_2 = 0
							src.n_db_3 = 0
							src.n_db_4 = 0
							src.n_db_5 = 0
							src.n_db_6 = 0
							src.n_db_7 = 0
							O.loc = src.loc
							..()

						src.buku = 0
						src.dead = 1
						src.rest = 0
						src.frozen = 0
						src.overlays -= small_death_ball
						src.overlays -= big_death_ball
						src.boxing = 0
						src.buku_lock = 0

						src.doing = 0
						src.icon_state = ""
						src.density = 1
						src.loc = locate(55,6,3)
						src.attack_lock = 0
						src.ki_lock = 0
						src.charging = 0
						src.it_lock = 0
						src.it_blocked = 0
						src.powerlevel = 50
						src.kaioken = 0
						src.KO = 0
						src.rage = 0
						src.sight &= ~BLIND
						src.overlays += src.halo
						src.Gokus()
						src.deaths += 1


 /***************\
|*****************|
|**ABSORB  DEATH**|
|*****************|
 \***************/

mob/proc/CandyDeathCheck()
	if(src.powerlevel <= 0)
		..()

mob/Monster/CandyDeathCheck(mob/PC/M)
	if(src.powerlevel <= 0)
		new/obj/techs/Overlays/Crater_Center(src.loc)

		var/bonus_exp = src.tnl
		if("minor_exp_buff" in M.buffs)
			bonus_exp += bonus_exp * 0.05
		if("exp_buff" in M.buffs)
			bonus_exp += bonus_exp * 0.25
		src.killer = M.name
		if(src.owner != M)
			M.exp += bonus_exp
			M.zenni += src.zenni
			M << "\white Zenni +[src.zenni]"
			M << "\white EXP +[bonus_exp]"
		spawn() M.Level_Up()
		for(var/mob/PC/B in world)
			if(src.owner == B)
				B.cell_jrs --

		for(var/mob/PC/S in world)
			if(src.maker == S)
				S.splits --

		if(src.race == "Green Saibaman")
			M.green_kills ++

		if(src.name == "{NPC} Brolly")
			M.brolly_kill ++

		if(src.name == "{NPC} Android 17")
			M.killed_17 = 1

		if(src.name == "{NPC} Android 18")
			M.killed_18 = 1

		if(src.name == "{NPC} Cell")
			M.killed_cell = 1

		if(src.race == "Henchman")
			M.thug_kills ++

		if(src.race == "CellJ")
			M.cell_jr_kills ++

		if(src.race == "Namekian Warrior")
			M.namek_kills ++

		if(src.name == "{NPC} Vegito")
			M.killed_vegito = 1


		M.kills ++
		M.LooseK()
		del(src)
		..()

mob/Saga/CandyDeathCheck(mob/PC/M)
	if(src.powerlevel <= 0)
		var/bonus_exp = src.tnl
		if("minor_exp_buff" in M.buffs)
			bonus_exp += bonus_exp * 0.05
		if("exp_buff" in M.buffs)
			bonus_exp += bonus_exp * 0.25
		M.exp += bonus_exp
		M.zenni += src.zenni
		if(src.name == "{NPC} Raditz")
			M.raditz_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Vegeta")
			M.raditz_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Nappa")
			M.nappa_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Burter")
			M.burter_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Captain Ginyu")
			M.captain_ginyu_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Guldo")
			M.guldo_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Jeice")
			M.jeice_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Recoom")
			M.recoom_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Frieza")
			M.frieza_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} King Cold")
			M.king_cold_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Android 16")
			M.android_16_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Android 17")
			M.android_17_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Android 18")
			M.android_18_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Cell")
			M.cell_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Perfect Cell")
			M.perfect_cell_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Majin Buu")
			M.majin_buu_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{{NPC} Kid Buu")
			M.kid_buu_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Goku")
			M.goku_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Piccolo")
			M.piccolo_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Yamcha")
			M.yamcha_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Tien")
			M.tien_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Krillin")
			M.krillin_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Gohan")
			M.gohan_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Choutzu")
			M.choutzu_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Vegeta")
			M.vegeta_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} SSJ Goku")
			M.SSJ_goku_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Trunks")
			M.trunks_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Gotenks")
			M.gotenks_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Vegito")
			M.vegito_wins+=1
			M.Evil_Sagas_fin()
		M << "\white Zenni +[src.zenni]"
		M << "\white EXP +[bonus_exp]"
		spawn() M.Level_Up()

		if(src.name == "{NPC} Dr Gero")
			if(prob(85))
				var/obj/Equipment/Micro_Chip/O = new
				O.icon = 'Micro Chip.dmi'
				O.loc = src.loc

		if(src.name == "{NPC} Android 19")
			if(prob(85))
				var/obj/Equipment/Micro_Chip/O = new
				O.icon = 'Micro Chip.dmi'
				O.loc = src.loc

		if(src.name == "{NPC} Android 16")
			if(prob(85))
				var/obj/Equipment/Micro_Chip/O = new
				O.icon = 'Micro Chip.dmi'
				O.loc = src.loc

		if(src.name == "{NPC} Android 18")
			if(prob(85))
				var/obj/Equipment/Micro_Chip/O = new
				O.icon = 'Micro Chip.dmi'
				O.loc = src.loc

		if(src.name == "{NPC} Android 17")
			if(prob(85))
				var/obj/Equipment/Micro_Chip/O = new
				O.icon = 'Micro Chip.dmi'
				O.loc = src.loc
		if(raditz_saga_on)
			raditz_saga ++

		if(vegeta_saga_on)
			vegeta_saga ++

		if(ginyu_saga_on)
			ginyu_saga ++

		if(frieza_saga_on)
			frieza_saga ++

		if(android_saga_on)
			android_saga ++

		if(cell_saga_on)
			cell_saga ++

		if(majin_saga_on)
			majin_saga ++

		if(goku_piccolo_saga_on)
			goku_piccolo_saga ++

		if(z_force_saga_on)
			z_force_saga ++

		if(z_force_saga2_on)
			z_force_saga2 ++

		if(z_force_2_saga_on)
			z_force_2_saga ++

		if(z_force2_2_saga_on)
			z_force2_2_saga ++

		if(super_piccolo_saga_on)
			super_piccolo_saga ++

		if(super_goku_saga_on)
			super_piccolo_saga ++
			super_goku_saga ++

		if(ssj_goku_saga2_on)
			ssj_goku_saga2 ++

		if(trunks_saga_on)
			trunks_saga ++

		if(ssj_goku_2_saga_on)
			ssj_goku_2_saga ++

		if(ssj_vegeta_saga_on)
			ssj_vegeta_saga ++

		if(super_piccolo_2_saga_on)
			super_piccolo_2_saga ++

		if(ascended_vegeta_saga_on)
			ascended_vegeta_saga ++

		if(ascended_trunks_saga_on)
			ascended_trunks_saga ++

		if(z_fighters_3_saga_on)
			z_fighters_3_saga ++

		if(ssj_2_gohan_on)
			ssj_2_gohan ++

		if(ssj_2_gohan_2_saga_on)
			ssj_2_gohan_2_saga ++

		if(ssj_2_goku_saga_on)
			ssj_2_goku_saga ++

		if(gotenks_saga_on)
			gotenks_saga ++

		if(mystic_gohan_saga_on)
			mystic_gohan_saga ++

		if(vegito_saga_on)
			vegito_saga ++

		if(goku_vegeta_kais_saga_on)
			goku_vegeta_kais_saga ++

		del(src)
		..()

mob/PC/CandyDeathCheck(mob/M)
	var/zenniup = 0

	if(src.powerlevel <= 0)
		if(src.guildb)
			if(src.opponent == "[M]")
				for(var/mob/C in world)
					if(C.guild_name == src.guild_name)
						C << "<FONT color = green>Guild Battle Information:<FONT color = White> [src] was defeated by [M]!"

				M.guildb = 0
				src.guildb = 0
				M.Power_Redefine()
				src.Power_Redefine()
				src << "<Font color=white>Your base power has been obtained."
				M << "<Font color=white>Your base power has been obtained."

				if(src.guildbrank >= M.guildbrank)
					M.guildbrank ++
					M << "<font color = #BB0EDA>Guild Information:</font> Your Guild Battle Rank has gone up!"
				return

		if(src.arenab)
			if(src.opponent == "[M]")
				for(var/mob/PC/C in world)
					C << "<FONT color = #66FFFF>Arena Information:<FONT color = White> [src] was defeated by [M]!"

				arena_battle_on = 0
				M.arenab = 0
				src.arenab = 0
				M.arena_wins += 1
				M.Arena_winsM()
				src.arena_losses += 1
				src.zenni /= 2
				zenniup = src.zenni
				M.zenni += zenniup
				M << "\white You gained [zenniup] Zenni!"
				src << "\white You lost [zenniup] Zenni..."
				return
		if(src.level >= M.level / 4)
			if(M.combat_points < M.combat_points_max)
				M.combat_points += 50
				M << "Your Combat Points have increased by: \red 50"

		if(M.karma == src.karma)
			M.karma_rating -= 1
		else
			M.karma_rating += 1

		if(M.karma_rating < 0)
			if(M.karma == "Good")
				M << "<I>You feel an Evil inside of you begin to awaken..."
				M.karma = "Evil"
				M.karma_rating = 0
			else
				M << "<I>You feel the Good inside of you begin to awaken..."
				M.karma = "Good"
				M.karma_rating = 0

		spawn() src.Power_Redefine()

		src.loc = locate(55,6,3)

		if(src.race == "Majin")
			if(!src.regen_dead)
				for(var/obj/Dragonballs/O in src)
					src.e_db_1 = 0
					src.e_db_2 = 0
					src.e_db_3 = 0
					src.e_db_4 = 0
					src.e_db_5 = 0
					src.e_db_6 = 0
					src.e_db_7 = 0
					O.loc = src.loc
					..()

				for(var/obj/Namek_Dragonballs/O in src)
					src.n_db_1 = 0
					src.n_db_2 = 0
					src.n_db_3 = 0
					src.n_db_4 = 0
					src.n_db_5 = 0
					src.n_db_6 = 0
					src.n_db_7 = 0
					O.loc = src.loc
					..()
				src.rest = 0
				src.frozen = 0
				src.overlays -= small_death_ball
				src.overlays -= big_death_ball
				src.boxing = 0

				src.doing = 0
				src.icon_state = ""
				src.density = 1
				src.charging = 0
				src.attack_lock = 0
				src.ki_lock = 0
				src.it_lock = 0
				src.buku_lock = 0
				src.it_blocked = 0
				src.regen_dead = 0
				src.grav_delay = 0
				src.grav_on = 0
				src.grav = 0
				src.kaioken = 0
				src.powerlevel = 50
				src.KO = 0
				src.rage = 0
				src.sight &= ~BLIND
				src.overlays += src.halo
				src.deaths += 1
				src.Gokus()
				M.kills += 1
				M.LooseK()
				src << "Your body was Absorbed!"
				world << "<FONT color = red>Battle Information:<FONT color = White> [src] was transformed into some candy by [M]!"

		else
			for(var/obj/Dragonballs/O in src)
				src.e_db_1 = 0
				src.e_db_2 = 0
				src.e_db_3 = 0
				src.e_db_4 = 0
				src.e_db_5 = 0
				src.e_db_6 = 0
				src.e_db_7 = 0
				O.loc = src.loc
				..()

			for(var/obj/Namek_Dragonballs/O in src)
				src.n_db_1 = 0
				src.n_db_2 = 0
				src.n_db_3 = 0
				src.n_db_4 = 0
				src.n_db_5 = 0
				src.n_db_6 = 0
				src.n_db_7 = 0
				O.loc = src.loc
				..()


			src.buku = 0
			src.dead = 1
			src.rest = 0
			src.frozen = 0
			src.overlays -= small_death_ball
			src.charging = 0
			src.overlays -= big_death_ball
			src.boxing = 0

			src.doing = 0
			src.icon_state = ""
			src.density = 1
			src.attack_lock = 0
			src.ki_lock = 0
			src.it_lock = 0
			src.grav_delay = 0
			src.grav_on = 0
			src.grav = 0
			src.buku_lock = 0
			src.it_blocked = 0
			src.kaioken = 0
			src.powerlevel = 50
			src.KO = 0
			src.rage = 0
			src.sight &= ~BLIND
			src.overlays += src.halo
			src.deaths += 1
			src.Gokus()
			M.kills += 1
			M.LooseK()
			world << "<FONT color = red>Battle Information:<FONT color = White> [src] was transformed into some candy by [M]!"

		for(var/mob/PC/M2 in view(8))
			if(!M2)return
			if(M2.race == "Saiyan" || M2.race == "Half Saiyan")
				M2.witness_deaths ++
				M2.Watchdeath()
				spawn() M2.Rage_Unleash()
			if(M2 == M)continue
			M2 << "\red You feel your Rage Grow..."
			M2.rage += round(rand(20,50))
			if(M2.rage >= 100)
				M2.rage = 100

mob/proc/BigKiDeathCheck2()
	if(src.powerlevel <= 0)
		..()

mob/Monster/BigKiDeathCheck2(mob/PC/M)
	if(src.powerlevel <= 0)
		new/obj/techs/Overlays/Crater_Center(src.loc)

		var/bonus_exp = src.tnl
		if("minor_exp_buff" in M.buffs)
			bonus_exp += bonus_exp * 0.05
		if("exp_buff" in M.buffs)
			bonus_exp += bonus_exp * 0.25
		src.killer = M.name
		if(src.owner != M)
			M.exp += bonus_exp
			M.zenni += src.zenni
			if(src.name == "{NPC} Raditz")
				M.raditz_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Vegeta")
				M.raditz_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Nappa")
				M.nappa_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Burter")
				M.burter_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Captain Ginyu")
				M.captain_ginyu_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Guldo")
				M.guldo_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Jeice")
				M.jeice_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Recoom")
				M.recoom_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Frieza")
				M.frieza_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} King Cold")
				M.king_cold_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Android 16")
				M.android_16_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Android 17")
				M.android_17_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Android 18")
				M.android_18_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Cell")
				M.cell_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Perfect Cell")
				M.perfect_cell_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Majin Buu")
				M.majin_buu_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{{NPC} Kid Buu")
				M.kid_buu_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Goku")
				M.goku_wins+=1
				M.Evil_Sagas_fin()

			if(src.name == "{NPC} Piccolo")
				M.piccolo_wins+=1
				M.Evil_Sagas_fin()

			if(src.name == "{NPC} Yamcha")
				M.yamcha_wins+=1
				M.Evil_Sagas_fin()

			if(src.name == "{NPC} Tien")
				M.tien_wins+=1
				M.Evil_Sagas_fin()

			if(src.name == "{NPC} Krillin")
				M.krillin_wins+=1
				M.Evil_Sagas_fin()

			if(src.name == "{NPC} Gohan")
				M.gohan_wins+=1
				M.Evil_Sagas_fin()

			if(src.name == "{NPC} Choutzu")
				M.choutzu_wins+=1
				M.Evil_Sagas_fin()

			if(src.name == "{NPC} Vegeta")
				M.vegeta_wins+=1
				M.Evil_Sagas_fin()

			if(src.name == "{NPC} SSJ Goku")
				M.SSJ_goku_wins+=1
				M.Evil_Sagas_fin()

			if(src.name == "{NPC} Trunks")
				M.trunks_wins+=1
				M.Evil_Sagas_fin()

			if(src.name == "{NPC} Gotenks")
				M.gotenks_wins+=1
				M.Evil_Sagas_fin()

			if(src.name == "{NPC} Vegito")
				M.vegito_wins+=1
				M.Evil_Sagas_fin()
				M << "\white Zenni +[src.zenni]"
				M << "\white EXP +[bonus_exp]"
		spawn() M.Level_Up()
		for(var/mob/PC/B in world)
			if(src.owner == B)
				B.cell_jrs --

		for(var/mob/PC/S in world)
			if(src.maker == S)
				S.splits --

		if(src.race == "Green Saibaman")
			M.green_kills ++

		if(src.name == "{NPC} Brolly")
			M.brolly_kill ++

		if(src.name == "{NPC} Android 17")
			M.killed_17 = 1

		if(src.name == "{NPC} Android 18")
			M.killed_18 = 1

		if(src.name == "{NPC} Cell")
			M.killed_cell = 1

		if(src.race == "Henchman")
			M.thug_kills ++

		if(src.race == "CellJ")
			M.cell_jr_kills ++

		if(src.name == "{NPC} Vegito")
			M.killed_vegito = 1

		if(src.race == "Namekian Warrior")
			M.namek_kills ++


		M.kills ++
		M.LooseK()
		del(src)
		..()

mob/Saga/BigKiDeathCheck2(mob/PC/M)
	if(src.powerlevel <= 0)

		var/bonus_exp = src.tnl
		if("minor_exp_buff" in M.buffs)
			bonus_exp += bonus_exp * 0.05
		if("exp_buff" in M.buffs)
			bonus_exp += bonus_exp * 0.25
		M.exp += bonus_exp
		M.zenni += src.zenni
		if(src.name == "{NPC} Raditz")
			M.raditz_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Vegeta")
			M.raditz_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Nappa")
			M.nappa_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Burter")
			M.burter_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Captain Ginyu")
			M.captain_ginyu_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Guldo")
			M.guldo_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Jeice")
			M.jeice_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Recoom")
			M.recoom_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Frieza")
			M.frieza_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} King Cold")
			M.king_cold_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Android 16")
			M.android_16_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Android 17")
			M.android_17_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Android 18")
			M.android_18_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Cell")
			M.cell_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Perfect Cell")
			M.perfect_cell_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Majin Buu")
			M.majin_buu_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{{NPC} Kid Buu")
			M.kid_buu_wins+=1
			M.Good_Sagas_fin()
		if(src.name == "{NPC} Goku")
			M.goku_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Piccolo")
			M.piccolo_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Yamcha")
			M.yamcha_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Tien")
			M.tien_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Krillin")
			M.krillin_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Gohan")
			M.gohan_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Choutzu")
			M.choutzu_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Vegeta")
			M.vegeta_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} SSJ Goku")
			M.SSJ_goku_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Trunks")
			M.trunks_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Gotenks")
			M.gotenks_wins+=1
			M.Evil_Sagas_fin()

		if(src.name == "{NPC} Vegito")
			M.vegito_wins+=1
			M.Evil_Sagas_fin()
		M << "\white Zenni +[src.zenni]"
		M << "\white EXP +[bonus_exp]"
		spawn() M.Level_Up()

		if(src.name == "{NPC} Dr Gero")
			if(prob(85))
				var/obj/Equipment/Micro_Chip/O = new
				O.icon = 'Micro Chip.dmi'
				O.loc = src.loc

		if(src.name == "{NPC} Android 19")
			if(prob(85))
				var/obj/Equipment/Micro_Chip/O = new
				O.icon = 'Micro Chip.dmi'
				O.loc = src.loc

		if(src.name == "{NPC} Android 16")
			if(prob(85))
				var/obj/Equipment/Micro_Chip/O = new
				O.icon = 'Micro Chip.dmi'
				O.loc = src.loc

		if(src.name == "{NPC} Android 18")
			if(prob(85))
				var/obj/Equipment/Micro_Chip/O = new
				O.icon = 'Micro Chip.dmi'
				O.loc = src.loc

		if(src.name == "{NPC} Android 17")
			if(prob(85))
				var/obj/Equipment/Micro_Chip/O = new
				O.icon = 'Micro Chip.dmi'
				O.loc = src.loc

		if(raditz_saga_on)
			raditz_saga ++
			M.raditz_wins+=1
			M.Good_Sagas_fin()

		if(vegeta_saga_on)
			vegeta_saga ++
			M.vegeta_wins+=1
			M.Good_Sagas_fin()

		if(ginyu_saga_on)
			ginyu_saga ++

		if(frieza_saga_on)
			frieza_saga ++

		if(android_saga_on)
			android_saga ++

		if(cell_saga_on)
			cell_saga ++

		if(majin_saga_on)
			majin_saga ++

		if(goku_piccolo_saga_on)
			goku_piccolo_saga ++

		if(z_force_saga_on)
			z_force_saga ++

		if(z_force_saga2_on)
			z_force_saga2 ++

		if(z_force_2_saga_on)
			z_force_2_saga ++

		if(z_force2_2_saga_on)
			z_force2_2_saga ++

		if(super_piccolo_saga_on)
			super_piccolo_saga ++

		if(super_goku_saga_on)
			super_piccolo_saga ++
			super_goku_saga ++

		if(ssj_goku_saga2_on)
			ssj_goku_saga2 ++

		if(trunks_saga_on)
			trunks_saga ++

		if(ssj_goku_2_saga_on)
			ssj_goku_2_saga ++

		if(ssj_vegeta_saga_on)
			ssj_vegeta_saga ++

		if(super_piccolo_2_saga_on)
			super_piccolo_2_saga ++

		if(ascended_vegeta_saga_on)
			ascended_vegeta_saga ++

		if(ascended_trunks_saga_on)
			ascended_trunks_saga ++

		if(z_fighters_3_saga_on)
			z_fighters_3_saga ++

		if(ssj_2_gohan_on)
			ssj_2_gohan ++

		if(ssj_2_gohan_2_saga_on)
			ssj_2_gohan_2_saga ++

		if(ssj_2_goku_saga_on)
			ssj_2_goku_saga ++

		if(gotenks_saga_on)
			gotenks_saga ++

		if(mystic_gohan_saga_on)
			mystic_gohan_saga ++

		if(vegito_saga_on)
			vegito_saga ++

		if(goku_vegeta_kais_saga_on)
			goku_vegeta_kais_saga ++

		del(src)
		..()

mob/PC/BigKiDeathCheck2(mob/M)
	var/zenniup = 0

	if(src.powerlevel <= 0)
		new/obj/techs/Overlays/Crater_Center(src.loc)

		if(src.guildb)
			if(src.opponent == "[M]")
				for(var/mob/C in world)
					if(C.guild_name == src.guild_name)
						C << "<FONT color = green>Guild Battle Information:<FONT color = White> [src] was defeated by All Star!"

				M.guildb = 0
				src.guildb = 0
				M.Power_Redefine()
				src.Power_Redefine()
				src << "<Font color=white>Your base power has been obtained."
				M << "<Font color=white>Your base power has been obtained."

				if(src.guildbrank >= M.guildbrank)
					M.guildbrank ++
					M << "<font color = #BB0EDA>Guild Information:</font> Your Guild Battle Rank has gone up!"
				return
		if(src.arenab)
			if(src.opponent == "[M]")
				for(var/mob/PC/C in world)
					C << "<FONT color = #66FFFF>Arena Information:<FONT color = White> [src] was defeated by All Star!"
				arena_battle_on = 0


				M.arenab = 0
				src.arenab = 0
				M.arena_wins += 1
				M.Arena_winsM()
				src.arena_losses += 1
				src.zenni /= 2
				zenniup = src.zenni
				M.zenni += zenniup
				M << "\white You gained [zenniup] Zenni!"
				src << "\white You lost [zenniup] Zenni..."
				return
		if(src.level >= M.level / 4)
			if(M.combat_points < M.combat_points_max)
				M.combat_points += 50
				M << "Your Combat Points have increased by: \red 50"

		if(M.karma == src.karma)
			M.karma_rating -= 1
		else
			M.karma_rating += 1

		if(M.karma_rating < 0)
			if(M.karma == "Good")
				M.karma = "Evil"
				M << "<I>You feel an Evil inside of you begin to awaken..."
				M.karma_rating = 0
			else
				M.karma = "Good"
				M << "<I>You feel the Good inside of you begin to awaken..."
				M.karma_rating = 0


		if(src.race == "Android")
			for(var/obj/Dragonballs/O in src)
				src.e_db_1 = 0
				src.e_db_2 = 0
				src.e_db_3 = 0
				src.e_db_4 = 0
				src.e_db_5 = 0
				src.e_db_6 = 0
				src.e_db_7 = 0
				O.loc = src.loc
				..()

			for(var/obj/Namek_Dragonballs/O in src)
				src.n_db_1 = 0
				src.n_db_2 = 0
				src.n_db_3 = 0
				src.n_db_4 = 0
				src.n_db_5 = 0
				src.n_db_6 = 0
				src.n_db_7 = 0
				O.loc = src.loc
				..()
			src.absorbing = 0

			src.powerlevel = src.powerlevel_max
			src.ki = src.ki_max
			src.strength = src.strength_max
			src.defence = src.defence_max
			src.speed = src.speed_max
			src.buku = 0
			src.overlays -= small_death_ball
			src.overlays -= big_death_ball
			src.rest = 0
			src.frozen = 0
			src.boxing = 0

			src.doing = 0
			src.icon_state = ""
			src.charging = 0
			src.density = 1
			src.loc = locate(162,7,3)
			src.attack_lock = 0
			src.ki_lock = 0
			src.it_lock = 0
			src.it_blocked = 0
			src.kaioken = 0
			src.grav_delay = 0
			src.grav_on = 0
			src.grav = 0
			src.regen_dead = 0
			src.powerlevel = 50
			src.KO = 0
			src.rage = 0
			src.sight &= ~BLIND
			src.deaths += 1
			src.Gokus()
			M.kills += 1
			M.LooseK()
			world << "<FONT color = red>Battle Information:<FONT color = White> [src] died at the hands of All Star!"
			src.android_dead = 1
			spawn(300) src.android_dead = 0

		else
			if(src.race == "Majin")
				if(!src.regen_dead)
					src.icon_state = "Dead"
					src.frozen = 1
					src.boxing = 0

					src.doing = 1
					src.density = 1
					src.attack_lock = 1
					src.overlays -= small_death_ball
					src.charging = 0
					src.overlays -= big_death_ball
					src.ki_lock = 1
					src.it_lock = 1
					src.regen_dead = 1
					src.powerlevel = 0
					src.kaioken = 0
					src.KO = 0
					src.rage = 0
					src.sight &= ~BLIND
					M.kills += 1
					src.safe = 1
					spawn(30) src.safe = 0
				else
					spawn() src.Power_Redefine()
					for(var/obj/Dragonballs/O in src)
						src.e_db_1 = 0
						src.e_db_2 = 0
						src.e_db_3 = 0
						src.e_db_4 = 0
						src.e_db_5 = 0
						src.e_db_6 = 0
						src.e_db_7 = 0
						O.loc = src.loc
						..()
					for(var/obj/Namek_Dragonballs/O in src)
						src.n_db_1 = 0
						src.n_db_2 = 0
						src.n_db_3 = 0
						src.n_db_4 = 0
						src.n_db_5 = 0
						src.n_db_6 = 0
						src.n_db_7 = 0
						O.loc = src.loc
						..()
					src.buku = 0
					src.rest = 0
					src.frozen = 0
					src.boxing = 0

					src.doing = 0
					src.icon_state = ""
					src.density = 1
					src.loc = locate(55,6,3)
					src.attack_lock = 0
					src.ki_lock = 0
					src.dead = 1
					src.it_lock = 0
					src.it_blocked = 0
					src.regen_dead = 0
					src.grav_delay = 0
					src.grav_on = 0
					src.grav = 0
					src.kaioken = 0
					src.powerlevel = 50
					src.KO = 0
					src.rage = 0
					src.sight &= ~BLIND
					src.overlays += src.halo
					src.deaths += 1
					M.kills += 1
					src.Gokus()
					M.LooseK()
					src << "Your body was completely Destroyed!"
					world << "<FONT color = red>Battle Information:<FONT color = White> [src] died at the hands of All Star!"

			else
				spawn() src.Power_Redefine()
				for(var/obj/Dragonballs/O in src)
					src.e_db_1 = 0
					src.e_db_2 = 0
					src.e_db_3 = 0
					src.e_db_4 = 0
					src.e_db_5 = 0
					src.e_db_6 = 0
					src.e_db_7 = 0
					O.loc = src.loc
					..()

				for(var/obj/Namek_Dragonballs/O in src)
					src.n_db_1 = 0
					src.n_db_2 = 0
					src.n_db_3 = 0
					src.n_db_4 = 0
					src.n_db_5 = 0
					src.n_db_6 = 0
					src.n_db_7 = 0
					O.loc = src.loc
					..()

				src.buku = 0
				src.dead = 1
				src.charging = 0
				src.rest = 0
				src.frozen = 0
				src.overlays -= small_death_ball
				src.overlays -= big_death_ball
				src.boxing = 0

				src.doing = 0
				src.icon_state = ""
				src.density = 1
				src.loc = locate(55,6,3)
				src.attack_lock = 0
				src.ki_lock = 0
				src.it_lock = 0
				src.kaioken = 0
				src.it_blocked = 0
				src.grav_delay = 0
				src.grav_on = 0
				src.grav = 0
				src.powerlevel = 50
				src.KO = 0
				src.rage = 0
				src.sight &= ~BLIND
				src.overlays += src.halo
				src.deaths += 1
				src.Gokus()
				M.kills += 1
				M.LooseK()
				world << "<FONT color = red>Battle Information:<FONT color = White> [src] died at the hands of All Star!"

		for(var/mob/PC/M2 in view(12))
			if(!M2)return
			if(M2.race == "Saiyan" || M2.race == "Half Saiyan")
				M2.witness_deaths ++
				M2.Watchdeath()
				spawn() M2.Rage_Unleash()
			if(M2 == M)continue
			M2 << "\red You feel your Rage Grow..."
			M2.rage += round(rand(20,50))
			if(M2.rage >= 100)
				M2.rage = 100