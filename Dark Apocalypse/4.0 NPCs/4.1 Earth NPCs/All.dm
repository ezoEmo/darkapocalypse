mob/var
	learn_vball=0
	learn_MinusEnergyPowerBall=0
	learn_finalrevenger=0
	learn_supernova=0
	learn_fskama=0
	learn_bk100=0
	learn_ht=0
	learn_sdf=0
	learn_FS=0
	learn_soulpunisher
	learn_finalkamehameha


mob
	NPC
		Race_Help
			name = "{NPC} Race Helper"
			icon = 'npcs2.dmi'
			icon_state = "help"
			density=1
			doing = 0
			safe=1

			powerlevel = 100

			energy_code = 4757361

			New()
				src.CreateName()

			verb/Talk()
				set src in oview(1)
				set category = null

				if(usr.race == "Majin")
					switch(input("I'll give you the stats to transform. But I'll take a little power away from you") in list("Give Stats","No"))
						if("Give Stats")
							if(usr.level >= 10000)
								usr << "<font color = white>Race Helper:</font> ok here you go."
								if(usr.tp >= 15)
									usr.tp -= 15
									usr.eats = 400
									usr.absorb_kill = 15
									usr << "<font color = white>Race Helper:</font>I wont give you karma get the dragonballs for that!"
									sleep(10)
									usr << "<font color = white>Race Helper:</font>Take it easy!"
									return
								else
									return
							else
								usr << "<font color=white>Race Helper:</font> You are not strong enough to learn my technique."
								return
				if(usr.race == "Android")
					switch(input("I'll give you the stats to transform. But I'll take a little power away from you") in list("Give Stats","No"))
						if("Give Stats")
							if(usr.level >= 10000)
								usr << "<font color = white>Race Helper:</font> ok here you go."
								if(usr.tp >= 15)
									usr.tp -= 15
									usr.kills = 1500
									usr.chip =6
									usr << "<font color = white>Race Helper:</font>I wont give you karma get the dragonballs for that!"
									sleep(10)
									usr << "<font color = white>Race Helper:</font>Take it easy!"
									return
								else
									return
							else
								usr << "<font color=white>Race Helper:</font> You are not strong enough to learn my technique."
								return
				if(usr.race == "Tuffle")
					switch(input("I'll give you the stats to transform. But I'll take a little power away from you") in list("Give Stats","No"))
						if("Give Stats")
							if(usr.level >= 10000)
								usr << "<font color = white>Race Helper:</font> ok here you go."
								if(usr.tp >= 15)
									usr.tp -= 15
									usr.infect_kill = 200
									usr.chip =6
									usr << "<font color = white>Race Helper:</font>I wont give you karma get the dragonballs for that!"
									sleep(10)
									usr << "<font color = white>Race Helper:</font>Take it easy!"
									return
								else
									return
							else
								usr << "<font color=white>Race Helper:</font> You are not strong enough to learn my technique."
								return
				if(usr.race == "Bio-Android")
					switch(input("I'll give you the stats to transform. But I'll take a little power away from you") in list("Give Stats","No"))
						if("Give Stats")
							if(usr.level >= 10000)
								usr << "<font color = white>Race Helper:</font> ok here you go."
								if(usr.tp >= 15)
									usr.tp -= 15
									usr.absorb_kill = 30
									usr.chip =6
									usr << "<font color = white>Race Helper:</font>I wont give you karma get the dragonballs for that!"
									sleep(10)
									usr << "<font color = white>Race Helper:</font>Take it easy!"
									return
								else
									return
							else
								usr << "<font color=white>Race Helper:</font> You are not strong enough to learn my technique."
								return
				else
					usr << "<font color = white>Race Helper: </font>Your are not a Majin,Bio-Android,Android, or Tuffle I only help those race!"
					return




mob
	NPC

		Vegeto

			name = "{NPC} Super Vegeto"
			icon = 'npcs2.dmi'
			icon_state = "Vegeto"
			density = 1
			safe = 1

			powerlevel = 100

			energy_code = 7227361

			New()
				src.CreateName()

			verb
				Talk()
					set category = null
					set src in oview(1)

					if(usr.level >= 950)
						if(!usr.learn_finalkamehameha)
							usr << "<font color = white>Vegeto:</font> I am Super Vegeto."
							sleep(10)
							if(usr.tp >= 40)
								usr.learn_finalkamehameha= 1
								usr.tp -= 40
								usr << "<font color = white>Vegeto:</font> Lets see if your emeny last this move!"
								sleep(10)
								usr << "<center><font color=white>..:: You learned Final Kamehameha ::..</center></font>"
								usr.verbs += new/mob/learn/verb/Final_Kamehameha
							else
								usr << "<font color=white>Vegeto:</font> *sleep*!"
								return
						else
							usr << "<font color=white>Vegeto:</font> You know this move."
					else
						usr << "<font color=white>Vegeto:</font>Get Stonger."
						return



