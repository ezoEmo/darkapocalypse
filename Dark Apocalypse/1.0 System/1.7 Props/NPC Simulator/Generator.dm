mob/var/sim_delay = 0

obj/NPC_Generator
	Computer
		icon = 'Generator.dmi'
		density = 1

		verb
			Start_Simulation()
				set category = "Training"
				set src in oview(1)

				if(usr.sim_delay == 1)
					usr << "<font color=blue>Error: </font>You must wait before making another simulation"
					return
				switch(alert("Do you wish to create a Simulation Fighter?","Simulator","Yes","No"))

					if("Yes")
						if(usr.sim_delay)
							return
						usr.sim_delay = 1
						var/npc_level = input("What Level do you wish to make the Simulation Fighter?")as num
						if(usr.level >= 0 && usr.level <= 49)
							if(npc_level >= 76)
								usr << "You cannot create a simulation fighter over level 75!"
								return
						if(usr.level >= 75 && usr.level <= 201)
							if(npc_level >= 201)
								usr << "You cannot create a simulation fighter over level 200!"
								return
						if(usr.level >= 200 && usr.level <= 501)
							if(npc_level >= 501)
								usr << "You cannot create a simulation fighter over level 500!"
								return
						if(usr.level >= 500 && usr.level <= 751)
							if(npc_level >= 751)
								usr << "You cannot create a simulation fighter over level 750!"
								return
						if(usr.level >= 750 && usr.level <= 851)
							if(npc_level >= 801)
								usr << "You cannot create a simulation fighter over level 800!"
								return

						if(usr.level >= 850)
							if(npc_level >= 851)
								usr << "You cannot create a simulation fighter over level 850!"
								return

						var/mob/Monster/Simulator_NPC/N = new

						N.level = npc_level
						N.powerlevel = round(25 * ((N.level * 4) + rand(10,50)) * npc_level)
						N.powerlevel_max = round(25 * ((N.level * 4) + rand(10,50)) * npc_level)

						N.ki = round(25 * ((N.level * 4) + rand(10,50)) * npc_level)
						N.ki_max = round(25 * ((N.level * 4) + rand(10,50)) * npc_level)

						N.strength = round(5 * ((N.level * 4) + rand(2,10)) * npc_level)
						N.strength_max = round(5 * ((N.level * 4) + rand(2,10)) * npc_level)

						N.defence = round(5 * ((N.level * 4) + rand(2,10)) * npc_level)
						N.defence_max = round(5 * ((N.level * 4) + rand(2,10)) * npc_level)

						N.exp = 35 * npc_level
						N.zenni = 25 * npc_level

						N.speed = 3.5

						var/race = rand(1,5)
						var/skin = rand(1,3)
						var/hair = rand(1,6)

						if(race == 1)
							N.icon = 'Bebi - Form 1.dmi'
						if(race == 2)
							N.icon = 'Bio Android - Form 1.dmi'
						if(race == 3)
							N.icon = 'Changling - Form 1.dmi'
						if(race == 4)
							N.icon = 'Namek - Normal.dmi'
						if(race == 5)
							N.icon = 'Majin - Form 1.dmi'
						if(race == 6)
							if(skin == 1)
								N.icon = 'Male - White.dmi'
							if(skin == 2)
								N.icon = 'Male - Tan.dmi'
							if(skin == 2)
								N.icon = 'Male - Dark.dmi'

							if(hair == 1)
								N.overlays += N.goku_hair
							if(hair == 2)
								N.overlays += N.vegeta_hair
							if(hair == 3)
								N.overlays += N.gohan_teen_hair
							if(hair == 4)
								N.overlays += N.gohan_adult_hair
							if(hair == 5)
								N.overlays += N.future_gohan_hair
							if(hair == 6)
								N.overlays += N.trunks_long_hair



						N.loc = locate(usr.x,usr.y-1,usr.z)
						sleep(500)
						usr.sim_delay = 0

/*							if("Clone")
								var/mob/Monster/Clone_Simulator_NPC/N = new

								N.level = usr.level

								N.name = "{NPC} [usr.name]'s Clone"

								N.powerlevel = usr.powerlevel
								N.powerlevel_max = usr.powerlevel_max

								N.ki = usr.ki
								N.ki_max = usr.ki_max

								N.strength = usr.strength
								N.strength_max = usr.strength_max

								N.defence = usr.defence
								N.defence_max = usr.defence_max

								N.exp = 500 * usr.level
								N.tnl = 175 * usr.level

								N.speed = usr.speed

								N.icon = usr.icon
								N.overlays = usr.overlays
								N.underlays = usr.underlays

								N.zanzoken = usr.zanzoken

								N.race = usr.race

								N.hair = usr.hair

								N.loc = locate(usr.x,usr.y-1,usr.z)

								N.CreateName()

					if("No")
						return*/