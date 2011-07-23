mob/var/mystic = 0
mob/var/mysticing = 0
mob/NPC/Elder_Kai
	icon = 'Elder Kai.dmi'

	name = "{NPC} Elder Kai"
	density = 1
	safe = 1

	it_lock = 1

	New()
		src.CreateName()

	verb/Talk()
		set category = null
		set src in oview(1)

		if(src.doing)
			src << "The Elder Kai is busy channeling his energy to you"
			return

		if(usr.z_sword_quest)
			if(usr.karma == "Good" && usr.karma_rating >= 45 && usr.level >= 1000)
				if(usr.race == "Half Saiyan")
					if(usr.mystic <= 0)
						src.doing = 1
						usr << "<font color = white>Elder Kai:</font> Ahhh, I see you are the one who set me free!"
						sleep(25)
						usr << "<font color = white>Elder Kai:</font> You know, I used to train some of the Galaxies Strongest fighters?"
						sleep(25)
						usr << "<font color = white>Elder Kai:</font> If you want, for releasing me, I can teach you how to unlock a Power Deep within?"
						sleep(10)
						switch(alert("Do you wish to learn the Mystic ability from Elder Kai? (This Full process will take 45 minutes!)","Mystic Boost","Yes","No"))

							if("Yes")
								if(usr.mystic)
									usr << "You can only go mystic once"
									return
								usr.mystic = 1
								usr << "<font color = white>Elder Kai:</font> Sit child. The trainging shall begin..."

								if(usr.race == "Half Saiyan")
									usr.Half_Saiyan_Revert()

								sleep(15)

								usr.frozen = 1
								usr.safe = 1
								usr.mysticing ++
								usr.powerlevel_max += 300000
								usr.ki_max += 300000
								usr.strength_max += 50000
								usr.defence_max += 50000

								usr << "\white You feel some of your true power begin to flow through you..."
								switch(alert("Keep Training?","Mystic","Yes","No"))
									if("No")
										Explode(new /Effect/BasicBoom(src.loc,1,4))

										usr.frozen = 0
										usr.safe = 0

										usr.critical_max += rand(5,18)
										usr.dodge_max += rand(5,18)
										usr.reflect_max += rand(5,18)
										usr.block_max += rand(5,18)

										usr << "<font color = white>Elder Kai:</font> Your training is now complete!"
										usr.powerlevel = usr.powerlevel_max
										usr.ki = usr.ki_max
										usr.strength = usr.strength_max
										usr.defence = usr.defence_max
										usr.critical = usr.critical_max
										usr.dodge = usr.dodge_max
										usr.reflect = usr.reflect_max
										usr.block = usr.block_max
										usr.mysticing = 0
										usr.overlays += mystic_elec

										usr << "<font color = white>Elder Kai:</font> Your training is now complete!"

										src.doing = 0

										del(src)

										return

									if("Yes")
										if(usr.mysticing)
											usr.mysticing ++
											sleep(3000)

											usr.powerlevel_max += 250000
											usr.ki_max += 250000
											usr.strength_max += 50000
											usr.defence_max += 50000

											usr << "\white You feel more of your true power begin to flow through you..."

											switch(alert("Keep Training?","Mystic","Yes","No"))
												if("No")
													usr << "<font color = white>Elder Kai:</font> Your training is now complete!"
													Explode(new /Effect/BasicBoom(src.loc,1,4))

													usr.frozen = 0
													usr.safe = 0


													usr.critical_max += rand(5,18)
													usr.dodge_max += rand(5,18)
													usr.reflect_max += rand(5,18)
													usr.block_max += rand(5,18)

													usr.powerlevel = usr.powerlevel_max
													usr.ki = usr.ki_max
													usr.strength = usr.strength_max
													usr.defence = usr.defence_max
													usr.critical = usr.critical_max
													usr.dodge = usr.dodge_max
													usr.reflect = usr.reflect_max
													usr.block = usr.block_max

													usr.overlays += mystic_elec

													usr << "<font color = white>Elder Kai:</font> Your training is now complete!"

													src.doing = 0

													del(src)


													return

												if("Yes")
													if(usr.mysticing == 2)
														usr.mysticing ++
														sleep(6000)

														usr.powerlevel_max += 250000
														usr.ki_max += 250000
														usr.strength_max += 50000
														usr.defence_max += 50000

														usr << "\white You feel more of your true power begin to flow through you..."

														switch(alert("Keep Training?","Mystic","Yes","No"))
															if("No")
																usr << "<font color = white>Elder Kai:</font> Your training is now complete!"
																Explode(new /Effect/BasicBoom(src.loc,1,4))

																usr.frozen = 0
																usr.safe = 0


																usr.critical_max += rand(5,18)
																usr.dodge_max += rand(5,18)
																usr.reflect_max += rand(5,18)
																usr.block_max += rand(5,18)

																usr.powerlevel = usr.powerlevel_max
																usr.ki = usr.ki_max
																usr.strength = usr.strength_max
																usr.defence = usr.defence_max
																usr.critical = usr.critical_max
																usr.dodge = usr.dodge_max
																usr.reflect = usr.reflect_max
																usr.block = usr.block_max

																usr.overlays += mystic_elec

																usr << "<font color = white>Elder Kai:</font> Your training is now complete!"

																src.doing = 0

																del(src)

																return

															if("Yes")
																if(usr.mysticing == 3)
																	usr.mysticing ++
																	sleep(9000)

																	usr.powerlevel_max += rand(100000,300000)
																	usr.ki_max += rand(100000,300000)
																	usr.strength_max += rand(40000,80000)
																	usr.defence_max += rand(40000,80000)

																	usr << "\white You feel a surge of power flow through you..."

																	switch(alert("Keep Training?","Mystic","Yes","No"))
																		if("No")
																			usr << "<font color = white>Elder Kai:</font> Your training is now complete!"
																			Explode(new /Effect/BasicBoom(src.loc,1,4))

																			usr.frozen = 0
																			usr.safe = 0


																			usr.critical_max += rand(5,18)
																			usr.dodge_max += rand(5,18)
																			usr.reflect_max += rand(5,18)
																			usr.block_max += rand(5,18)

																			usr.powerlevel = usr.powerlevel_max
																			usr.ki = usr.ki_max
																			usr.strength = usr.strength_max
																			usr.defence = usr.defence_max
																			usr.critical = usr.critical_max
																			usr.dodge = usr.dodge_max
																			usr.reflect = usr.reflect_max
																			usr.block = usr.block_max

																			usr.overlays += mystic_elec

																			usr << "<font color = white>Elder Kai:</font> Your training is now complete!"

																			src.doing = 0

																			del(src)
																			return

																		if("Yes")
																			if(usr.mysticing == 4)
																				usr.mysticing = 5
																				sleep(9000)

																				usr.powerlevel_max += rand(250000,400000)
																				usr.ki_max += rand(250000,400000)
																				usr.strength_max += rand(80000,100000)
																				usr.defence_max += rand(80000,100000)

																				usr << "\white The ground shakes as your true power is finally unleashed..."
																				Explode(new /Effect/BasicBoom(src.loc,1,4))

																				usr.frozen = 0
																				usr.mystic = 1
																				usr.safe = 0

																				usr.critical_max += rand(5,18)
																				usr.dodge_max += rand(5,18)
																				usr.reflect_max += rand(5,18)
																				usr.block_max += rand(5,18)

																				usr.powerlevel = usr.powerlevel_max
																				usr.ki = usr.ki_max
																				usr.strength = usr.strength_max
																				usr.defence = usr.defence_max
																				usr.critical = usr.critical_max
																				usr.dodge = usr.dodge_max
																				usr.reflect = usr.reflect_max
																				usr.block = usr.block_max

																				usr.overlays += mystic_elec


																				usr << "<font color = white>Elder Kai:</font> Your training is now complete!"

																				src.doing = 0
																				del(src)

							if("No")
								src.doing = 0
								return
			else
				usr << "<font color = white>Elder Kai:</font> Your heart is not pure enough for my teachings"
				src.doing = 0
				del(src)
				return






