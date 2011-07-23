mob/var/kk_quest_start = 0
mob/var/kk_quest_complete = 0
mob/var/kk_quest_training = 0
mob/var/kk_quest2_start = 0
mob/var/kk_quest2_complete = 0
mob/var/Kai_levels = 0
mob/var/learn_spirit_bomb = 0


mob/NPC/

	King_Kai
		name = "{NPC} King Kai"
		icon = 'King Kai.dmi'
		density = 1
		doing = 0
		safe = 1

		powerlevel = 100

		energy_code = 2215368

		New()
			src.CreateName()

		verb/Talk()
			set src in oview(1)
			set category = null

			if(src in oview(2))

				if(!usr.kk_quest_start)
					usr << "<font color = white>King Kai:</font> Greetings [usr.name]. I see your quiet a strong warrior. Would you like me to aid your training?"
					sleep(15)
					switch(alert("Begin your Training?","Quest: Warrior's Worth","Yes","Not Yet"))
						if("Yes")
							usr.kk_quest_start = 1
							usr.contents += new/obj/Quests/King_Kai/A_Warriors_Worth
							usr << "<font color = white>King Kai:</font> Good to Hear! I'll teach you a skill called the <font color = red>Kaio Ken</red>, but only if you can prove yourself!"
							usr << "<font color = white>King Kai:</font> If you can Catch Bubbles and Hit Gregory, then I will consider you worth enough."
						else
							usr << "<font color = white>King Kai:</font> Ohh, that's unfortunant to hear"
							return
				else
					if(!usr.kk_quest_complete)
						if(usr.gregory_hit && usr.bubbles_caught)
							usr << "<font color = white>King Kai:</font> Great work! You truely are worthy of such a powerful Technique"
							usr.kk_quest_complete = 1
							usr.learn_kaioken = 1
							usr.verbs += new/mob/learn/verb/Kaioken
							for(var/obj/Quests/King_Kai/A_Warriors_Worth/Q)
								del(Q)
						else
							usr << "<font color = white>King Kai:</font> You still aren't ready, keep Training!"
							return
					else



						var/talk = input("King Kai: What do you need, [usr.name]?","") in list ("I want to be revived","I want to go to Supreme Kai's","I want more training","Never Mind")

						switch(talk)

							if("Never Mind")
								return

							if("I want to be revived")
								if(src in oview(2))
									usr << "<font color = white>King Kai:</white> I see you are ready to go, let me revive you."
									usr.Power_Redefine()
									usr.overlays -= usr.halo
									usr.overlays -= halo
									usr.overlays -= usr.halo
									usr.overlays -= halo
									usr.dead = 0
									if(prob(40))
										usr.loc = locate(72,210,1)
										usr.safe = 1
										spawn(600)
										usr.safe = 0
										return

									else
										usr.loc = locate(197,55,1)
										usr.safe = 1
										spawn(600)
										usr.safe = 0
										return

							if("I want to go to Supreme Kai's")
								if(src in oview(2))

									usr << "<font color = white>King Kai:</white> Very well"
									usr.loc = locate(135,155,3)

							if("I want more training")
								if(src in view(2))

									if(usr.kk_quest_complete)
										if(!usr.kk_quest2_start)
											usr << "<font color = white>King Kai:</font> Greetings [usr.name]. I see your quiet a strong warrior. Would you like me to aid your training?"
											sleep(15)
											switch(alert("Begin your Training?","Quest: The Spirit Bomb","Yes","Not Yet"))
												if("Yes")
													usr.kk_quest2_start = 1
													usr.contents += new/obj/Quests/King_Kai/The_Spirit_Bomb
													usr << "<font color = white>King Kai:</font> Good to Hear! I'll teach you a skill called the <font color = #3399cc>Spirit Bomb</red>, but only if you can prove yourself!"
													usr << "<font color = white>King Kai:</font> If you can achieve 35% pure karma and train 25 levels, then I will consider you worth enough."
												else
													usr << "<font color = white>King Kai:</font> Ohh, that's unfortunant to hear"
													return
										else
											if(!usr.kk_quest2_complete)
												if(usr.karma == "Good" && usr.karma_rating >= 35)

													usr << "<font color = white>King Kai:</font> Great work! You truely are worthy of such a powerful Technique"
													usr.kk_quest2_complete = 1
													usr.learn_spirit_bomb = 1
													usr.verbs += new/mob/learn/verb/Spirit_Bomb
													for(var/obj/Quests/King_Kai/The_Spirit_Bomb/L)
														del(L)
												else
													usr << "<font color = white>King Kai:</font> You still aren't ready, keep Training!"
													return
									else
										usr << "<font color = white>King Kai:</font> You still aren't ready, keep Training!"

			else
				return