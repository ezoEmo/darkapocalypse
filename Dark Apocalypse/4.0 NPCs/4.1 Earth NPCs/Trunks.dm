mob/var/trunks_quest_start = 0
mob/var/trunks_quest_complete = 0
mob/var/killed_17 = 0
mob/var/killed_18 = 0


mob
	NPC

		Trunks

			name = "{NPC} Trunks"
			icon = 'Trunks.dmi'
			density = 1
			safe = 1

			powerlevel = 100

			energy_code = 7234561

			New()
				src.CreateName()

			verb
				Talk()
					set category = null
					set src in oview(1)
					switch(input("what do you need [usr]?") in list("Learn Skills","Start Quest","Nothing"))
						if("Learn Skills")
							if(usr.level >= 650 && usr.karma == "Good")
								if(!usr.learn_burning_attack)
									usr << "<font color = white>Trunks:</font> Greetings [usr.name]. I've got a powerful move to teach you if you are up to the challenge?"
									if(usr.tp >= 10)
										usr.tp -= 10
										usr << "<font color = white>Trunks:</font> Great! You have enough points to learn this move!"
										sleep(10)
										usr << "<center><font color=white>..:: You learned Burning Attack ::..</center></font>"
										usr.verbs += new/mob/learn/verb/Burning_Attack
										usr.learn_burning_attack = 1
									else
										usr << "<font color=white>Trunks:</font> Come back with 10 training points and i will teach you this technique!"
										return
								else
									usr << "<font color=white>Trunks:</font> i have nothing else to teach you."
							else
								usr << "<font color=white>Trunks:</font> You are not strong enough to learn my technique."
								return


						if("Start Quest")
							if(usr.karma == "Evil" || usr.karma == "Good")
								if(!usr.trunks_quest_start)
									usr << "<font color = white>Trunks:</font> [usr.name] I am in need of your help!"
									sleep(10)
									switch(alert("Are you Ready?","Quest: Enemies Of Time","Yes","Not Yet"))
										if("Yes")
											usr.trunks_quest_start = 1
											usr.contents += new/obj/Quests/Trunks/Enemies_Of_Time
											usr << "<font color = white>Trunks:</font> Androids are attacking my city, but I'm not strong enough to kill them myself."
											sleep(10)
											usr << "<font color = white>Trunks:</font> Can you go to my time and take care of these beings."
										else
											return
								else
									if(!usr.trunks_quest_complete)
										if(usr.killed_18 && usr.killed_17)
											usr.trunks_quest_complete = 1
											usr << "<font color = white>Trunks:</font> Thanks [usr.name], but I have just recieved an emergency call from my mother."
											sleep(10)
											usr << "<font color=white>Trunks: </font>Go to the future and enter the capsule corp building and talk to my mother please...."
											sleep(15)
											usr << "<font color=white><center>..:: You've gained entrance into the capsule corp ::..</center></font>"
											usr << "<font color = white>Trunks:</font>  [usr.name] ,Here take my sword it will help you in your journey. "
											usr.zenni += 50000
											sleep(10)
											usr.contents += new/obj/Equipment/weapon/Trunks_Sword
											usr << "<font color=white><center>..:: You've obtained Trunks Sword ::..</center></font>"

											for(var/obj/Quests/Trunks/Enemies_Of_Time/Q)
												del(Q)
										else
											usr << "<font color = white>Trunks:</font> Can you please do something about it."
											return

										if("No")
											return

						if("Nothing")
							return
























