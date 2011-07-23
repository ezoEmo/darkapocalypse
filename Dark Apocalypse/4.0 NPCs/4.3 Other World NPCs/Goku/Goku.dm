mob/var/unlock = 0
mob/var/goku_quest_start = 0
mob/var/goku_quest_complete = 0
mob/var/brolly_kill = 0
mob/var/learn_it = 0

mob/NPC/

	Goku
		name = "{NPC} Goku"
		icon = 'npcs.dmi'
		icon_state = "Dead Goku"
		density = 1
		doing = 0
		safe = 1

		powerlevel = 100

		energy_code = 2290876

		New()
			src.CreateName()

		verb/Talk()
			set src in oview(1)
			set category = null
			switch(input("Goku: What do you need [usr]?")in list("Unlock Potential","Quest","Nothing"))
				if("Unlock Potential")
					if(!usr.unlock)
						usr.unlock = 1
						usr << "<font color = white>Goku:</font> Hmm, I sense a power deep within your soul. Let me unlock it.."
						sleep(50)
						usr << "<font color = white>You feel Goku unlock your potential!"
						sleep(50)
						usr << "<font color = white>Goku:</white> There, do you feel stronger [usr.name]?"
						usr.powerlevel_max += 10000
						usr.ki_max += 7500
						usr.strength_max += 3500
						usr.defence_max += 3500

						usr.strength = usr.strength_max
						usr.defence = usr.defence_max
						return
					else
						usr << "<font color = white>Goku:</font> Sorry [usr.name] I can only unlock your potential once."
						return

				if("Quest")
					if(usr.karma == "Evil" || usr.karma == "Good")
						if(!usr.goku_quest_start)
							usr << "<font color = white>Goku:</font> Hey [usr.name] I got a job for you, if your up for it!"
							sleep(10)
							switch(alert("Are you Ready?","Quest: Legendary Saiyan","Yes","Not Yet"))
								if("Yes")
									usr.goku_quest_start = 1
									usr.contents += new/obj/Quests/Goku/Legendary_Saiyan
									usr << "<font color = white>Goku:</font> King Kai told me there is an evil force attacking Planet Namek, could go there and take care of it."
								else
									return
						else
							if(!usr.goku_quest_complete)
								if(usr.brolly_kill >= 1)
									usr.goku_quest_complete = 1
									usr << "<font color = white>Goku:</font> Thanks [usr.name] for taking care of that for me. Here take this armor and I shall teach you my specail Technique"
									sleep(20)
									usr.contents += new/obj/Equipment/Chest/Hench_Battle_Armor
									usr << "<font color=white><center>..:: You've obtained Hench Battle Armor ::..</center></font>"
									sleep(15)
									if(usr.race == "Android")
										usr << "I can not teach Instant Transmission to you."
									else
										usr << "<center><font color = white> .:: You learn to Instantly Transmit  ::.</font></center></center>"
										usr.verbs += new/mob/learn/verb/Instant_Transmission
										usr.learn_it = 1
										usr.zenni += 50000
										for(var/obj/Quests/Goku/Legendary_Saiyan/Q)
											del(Q)
								else
									usr << "<font color = white>Goku:</font> Can you please go to Namek fast and check whats going on!"
									return

								if("No")
									return
				if("Nothing")
					return
