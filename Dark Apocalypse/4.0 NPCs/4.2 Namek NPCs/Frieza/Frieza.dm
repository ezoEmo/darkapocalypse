mob/var/frieza_quest_start = 0
mob/var/frieza_quest_complete = 0
mob/var/frieza_quest2_start = 0
mob/var/frieza_quest2_complete = 0
mob/var/namek_kills = 0
mob/var/metal_converted = 0
mob/var/converting = 0

mob/NPC/

	Frieza
		name = "{NPC} Frieza"
		icon = 'Changling - Form 1.dmi'
		density = 1
		doing = 0
		safe = 1

		powerlevel = 100

		energy_code = 9980776

		New()
			src.CreateName()

		verb/Talk()
			set src in oview(1)
			set category = null
			switch(input("Frieza: What do you need [usr]?")in list("Convert To Metal(Changling Only)","Do my Quest","Take on My Second Quest","Nothing"))
				if("Do my Quest")
					if(usr.karma == "Evil")
						if(!usr.frieza_quest_start)
							usr << "<font color = white>Frieza:</font> Hmmm what do you want? Nothing? Good, but I have a Order for you!"
							sleep(15)
							switch(alert("Are you Ready?","Quest: Wraith of Frieza","Yes","Not Yet"))
								if("Yes")
									usr.frieza_quest_start = 1
									usr.contents += new/obj/Quests/Frieza/Wraith_of_Frieza
									usr << "<font color = white>Frieza:</font> There's been pesky Namekian's harrasing my troops. Take care of them and i'll see to your reward."
								else
									return
						else
							if(!usr.frieza_quest_complete)
								if(usr.namek_kills >= 3)
									usr.frieza_quest_complete = 1
									usr << "<font color = white>Frieza:</font> Perfect, now Namek will be mine! Hahahaha"
									usr.powerlevel_max += 40000
									usr.ki_max += 30000
									usr.strength_max += 10000
									usr.zenni += 7500

									usr.strength = usr.strength_max


									for(var/obj/Quests/Frieza/Wraith_of_Frieza/Q)
										del(Q)
								else
									usr << "<font color = white>Frieza:</font> Don't come bacxk till you have fixed the problem!"
									return
				if("Take on My Second Quest")
					if(usr.karma == "Evil")
						if(!usr.frieza_quest2_start)
							usr << "<font color = white>Frieza:</font> Hmmm what do you want? Nothing? Good, but I have a Order for you!"
							sleep(15)
							switch(alert("Are you Ready?","Quest: Frieza's Might","Yes","Not Yet"))
								if("Yes")
									usr.frieza_quest2_start = 1
									usr.contents += new/obj/Quests/Frieza/Friezas_Might
									usr << "<font color = white>Frieza:</font> There's been pesky Namekian's harrasing my troops. Take care of them and i'll see to your reward."
								else
									return
						else
							if(!usr.frieza_quest2_complete)
								if(usr.questnamekgoku_kill == 3 && usr.questnamekvegeta_kill == 1 && usr.questnamekgohan_kill == 1)
									usr.frieza_quest2_complete = 1
									usr << "<font color = white>Frieza:</font> Perfect, now Namek will be mine! Hahahaha"
									usr.exp += 2000000
									usr.zenni += 50000
									usr.Level_Up()


									for(var/obj/Quests/Frieza/Friezas_Might/L)
										del(L)
								else
									usr << "<font color = white>Frieza:</font> Don't come bacxk till you have fixed the problem!"
									return

				if("Convert To Metal(Changling Only)")
					if(!usr.metal_converted)
						if(usr.race == "Changling")
							if(usr.form_4)
								switch(input("Frieza: do you wish to be converted to metal? You can't go majin after this")in list("Yes","No"))
									if("Yes")
										switch(alert("Frieza: This will be permanent, are your sure?","Convert","Yes","No"))
											if("Yes")
												if(!converting)
													if(usr.powerlevel <= usr.powerlevel_max)
														usr << "\white Frieza: \font before converting, you must reach full power.Revert then Transform to 100%."
														return
													else
														usr.converting = 1
														usr.metal_converted = 1
														usr.sight |= BLIND
														sleep(100)
														usr.converting = 0
														usr.sight &= ~BLIND
														usr.powerlevel_max += usr.powerlevel + 200000000
														usr.ki_max += usr.ki + 200000000
														usr.strength_max += usr.strength + 150000000
														usr.defence_max += usr.defence + 150000000
														usr.speed = 3.3
														usr.speed_max = 3.3
														usr.Power_Redefine()
														usr.icon = 'Changling - Form 6.dmi'
														alert("There your transformation is complete, but you won't be able to get Majin boost now!")
														return



											if("No")
												return
									if("No")
										return
				if("Nothing")
					return

