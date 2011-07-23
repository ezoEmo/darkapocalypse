mob/var/trans_delay = 0

obj/Transform/Transform

	verb
		Transform()
			set category = "Combat"
			if(usr.monkey)
				usr << "\blue Error: \font You cannot Transform whilst oozaru"
				return

			if(usr.doing)
				usr << "You are already doing something!"
				return

			if(usr.rest)
				usr << "You cannot Transform whilst resting!"
				return

			if(usr.trans_delay)
				usr << "You body is still recovering from Transforming!"
				return

			if(usr.boxing)
				usr << "You cannot Transform whilst self training!"

			if(usr.race != "Namek" || usr.race != "Majin")
				if(usr.kaioken && usr.form_1)
					usr << "You relax your Kaioken state"
					usr.underlays -= usr.kaio_aura
					usr.underlays -= usr.kaio_aura
					usr.underlays -= usr.kaio_aura
					usr.aura_on = 0
					usr.kaioken = 0
					usr.Power_Redefine()

			if(usr.race == "Namek")
				if("pl_buff" in usr.buffs)
					usr << "You cannot Transform whilst you are Buffed!"
					return
				if("def_buff" in usr.buffs)
					usr << "You cannot Transform whilst you are Buffed!"
					return
				if("str_buff" in usr.buffs)
					usr << "You cannot Transform whilst you are Buffed!"
					return
				usr.Namek_Trans()

			if(usr.race == "Half Saiyan")
				usr.Half_Saiyan_Trans()

			if(usr.race == "Majin")
				if("pl_buff" in usr.buffs)
					usr << "You cannot Transform whilst you are Buffed!"
					return
				if("def_buff" in usr.buffs)
					usr << "You cannot Transform whilst you are Buffed!"
					return
				if("str_buff" in usr.buffs)
					usr << "You cannot Transform whilst you are Buffed!"
					return
				usr.Majin_Trans()

			if(usr.race == "Changling")
				if(!usr.metal_converted)
					usr.Changling_Trans()

			if(usr.race == "Saiyan")
				usr.Saiyan_Trans()

			if(usr.race == "Konats")
				usr.Konats_Trans()

			if(usr.race == "Cooler")
				usr.Cooler_Trans()

			if(usr.race == "Uub")
				usr.Uub_Trans()

			if(usr.race == "Human")
				usr.Human_Trans()

			if(usr.race == "Tuffle")
				usr.Tuffle_Trans()

			if(usr.race == "Bio-Android")
				usr.Bio_Trans()

			if(usr.race == "Demon")
				usr.Demon_Trans()

			if(usr.race == "Android")
				usr.Android_Trans()

			if(usr.race == "Bojack")
				usr.Bojack_Trans()

			if(usr.race == "Dragon")
				usr.Dragon_Trans()

			if(usr.race == "Saibaman")
				usr.Saibaman_Trans()

			if(usr.race == "Kai")
				usr.Kai_Trans()

			if(usr.race == "Dark Angel")
				usr.Dark_Angel_Trans()
			if(usr.race == "Legend")
				usr.Legend_Trans()
			if(usr.race == "Good Demon")
				usr.Good_Demon_Trans()
			if(usr.race == "Chaos Demon")
				usr.Chaos_Demon_Trans()
			if(usr.race == "All Star")
				usr.All_Star_Trans()
			if(usr.race == "Makenshi")
				usr.Makenshi_Trans()
			if(usr.race == "Dark Neo")
				usr.Neo_Trans()
			if(usr.race == "Bardock")
				usr.Bardock_Trans()
			if (usr.race=="Evil Saiyan")
				usr.Evil_Trans()
			if (usr.race=="Nightmire Dragon")
				usr.NightDra_Trans()
			if (usr.race=="Slayer")
				usr.Slayer_Trans()
			if (usr.race=="Bio Warrior")
				usr.Bio_W_Trans()
			if (usr.race=="Demonic Warror")
				usr.Demonic_Warror_Trans()

			usr.afk_time = 0

