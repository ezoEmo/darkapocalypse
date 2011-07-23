mob/var/arms_implant 			= 0
mob/var/legs_implant 			= 0
mob/var/chest_implant 			= 0
mob/var/head_implant 			= 0

mob/var/chest_icon 				= 'Human Hybrid - Android Chest.dmi'
mob/var/head_icon 				= 'Human Hybrid - Android Head.dmi'
mob/var/arms_icon 				= 'Human Hybrid - Android Arms.dmi'
mob/var/legs_icon 				= 'Human Hybrid - Android Legs.dmi'

mob/var/learn_absorb 			= 0
mob/var/learn_scan 				= 0
mob/var/learn_selfdestruct 		= 0
mob/var/android_trans 			= 0
mob/var/chip 					= 0



mob
	NPC

		Dr_Gero

			name = "{NPC} Dr Gero"
			icon = 'Dr Gero.dmi'
			density = 1
			dead = 0
			safe = 1
			powerlevel = 1400000000000
			powerlevel_max = 1400000000000
			it_lock = 1

			ki = 1400000000000
			ki_max = 1400000000000

			level = "???"
			race = "Android"
			karma = "Evil"

			KO = 0

			zenni = 0

			New()
				src.CreateName()

			verb
				Talk()
					set src in oview(1)
					set category = null


					if(usr.race == "Android")
						switch(input("Dr Gero: What do you need [usr]?")in list("Transform(25 Kills)","Learn Instant Transmission (60 kills and level 400)","Nothing"))


							if("Transform(25 Kills)")
								if(usr.kills >= 25)
									if(!usr.android_trans)
										usr.contents += new/obj/Transform/Transform
										usr.android_trans = 1
									else
										usr << "<font color = white>Dr Gero:</font> I Already gave you this, now get out!"
										return
								else
									usr << "<font color = white>Dr Gero:</font> Go get me more kills!"
									return


							if("Learn Instant Transmission (60 kills and level 400)")
								if(usr.kills >= 60 && usr.level >=400)
									if(!usr.learn_it)
										usr << "<font color = white>Dr Gero:</font> Your upgrade shall begin now!!"
										usr.sight |= BLIND
										sleep(100)
										usr << "<center><font color = white> .:: You learn to Instantly Transmit  ::.</font></center></center>"
										usr.verbs += new/mob/learn/verb/Android_Instant_Transmission
										usr.learn_it = 1
										usr.sight &= ~BLIND
									else
										usr << "<font color = white>Dr Gero:</font> I Already gave you this, now get out!"
										return
								else
									usr << "<font color = white>Dr Gero:</font> Go get me more kills!"
									return

							else
								return


								return



/*					if(usr.race == "Human")
						if(usr.karma == "Evil")
							switch(input("Dr Gero: What do you need [usr]?")in list("Install Mechanical Parts","Nothing"))

								if("Install Mechanical Parts")
									if(src in oview(1))
										switch(input("Dr Gero: What Bio-Part do you want?")in list("Artificial Arms and Hands","Artificial Legs and Feet","Artificial Chest","Artificial Head"))

											if("Artificial Arms and Hands")
												if(usr.powerlevel_max >= 15000)
													if(!usr.arms_implant)
														usr.sight |= BLIND
														sleep(35)
														usr.frozen = 1
														usr.verbs += new/mob/learn/verb/Ki_Absorb
														usr.learn_absorb = 1
														usr.powerlevel_max *= rand(1.3,1.5)
														usr.ki_max *= rand(1.3,1.5)
														usr.strength_max *= rand(2,4)
														usr.block_max += 2
														usr.reflect_max += 7
														usr.reflect = usr.reflect_max
														usr.block = usr.block_max
														usr.overlays += usr.arms_icon

														usr.powerlevel = usr.powerlevel_max
														usr.strength = usr.strength_max

														usr.arms_implant = 1
														usr.sight &= ~BLIND
														usr.frozen = 0
														usr << "<font color = white>Dr Gero:</font> Your Artificial Arms and Hands are installed!"
														return
													else
														usr << "<font color = white>Dr Gero:</font> You have this Implant Already!"
														return
												else
													usr << "<font color = white>Dr Gero:</font> You aren't strong enough for this Implant"
													return

											if("Artificial Legs and Feet")
												if(usr.powerlevel_max >= 25000)
													if(!usr.legs_implant)
														usr.sight |= BLIND
														sleep(50)
														usr.frozen = 1
														usr.powerlevel_max *= rand(1.3,1.5)
														usr.ki_max *= rand(1.3,1.5)
														usr.speed -= 2
														usr.dodge_max += 2
														usr.dodge = usr.dodge_max
														usr.overlays += usr.legs_icon

														usr.powerlevel = usr.powerlevel_max

														usr.legs_implant = 1
														usr.sight &= ~BLIND
														usr.frozen = 0
														usr << "<font color = white>Dr Gero:</font> Your Artificial Legs and Feet are installed!"
														return
													else
														usr << "<font color = white>Dr Gero:</font> You have this Implant Already!"
														return
												else
													usr << "<font color = white>Dr Gero:</font> You aren't strong enough for this Implant"
													return

											if("Artificial Chest")
												if(usr.powerlevel_max >= 50000)
													if(!usr.chest_implant)
														usr.sight |= BLIND
														sleep(65)
														usr.frozen = 1
														usr.powerlevel_max *= rand(1.3,1.5)
														usr.ki_max *= rand(1.3,1.5)
														usr.verbs += new/mob/learn/verb/Self_Destruct
														usr.defence_max *= rand(2,4)
														usr.dodge_max -= 3
														usr.overlays += usr.chest_icon
														usr.learn_selfdestruct = 1

														usr.powerlevel = usr.powerlevel_max
														usr.defence = usr.defence_max
														usr.speed = usr.speed_max

														usr.chest_implant = 1
														usr.sight &= ~BLIND
														usr.frozen = 0
														usr << "<font color = white>Dr Gero:</font> Your Artificial Chest has been installed!"
														return
													else
														usr << "<font color = white>Dr Gero:</font> You have this Implant Already!"
														return
												else
													usr << "<font color = white>Dr Gero:</font> You aren't strong enough for this Implant"
													return

											if("Artificial Head")
												if(usr.powerlevel_max >= 5000)
													if(!usr.head_implant)
														usr.sight |= BLIND
														sleep(125)
														usr.powerlevel_max *= rand(1.3,1.5)
														usr.frozen = 1
														usr.ki_max *= 5
														usr.verbs += new/mob/learn/verb/Scan
														usr.overlays += usr.head_icon
														usr.learn_scan = 1

														usr.ki = usr.ki_max

														usr.head_implant = 1
														usr.sight &= ~BLIND
														usr.frozen = 0
														usr << "<font color = white>Dr Gero:</font> Your Android Conversion is Complete!"
														return
													else
														usr << "<font color = white>Dr Gero:</font> You have this Implant Already!"
														return
												else
													usr << "<font color = white>Dr Gero:</font> You aren't strong enough for this Implant"
													return
								else
									return
						else
							usr << "<font color = white>Dr Gero:</font> Get out of here you filthy Do-Gooder!"
							return
					else
						usr << "<font color = white>Dr Gero:</font> Get out of here you filthy [usr.race]!"
						return*/