mob
	NPC

		Gogeta

			name = "{NPC} Gogeta"
			icon = 'npcs2.dmi'
			icon_state = "Gogeta"
			density = 1
			safe = 1

			powerlevel = 100

			energy_code = 7227361

			New()
				src.CreateName()

			verb
				Talk()
					set category = null
					set src in oview(1)

					if(usr.level >= 950)
						if(!usr.learn_soulpunisher)
							usr << "<font color = white>Gogeta:</font> I am not goku nor vegeta. I'll be the one to destory you."
							sleep(10)
							if(usr.tp >= 40)
								usr.learn_soulpunisher= 1
								usr.tp -= 40
								usr << "<font color = white>Gogeta:</font> Lets see if your emeny last this move!"
								sleep(10)
								usr << "<center><font color=white>..:: You learned Soul Punisher ::..</center></font>"
								usr.verbs += new/mob/learn/verb/Soul_Punisher
							else
								usr << "<font color=white>Gogeta:</font> *sleep*!"
								return
						else
							usr << "<font color=white>Gogeta:</font> You know this move."
					else
						usr << "<font color=white>Gogeta:</font>Get Stonger."
						return


mob
	NPC

		SS4_Goku

			name = "{NPC} SS4 Goku"
			icon = 'npcs2.dmi'
			icon_state = "SS4 Goku"
			density = 1
			safe = 1

			powerlevel = 100

			energy_code = 7227361

			New()
				src.CreateName()

			verb
				Talk()
					set category = null
					set src in oview(1)

					if(usr.level >= 950)
						if(!usr.learn_sdf)
							usr << "<font color = white>Goku:</font> These shadow dragons are a pain."
							sleep(10)
							if(usr.tp >= 40)
								usr.learn_sdf= 1
								usr.tp -= 40
								usr << "<font color = white>Goku:</font> Lets see if can learn this move!"
								sleep(10)
								usr << "<center><font color=white>..:: You learned Super Dragon Fist ::..</center></font>"
								usr.verbs += new/mob/learn/verb/Super_Dragon_Fist
							else
								usr << "<font color=white>Goku:</font> *sleep*!"
								return
						else
							usr << "<font color=white>Goku:</font> You know this move."
					else
						usr << "<font color=white>Goku:</font>Get Stonger."
						return

mob
	NPC

		SS4_Vegeta

			name = "{NPC} SS4 Vegeta"
			icon = 'npcs2.dmi'
			icon_state = "SS4 Vegeta"
			density = 1
			safe = 1

			powerlevel = 100

			energy_code = 7227361

			New()
				src.CreateName()

			verb
				Talk()
					set category = null
					set src in oview(1)

					if(usr.level >= 950)
						if(!usr.learn_FS)
							usr << "<font color = white>Vegeta:</font> These shadow dragons are a pain."
							sleep(10)
							if(usr.tp >= 40)
								usr.learn_FS= 1
								usr.tp -= 40
								usr << "<font color = white>Vegeta:</font> Lets see if can learn this move!"
								sleep(10)
								usr << "<center><font color=white>..:: You learned Final Shine ::..</center></font>"
								usr.verbs += new/mob/learn/verb/Final_Shine
							else
								usr << "<font color=white>Vegeta:</font> *sleep*!"
								return
						else
							usr << "<font color=white>Vegeta:</font> You know this move."
					else
						usr << "<font color=white>Vegeta:</font>Get Stonger."
						return

mob
	NPC

		Pikkon

			name = "{NPC} Pikkon"
			icon = 'npcs2.dmi'
			icon_state = "Pikkon"
			density = 1
			safe = 1

			powerlevel = 100

			energy_code = 7227361

			New()
				src.CreateName()

			verb
				Talk()
					set category = null
					set src in oview(1)

					if(usr.level >= 950)
						if(!usr.learn_ht)
							usr << "<font color = white>Pikkon:</font> I am Pikkon from the West Quadrant of the galaxy."
							sleep(10)
							if(usr.tp >= 40)
								usr.learn_ht= 1
								usr.tp -= 40
								usr << "<font color = white>Pikkon:</font> Lets see if can learn this move!"
								sleep(10)
								usr << "<center><font color=white>..:: You learned Hyper Tornado ::..</center></font>"
								usr.verbs += new/mob/learn/verb/Hyper_Tornado
							else
								usr << "<font color=white>Pikkon:</font> *sleep*!"
								return
						else
							usr << "<font color=white>Pikkon:</font> You know this move."
					else
						usr << "<font color=white>Pikkon:</font>Get Stonger."
						return




