mob/proc/Changling_Trans()
	var/trans_time = 27

	if(src.upkeep == 5)
		trans_time = 5

	if(src.doing)
		return
	if(src.KO)
		return
	else
		if(!src.form_1)
			if(src.powerlevel_max >= 85000)
				src.safe = 1
				src.doing = 1
				src.icon_state = "enrage"
				src.frozen = 1
				sleep(trans_time)

				src.powerlevel = src.powerlevel_max
				src.ki = src.ki_max
				src.strength = src.strength_max
				src.defence = src.defence_max
				src.critical = src.critical_max
				src.dodge = src.dodge_max
				src.reflect = src.reflect_max
				src.block = src.block_max

				src.powerlevel *= 13
				src.ki *= 10
				src.strength *= 9
				src.defence *= 8

				src.block += 2
				src.dodge += 2
				src.critical += 5
				src.reflect += 5
				src.counter += 2

				src.speed = 3.8

				view(6) << "<font color = #800080>[src.name]'s power surges as they morph into their Second Form!"
				src.icon_state = ""
				src.icon = 'Changling - Form 2.dmi'
				new/obj/techs/Overlays/Crater_Small(src.loc)

				src.form_1 = 1
				src.frozen = 0
				src.doing = 0
				src.safe = 0
				src.FORM1_EXP()
//				src.Transformation_Strain()
				return
		else
			if(!src.form_2)
				if(src.powerlevel_max >= 250000)
					src.safe = 1
					src.doing = 1
					src.icon_state = "enrage"
					src.frozen = 1
					sleep(trans_time)

					src.powerlevel = src.powerlevel_max
					src.ki = src.ki_max
					src.critical = src.critical_max
					src.dodge = src.dodge_max
					src.strength = src.strength_max
					src.defence = src.defence_max
					src.reflect = src.reflect_max
					src.block = src.block_max

					src.powerlevel = src.powerlevel_max
					src.powerlevel *= 18
					src.ki *= 15
					src.strength *= 14
					src.defence *= 13

					src.block += 4
					src.dodge += 4
					src.critical += 7
					src.reflect += 7
					src.counter += 4

					src.speed = 3

					view(6) << "<font color = #800080>[src.name]'s power surges as they morph into their Third Form!"
					src.icon_state = ""
					src.icon = 'Changling - Form 3.dmi'
					new/obj/techs/Overlays/Crater_Small(src.loc)

					src.form_2 = 1
					src.frozen = 0
					src.doing = 0
					src.safe = 0
					return
			else
				if(!src.form_3)
					if(src.powerlevel_max >= 500000)
						src.safe = 1
						src.doing = 1
						src.icon_state = "enrage"
						src.frozen = 1
						sleep(trans_time)

						src.powerlevel = src.powerlevel_max
						src.ki = src.ki_max
						src.critical = src.critical_max
						src.dodge = src.dodge_max
						src.strength = src.strength_max
						src.defence = src.defence_max
						src.reflect = src.reflect_max
						src.block = src.block_max

						src.powerlevel = src.powerlevel_max
						src.powerlevel *= 23
						src.ki *= 20
						src.strength *= 19
						src.defence *= 18

						src.block += 6
						src.dodge += 6
						src.critical += 8
						src.reflect += 8
						src.counter += 6

						src.speed = 2.5

						src.overlays += small_purple_elec

						view(6) << "<font color = #800080>[src.name]'s power surges as they morph into their Forth Form!"
						src.icon_state = ""
						src.icon = 'Changling - Form 4.dmi'
						new/obj/techs/Overlays/Crater_Small(src.loc)
						src.form_3 = 1
						src.frozen = 0
						src.doing = 0
						src.safe = 0
						return
				else
					if(!src.form_4)
						if(src.powerlevel_max >= 1750000)
							src.safe = 1
							src.doing = 1
							src.icon_state = "enrage"
							src.frozen = 1
							sleep(trans_time)

							src.powerlevel = src.powerlevel_max
							src.ki = src.ki_max
							src.critical = src.critical_max
							src.dodge = src.dodge_max
							src.strength = src.strength_max
							src.defence = src.defence_max
							src.reflect = src.reflect_max
							src.block = src.block_max

							src.powerlevel *= 28
							src.ki *= 25
							src.strength *= 24
							src.defence *= 23

							src.block += 10
							src.dodge += 10
							src.critical += 12
							src.reflect += 12
							src.counter += 10

							src.speed = 1.8

							src.overlays -= small_purple_elec
							src.overlays += big_purple_elec

							view(6) << "<font color = #800080>[src.name]'s power surges as they morph into their 100% Power Form!"
							src.icon_state = ""
							src.icon = 'Changling - Form 5.dmi'
							new/obj/techs/Overlays/Crater_Center(src.loc)
							src.form_4 = 1
							src.frozen = 0
							src.doing = 0
							src.safe = 0
							return
					else
						if(!src.form_5)
							if(src.powerlevel_max >= 5000000)
								src.safe = 1
								src.doing = 1
								src.icon_state = "enrage"
								src.frozen = 1
								sleep(trans_time)

								src.powerlevel = src.powerlevel_max
								src.ki = src.ki_max
								src.critical = src.critical_max
								src.dodge = src.dodge_max
								src.strength = src.strength_max
								src.defence = src.defence_max
								src.reflect = src.reflect_max
								src.block = src.block_max

								src.powerlevel *= 330
								src.ki *= 300
								src.strength *= 290
								src.defence *= 280

								src.block += 9
								src.dodge += 9
								src.critical += 11
								src.reflect += 11
								src.counter += 9

								src.speed = 1.8


								view(6) << "<font color = #800080>[src.name]'s power surges as they morph into their Hidden Form!"
								src.icon_state = ""
								src.icon = 'Changling - Form 6.dmi'
								new/obj/techs/Overlays/Crater_Center(src.loc)
								src.form_5 = 1
								src.frozen = 0
								src.doing = 0
								src.safe = 0

								src.overlays += big_purple_elec
								return
						else
							if(!src.form_6)
								if(src.powerlevel_max >= 10000000)
									src.safe = 1
									src.doing = 1
									src.icon_state = "enrage"
									src.frozen = 1
									sleep(trans_time)

									src.powerlevel = src.powerlevel_max
									src.ki = src.ki_max
									src.critical = src.critical_max
									src.dodge = src.dodge_max
									src.strength = src.strength_max
									src.defence = src.defence_max
									src.reflect = src.reflect_max
									src.block = src.block_max

									src.powerlevel *=845
									src.ki *= 562
									src.strength *= 450
									src.defence *= 1600

									src.block += 9
									src.dodge += 9
									src.critical += 11
									src.reflect += 11
									src.counter += 9

									src.speed = 1.8


									view(6) << "<font color = #800080>[src.name]'s power surges as they morph into their True Final Form!"
									src.icon_state = ""
									src.icon = 'Changling - Form 7.dmi'
									new/obj/techs/Overlays/Crater_Center(src.loc)
									src.form_6 = 1
									src.frozen = 0
									src.doing = 0
									src.safe = 0

									src.overlays += big_purple_elec
									return