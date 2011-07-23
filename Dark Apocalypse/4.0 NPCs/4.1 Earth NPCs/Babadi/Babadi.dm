mob/var/babadi_quest_start = 0
mob/var/babadi_quest_complete = 0
mob/var/babadi_levels = 0
mob
	NPC

		Babadi

			name = "{NPC} Babadi"
			icon = 'Babidi.dmi'
			density = 1
			safe = 1

			powerlevel = 100

			energy_code = 5533674

			var/mob/PC/P
			New()
				. = ..()
				src.CreateName()
				spawn()
					Wander()
			proc/Wander()
				while(src)
					var/Found = FALSE
					for(P in oview(6)).
						step_away(src,P)
						Found = TRUE
						break
					if(Found != TRUE)
						sleep(8)
					sleep(8)


			verb
				Talk()
					set src in oview(4)
					if(usr.race == "Changling" && usr.metal_converted)
						usr << "I can not help you!"
					else
						if(usr.race == "Saiyan" || usr.race == "Human" || usr.race == "Half Saiyan" || usr.race == "Demon"|| usr.race == "Changling")
							if(!usr.babadi_quest_start)
								usr << "<font color = white>Babadi:</font> Arrgghh! [usr.name]. Fine I shall give you something you desire."
								sleep(15)
								switch(alert("Join my Alliance?","Quest: Majin Upgrade!","Yes","Not at the Moment"))
									if("Yes")
										usr.babadi_quest_start = 1
										usr.contents += new/obj/Quests/Babadi/Majin_Upgrade
										usr << "<font color = white>Babadi:</font> Heheh! now go and do my bidding"
									else
										usr << "<font color = white>Babadi:</font> Get out of my sight you insolate rat"
										return
							else
								if(!usr.babadi_quest_complete)
									if(usr.karma == "Evil" && usr.karma_rating >= 50)
										usr.babadi_quest_complete = 1
										usr.majined = 1
										usr << "<font color = white>Babadi:</font> Nicely done [usr.name] you shall be rewarded now"
										usr.powerlevel_max *= 1.5
										usr.ki_max *= 1.5
										usr.strength_max *= 1.5
										usr.defence_max *= 1.5
										usr.overlays += majin_sign

										sleep(20)
										usr << "<font color = white>Babadi:</font> go and carry out the evils of babadi!!!!"

										for(var/obj/Quests/Babadi/Majin_Upgrade/L)
											del(L)

						else
							usr << "<font color = white>Babadi:</font> Get out of my sight!"