mob
	NPC

		Gogeta_SS4

			name = "{NPC} SS4 Gogeta"
			icon = 'npcs2.dmi'
			icon_state = "Gogeta SS4"
			density = 1
			safe = 1

			powerlevel = 100

			energy_code = 7227361

			New()
				src.CreateName()

			verb
				Talk()
					set category = null
					set src in oview(1)

					if(usr.level >= 950)
						if(!usr.learn_bk100)
							usr << "<font color = white>Gogeta:</font> I'm the Strongest Ever."
							sleep(10)
							if(usr.tp >= 40)
								usr.learn_bk100= 1
								usr.tp -= 40
								usr << "<font color = white>Gogeta:</font> Lets see if your emeny last this move!"
								sleep(10)
								usr << "<center><font color=white>..:: You learned Big Bang Kamehameha X100 ::..</center></font>"
								usr.verbs += new/mob/learn/verb/Big_Bang_Kamehameha_X100
							else
								usr << "<font color=white>Gogeta:</font> *sleep*!"
								return
						else
							usr << "<font color=white>Gogeta:</font> You know this move."
					else
						usr << "<font color=white>Gogeta:</font>Get Stonger."
						return

mob
	NPC

		Teen_Gohan

			name = "{NPC} SS2 Teen Gohan"
			icon = 'npcs2.dmi'
			icon_state = "Teen Gohan"
			density = 1
			safe = 1

			powerlevel = 100

			energy_code = 7227361

			New()
				src.CreateName()

			verb
				Talk()
					set category = null
					set src in oview(1)

					if(usr.level >= 950)
						if(!usr.learn_fskama)
							usr << "<font color = white>Gohan:</font> This move beat Cell."
							sleep(10)
							if(usr.tp >= 40)
								usr.learn_fskama= 1
								usr.tp -= 40
								usr << "<font color = white>Gohan:</font> Use it carefully!"
								sleep(10)
								usr << "<center><font color=white>..:: You learned Father Son Kamehameha ::..</center></font>"
								usr.verbs += new/mob/learn/verb/Father_Son_Kamehameha
							else
								usr << "<font color=white>Gohan:</font> *sleep*!"
								return
						else
							usr << "<font color=white>Gohan:</font> You know this move."
					else
						usr << "<font color=white>Gohan:</font>Get Stonger."
						return




mob
	NPC
		Kid_Buu
			name = "{NPC} Kid Buu"
			icon = 'npcs.dmi'
			icon_state = "Kid Buu"
			density=1
			doing = 0
			safe=1

			powerlevel = 100

			energy_code = 4757361

			New()
				src.CreateName()

			verb
				Talk()
					set src in oview(1)
					set category = null

					if(usr.race == "Majin")
						switch(input("oooooooaaaaa hahha") in list("Learn Skill","Nothing"))
							if("Learn Skill")
								if(!usr.learn_vball)
									usr << "<font color = white>Kid Buu:</font> Grrrraaa hahaha"
									if(usr.tp >= 40)
										usr.learn_vball = 1
										usr.tp -= 40
										usr << "<font color = white>Kid Buu:</font> Ha ha ha ggrrrr he he!"
										sleep(10)
										usr << "<center><font color=white>..:: You learned Vanishing_Ball ::..</center></font>"
										usr.verbs += new/mob/learn/verb/Vanishing_Ball
									else
										usr << "<font color=white>Kid Buu:</font> *sleep*!"
										return
								else
									usr << "<font color=white>Kid Buu:</font> Grrraaa."
							else
								usr << "<font color=white>Kid Buu:</font> ewwwwww."
								return
					else
						usr << "<font color = white>Kid Buu: ewwwwww haha</font>!"
						return


mob
	NPC
		Omega_Shenron
			name = "{NPC} Omega Shenron"
			icon = 'npcs.dmi'
			icon_state = "Omega"
			density=1
			doing = 0
			safe=1

			powerlevel = 100

			energy_code = 4757361

			New()
				src.CreateName()

			verb
				Talk()
					set src in oview(1)
					set category = null

					if(usr.race == "Dragon"||usr.race=="Nightmire Dragon")
						switch(input("I'll show you") in list("Learn Skill","Nothing"))
							if("Learn Skill")
								if(usr.level >= 10000)
									if(!usr.learn_MinusEnergyPowerBall)
										usr << "<font color = white>Omega Shenron:</font> They overused the dragonballs. Use that power."
										if(usr.tp >= 15)
											usr.tp -= 15
											usr << "<font color = white>Omega Shenron:</font>You have enough points to learn this move!"
											sleep(10)
											usr << "<center><font color=white>..:: You learned Minus Energy Power Ball ::..</center></font>"
											usr.verbs += new/mob/learn/verb/Minus_Energy_Power_Ball
											usr.learn_MinusEnergyPowerBall = 1
											usr << "<font color = white>Omega Shenron:</font>This is a killer move!"
										else
											return
									else
										usr << "<font color=white>Omega Shenron:</font> I have nothing else to teach you."
								else
									usr << "<font color=white>Omega Shenron:</font> You are not strong enough to learn my technique."
									return
					else
						usr << "<font color = white>Omega Shenron: </font>Your are not a Dragon, you pathetic low-class being!"
						return



