obj/Transform/Revert

	verb
		Revert()
			set category = "Combat"

			if(usr.doing)
				return

			if(usr.trans_delay)
				return

			if(usr.boxing)
				return

			usr.trans_delay = 1
			usr.doing = 1
			if(usr.inverted)
				usr.Invert_Revert()
				return
			if(usr.race == "Konats")
				usr.Konats_Revert()
			if(usr.race == "Human")
				usr.Human_Revert()
			if(usr.race == "Half Saiyan")
				usr.Half_Saiyan_Revert()
			if(usr.race == "Changling")
				if(!usr.metal_converted)
					usr.Changling_Revert()
			if(usr.race == "Saiyan")
				usr.Saiyan_Revert()
			if(usr.race == "Tuffle")
				usr.Tuffle_Revert()
			if(usr.race == "Bio-Android")
				usr.Bio_Revert()
			if(usr.race == "Demon")
				usr.Demon_Revert()
			if(usr.race == "Majin")
				usr.Majin_Revert()
			if(usr.race == "Bojack")
				usr.Bojack_Revert()
			if(usr.race == "Dragon")
				usr.Dragon_Revert()
			if(usr.race == "Kai")
				usr.Kai_Revert()
			if(usr.race == "Saibaman")
				usr.Saibaman_Revert()
			if(usr.race == "Legend")
				usr.Legend_Revert()
			if(usr.race == "Good Demon")
				usr.Good_Demon_Revert()
			if(usr.race == "Chaos Demon")
				usr.Chaos_Demon_Revert()
			if(usr.race == "All Star")
				usr.All_Star_Revert()
			if(usr.race == "Makenshi")
				usr.Makenshi_Revert()
			if(usr.race == "Dark Neo")
				usr.Neo_Revert()
			if(usr.race == "Bardock")
				usr.Bardock_Revert()
			if(usr.race == "Slayer")
				usr.Slayer_Revert()
			if(usr.race == "Cooler")
				usr.Cooler_Revert()
			if(usr.race == "Dark Angel")
				usr.Dark_Angel_Revert()
			if (usr.race=="Evil Saiyan")
				usr.Evil_Revert()
			if (usr.race=="Nightmire Dragon")
				usr.NightDra_Revert()
			if (usr.race=="Demonic Warror")
				usr.Demonic_Warror_Revert()
			usr.afk_time = 0

			sleep(50)
			usr.trans_delay = 0
			usr.doing = 0

mob
	proc
		Power_Redefine()
			src.powerlevel = src.powerlevel_max
			src.strength = src.strength_max
			src.defence = src.defence_max
			src.speed = src.speed_max

			src.critical = src.critical_max
			src.dodge = src.dodge_max
			src.reflect = src.reflect_max
			src.block = src.block_max
			src.counter = src.counter_max

			src.ki = src.ki_max
			src.strength = src.strength_max
			src.defence = src.defence_max
			src.speed = src.speed_max

			src.critical = src.critical_max
			src.dodge = src.dodge_max
			src.reflect = src.reflect_max
			src.block = src.block_max
			src.counter = src.counter_max