mob/proc/mystic_cont()
	switch(alert("Keep Training?","Mystic","Yes","No"))
		if("No")
			usr.frozen = 0
			usr.safe = 0

			usr.critical_max += rand(5,18)
			usr.dodge_max += rand(5,18)
			usr.reflect_max += rand(5,18)
			usr.block_max += rand(5,18)

			usr.powerlevel = usr.powerlevel_max
			usr.ki = usr.ki_max
			usr.strength = usr.strength_max
			usr.defence = usr.defence_max
			usr.critical = usr.critical_max
			usr.dodge = usr.dodge_max
			usr.reflect = usr.reflect_max
			usr.block = usr.block_max
			usr.mysticing = 0
			usr.overlays += mystic_elec
			usr << "<font color = white>Elder Kai:</font> Your training is now complete!"
			return

		if("Yes")
			if(usr.mysticing)
				usr.mysticing ++
				sleep(3000)

				usr.powerlevel_max += 250000
				usr.ki_max += 250000
				usr.strength_max += 50000
				usr.defence_max += 50000

				usr << "\white You feel more of your true power begin to flow through you..."
				goto Next_1
			else
				goto Next_1

	Next_1
	switch(alert("Keep Training?","Mystic","Yes","No"))
		if("No")
			usr << "<font color = white>Elder Kai:</font> Your training is now complete!"

			usr.frozen = 0
			usr.safe = 0
			usr.mysticing = 0
			usr.critical_max += rand(5,18)
			usr.dodge_max += rand(5,18)
			usr.reflect_max += rand(5,18)
			usr.block_max += rand(5,18)

			usr.powerlevel = usr.powerlevel_max
			usr.ki = usr.ki_max
			usr.strength = usr.strength_max
			usr.defence = usr.defence_max
			usr.critical = usr.critical_max
			usr.dodge = usr.dodge_max
			usr.reflect = usr.reflect_max
			usr.block = usr.block_max

			usr.overlays += mystic_elec
			return


		if("Yes")
			if(usr.mysticing == 2)
				usr.mysticing ++
				usr.frozen = 1
				usr.doing = 1
				usr.safe = 1
				sleep(6000)
				usr.powerlevel_max += 250000
				usr.ki_max += 250000
				usr.strength_max += 50000
				usr.defence_max += 50000
				usr << "\white You feel more of your true power begin to flow through you..."
				goto Next_2
			else
				goto Next_2

	Next_2
	switch(alert("Keep Training?","Mystic","Yes","No"))
		if("No")
			usr << "<font color = white>Elder Kai:</font> Your training is now complete!"

			usr.frozen = 0
			usr.safe = 0
			usr.mysticing = 0

			usr.critical_max += rand(5,18)
			usr.dodge_max += rand(5,18)
			usr.reflect_max += rand(5,18)
			usr.block_max += rand(5,18)

			usr.powerlevel = usr.powerlevel_max
			usr.ki = usr.ki_max
			usr.strength = usr.strength_max
			usr.defence = usr.defence_max
			usr.critical = usr.critical_max
			usr.dodge = usr.dodge_max
			usr.reflect = usr.reflect_max
			usr.block = usr.block_max

			usr.overlays += mystic_elec
			return

		if("Yes")
			if(usr.mysticing == 3)
				usr.mysticing ++
				usr.frozen = 1
				usr.doing = 1
				usr.safe = 1
				sleep(9000)

				usr.powerlevel_max += rand(100000,300000)
				usr.ki_max += rand(100000,300000)
				usr.strength_max += rand(40000,80000)
				usr.defence_max += rand(40000,80000)

				usr << "\white You feel a surge of power flow through you..."
				goto Next_3
			else
				goto Next_3
	Next_3
	switch(alert("Keep Training?","Mystic","Yes","No"))
		if("No")
			usr.frozen = 0
			usr.safe = 0
			usr.mysticing = 0

			usr.critical_max += rand(5,18)
			usr.dodge_max += rand(5,18)
			usr.reflect_max += rand(5,18)
			usr.block_max += rand(5,18)

			usr.powerlevel = usr.powerlevel_max
			usr.ki = usr.ki_max
			usr.strength = usr.strength_max
			usr.defence = usr.defence_max
			usr.critical = usr.critical_max
			usr.dodge = usr.dodge_max
			usr.reflect = usr.reflect_max
			usr.block = usr.block_max

			usr.overlays += mystic_elec

			usr << "<font color = white>Elder Kai:</font> Your training is now complete!"

			src.doing = 0
			return

		if("Yes")
			if(usr.mysticing == 4)
				usr.mysticing = 0
				usr.frozen = 1
				usr.doing = 1
				usr.safe = 1
				sleep(9000)

				usr.powerlevel_max += rand(250000,400000)
				usr.ki_max += rand(250000,400000)
				usr.strength_max += rand(80000,100000)
				usr.defence_max += rand(80000,100000)

				usr << "\white The ground shakes as your true power is finally unleashed..."

				usr.frozen = 0
				usr.safe = 0

				usr.critical_max += rand(5,18)
				usr.dodge_max += rand(5,18)
				usr.reflect_max += rand(5,18)
				usr.block_max += rand(5,18)

				usr.powerlevel = usr.powerlevel_max
				usr.ki = usr.ki_max
				usr.strength = usr.strength_max
				usr.defence = usr.defence_max
				usr.critical = usr.critical_max
				usr.dodge = usr.dodge_max
				usr.reflect = usr.reflect_max
				usr.block = usr.block_max

				usr.overlays += mystic_elec

				sleep(30)
				usr << "<font color = white>Elder Kai:</font> Your training is now complete!"

				src.doing = 0
			else
				usr << "<font color = white>Elder Kai:</font> Your training is now complete!"

				return