mob
	NPC
		Bardock
			name = "{NPC} Bardock"
			icon = 'npcs.dmi'
			icon_state = "Bardock"
			density=1
			doing = 0
			safe=1

			powerlevel = 100

			energy_code = 4757361

			New()
				src.CreateName()

			verb/Talk()
				set src in oview(1)
				set category = null

				if(usr.race == "Bardock")
					switch(input("Freeza must be killed. I'll show you how to do Final Revenger") in list("Learn Skill","Nothing"))
						if("Learn Skill")
							if(usr.level >= 10000)
								if(!usr.learn_finalrevenger)
									usr << "<font color = white>Bardock:</font> Destory Freeza with this."
									sleep(10)
									if(usr.tp >= 15)
										usr.tp -= 15
										usr << "<font color = white>Bardock:</font>You have enough points to learn this move!"
										sleep(10)
										usr << "<center><font color=white>..:: You learned Final Revenger ::..</center></font>"
										usr.verbs += new/mob/learn/verb/Final_Revenger
										usr.learn_finalrevenger = 1
										sleep(10)
										usr << "<font color = white>Bardock:</font>Freeza will pay!"
									else
										usr << "<font color=white>Bardock:</font> Come back with 15 training points, young saiyan, and I will teach you this technique!"
										return
								else
									usr << "<font color=white>Bardock:</font> I have nothing else to teach you."
							else
								usr << "<font color=white>Bardock:</font> You are not strong enough to learn my technique."
								return
				else
					usr << "<font color = white>Bardock: </font>Your are not a me, you pathetic low-class being!"
					return
/*
mob
	NPC
		Bojack
			name = "{NPC} Bojack"
			icon = 'npcs.dmi'
			icon_state = "bojack"
			density=1
			doing = 0
			safe=1

			powerlevel = 100

			energy_code = 4757361

			New()
				src.CreateName()

			verb
				Talk()
					set src in oview(1)
					set category = null

					if(usr.race == "Bojack")
						switch(input(" I'll show you how to do ") in list("Learn Skill","Nothing"))
							if("Learn Skill")
								if(usr.level >= 10000)
									if(!usr.learn_omegablaster)
										usr << "<font color = white>Broly:</font> Destory Kakarot with this."
										if(usr.tp >= 15)
											usr.tp -= 15
											usr << "<font color = white>Broly:</font>You have enough points to learn this move!"
											sleep(10)
											usr << "<center><font color=white>..:: You learned Omega Blaster ::..</center></font>"
											usr.verbs += new/mob/learn/verb/Omega_Blaster
											usr.learn_omegablaster = 1
											usr << "<font color = white>Broly:</font>All will fall on your feet!"
										else
											usr << "<font color=white>Broly:</font> Come back with 15 training points, young saiyan, and I will teach you this technique!"
											return
									else
										usr << "<font color=white>Broly:</font> I have nothing else to teach you."
								else
									usr << "<font color=white>Broly:</font> You are not strong enough to learn my technique."
									return
					else
						usr << "<font color = white>Broly: </font>Your are not a Legend, you pathetic low-class being!"
						return*/

mob
	NPC
		Cooler
			name = "{NPC} Cooler"
			icon = 'npcs.dmi'
			icon_state = "Cooler"
			density=1
			doing = 0
			safe=1

			powerlevel = 100

			energy_code = 4757361

			New()
				src.CreateName()

			verb/Talk()
				set src in oview(1)
				set category = null

				if(usr.race == "Cooler")
					switch(input("I'll show you how to do Supernova") in list("Learn Skill","Nothing"))
						if("Learn Skill")
							if(usr.level >= 10000)
								if(!usr.learn_supernova)
									usr << "<font color = white>Cooler:</font> Destory with this."
									if(usr.tp >= 15)
										usr.tp -= 15
										usr << "<font color = white>Cooler:</font>You have enough points to learn this move!"
										sleep(10)
										usr << "<center><font color=white>..:: You learned Supernova ::..</center></font>"
										usr.verbs += new/mob/learn/verb/Supernova
										usr.learn_supernova = 1
										usr << "<font color = white>Cooler:</font>All will fall on your feet!"
									else
										return
								else
									usr << "<font color=white>Cooler:</font> I have nothing else to teach you."
							else
								usr << "<font color=white>Cooler:</font> You are not strong enough to learn my technique."
								return
				else
					usr << "<font color = white>Cooler: </font>Your are not a Cooler, you pathetic low-class being!"
					return