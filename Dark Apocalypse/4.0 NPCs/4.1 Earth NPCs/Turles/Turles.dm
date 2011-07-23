
mob
	NPC
		Turles
			name = "{NPC} Turles"
			icon = 'Turles.dmi'
			density = 1
			doing = 0
			safe = 1

			powerlevel = 100

			energy_code = 4567579

			New()
				src.CreateName()

			verb/Speak()
				set src in oview(1)
				set category = null

				if(usr.race == "Saiyan" || usr.race == "Half Saiyan")
					switch(input("What do you need?") in list("Learn Skill","Nothing"))
						if("Learn Skill")
							if(usr.level >= 750)
								if(!usr.learn_killdriver)
									usr << "<font color = white>Turles:</font> Hey, I've got a powerful move to teach you!"
									if(usr.tp >= 15)
										usr.tp -= 15
										usr << "<font color = white>Turles:</font> Alright! You have enough points to learn this move!"
										sleep(10)
										usr << "<center><font color=white>..:: You learned Kill Driver ::..</center></font>"
										usr.verbs += new/mob/learn/verb/Kill_Driver
										usr.learn_killdriver = 1
									else
										usr << "<font color=white>Turles:</font> Come back with 15 training points, young saiyan, and I will teach you this technique!"
										return
								else
									usr << "<font color=white>Turles:</font> I have nothing else to teach you."
							else
								usr << "<font color=white>Turles:</font> You are not strong enough to learn my technique."
								return
				else
					usr << "<font color = white>Turles: </font>I am sorry, I cannot teach you"
					return