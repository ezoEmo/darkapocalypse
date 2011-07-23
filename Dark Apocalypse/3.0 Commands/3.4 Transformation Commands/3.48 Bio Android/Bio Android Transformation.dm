mob/proc/Bio_Trans()


	if(src.doing)
		return
	if(src.KO)
		return
	else
		if(!src.form_1)
			if(src.powerlevel_max >= 100000  && src.absorb_kill >= 10)
				switch(alert("Are your sure you want to transform?","Permanent Transformation","Yes","No"))
					if("Yes")
						if(src.transforming)
							return
						if(src.form_1)
							return
						src.form_1 = 1
						src.transforming = 1
						src.safe = 1
						src.doing = 1
						src.icon_state = "enrage"
						src.frozen = 1
						sleep(20)

						src.powerlevel_max *= 2.5
						src.ki_max *= 2.5
						src.strength_max *= 2.5
						src.defence_max *= 2.5

						src.critical_max += rand(1,3)
						src.dodge_max += rand(1,4)
						src.reflect_max += rand(1,2)
						src.block_max += rand(1)
						src.counter_max += rand(1,3)

						src.speed = 3.7
						src.speed_max = 3.7

						src.powerlevel = src.powerlevel_max
						src.ki = src.ki_max
						src.strength = src.strength_max
						src.defence = src.defence_max
						src.critical = src.critical_max
						src.dodge = src.dodge_max
						src.reflect = src.reflect_max
						src.block = src.block_max

						view(6) << "<font color = green>[src.name] transforms into their Imperfect Form!"
						src.icon_state = ""
						src.icon = 'Bio Android - Form 2.dmi'
						new/obj/techs/Overlays/Crater_Small(src.loc)

						src.frozen = 0
						src.doing = 0
						src.safe = 0
						src.transforming = 0
						return
					else
						return
		else
			if(!src.form_2)
				if(src.powerlevel_max >= 2500000  && src.absorb_kill >= 30)
					switch(alert("Are your sure you want to transform?","Permanent Transformation","Yes","No"))
						if("Yes")
							if(src.transforming)
								return
							if(src.form_2)
								return
							src.transforming = 1
							src.form_2 = 1
							src.contents -= new/obj/Techniques/Bio_Android/Absorb

							src.safe = 1
							src.doing = 1
							src.icon_state = "enrage"
							src.frozen = 1
							sleep(20)

							src.powerlevel_max *= 4
							src.ki_max *= 2
							src.strength_max *= 4
							src.defence_max *= 3

							src.critical_max += rand(1,7)
							src.dodge_max += rand(1,7)
							src.reflect_max += rand(1,7)
							src.block_max += rand(1,7)
							src.counter_max += rand(1,7)

							src.speed = 2.2
							src.speed_max = 2.2

							src.powerlevel = src.powerlevel_max
							src.ki = src.ki_max
							src.strength = src.strength_max
							src.defence = src.defence_max
							src.critical = src.critical_max
							src.dodge = src.dodge_max
							src.reflect = src.reflect_max
							src.block = src.block_max

							view(6) << "<font color = green>[src.name] transforms into their Perfect Form!"
							src.icon_state = ""
							src.icon = 'Bio Android - Form 3.dmi'
							new/obj/techs/Overlays/Crater_Small(src.loc)

							src.frozen = 0
							src.doing = 0
							src.safe = 0
							src.transforming = 0
							src.verbs += new/mob/learn/verb/Createcell
							src.learn_celljr = 1
							src << "<center><font color = white> .:: You learn to make cell jrs ::.</font></center></center>"

							return
						else
							return
			else
				if(!src.form_3)
					if(src.powerlevel_max >= 30000000  && src.level >= 750)
						src.safe = 1
						src.doing = 1
						src.icon_state = "enrage"
						src.frozen = 1
						sleep(5)

						src.powerlevel = src.powerlevel_max
						src.ki = src.ki_max
						src.strength = src.strength_max
						src.defence = src.defence_max

						src.powerlevel *= 7
						src.ki *= 10
						src.strength *= 7
						src.defence *= 7

						src.speed = 3.8

						src.critical = src.critical_max
						src.dodge = src.dodge_max
						src.reflect = src.reflect_max
						src.block = src.block_max

						src.block += 15
						src.dodge += 15
						src.critical += 15
						src.reflect += 15
						src.counter += 15
						src.overlays += small_blue_elec

						view(6) << "<font color = green>[src.name] changes into their Perfect Power Weighted Form!"
						src.icon_state = ""
						src.icon = 'Bio Android - Form 4.dmi'
						new/obj/techs/Overlays/Crater_Center(src.loc)
						src.form_3 = 1
						src.frozen = 0
						src.doing = 0
						src.safe = 0
						return
				else
					if(!src.form_4)
						if(src.powerlevel_max >= 500000000  && src.level >= 1000)
							src.safe = 1
							src.doing = 1
							src.icon_state = "enrage"
							src.frozen = 1
							sleep(5)

							src.powerlevel = src.powerlevel_max
							src.ki = src.ki_max
							src.strength = src.strength_max
							src.defence = src.defence_max

							src.powerlevel *= 17
							src.ki *= 30
							src.strength *= 27
							src.defence *= 27

							src.speed = 3.8

							src.critical = src.critical_max
							src.dodge = src.dodge_max
							src.reflect = src.reflect_max
							src.block = src.block_max

							src.block += 15
							src.dodge += 15
							src.critical += 15
							src.reflect += 15
							src.counter += 15
							src.overlays += small_blue_elec

							view(6) << "<font color = green>[src.name] changes into their Darker Prefect Form!"
							src.icon_state = ""
							src.icon = 'Bio Android - Form 7.dmi'
							new/obj/techs/Overlays/Crater_Center(src.loc)
							src.form_4 = 1
							src.frozen = 0
							src.doing = 0
							src.safe = 0
							return
					else
						if(!src.form_5)
							if(src.powerlevel_max >= 10000000000  && src.level >= 2000)
								src.safe = 1
								src.doing = 1
								src.icon_state = "enrage"
								src.frozen = 1
								sleep(5)

								src.powerlevel = src.powerlevel_max
								src.ki = src.ki_max
								src.strength = src.strength_max
								src.defence = src.defence_max

								src.powerlevel *= 7
								src.ki *= 10
								src.strength *= 7
								src.defence *= 7

								src.speed = 3.8

								src.critical = src.critical_max
								src.dodge = src.dodge_max
								src.reflect = src.reflect_max
								src.block = src.block_max

								src.block += 15
								src.dodge += 15
								src.critical += 15
								src.reflect += 15
								src.counter += 15
								src.overlays += small_blue_elec

								view(6) << "<font color = green>[src.name] changes into their Lighter Prefect Form!"
								src.icon_state = ""
								src.icon = 'Bio Android - Form 6.dmi'
								new/obj/techs/Overlays/Crater_Center(src.loc)
								src.form_5 = 1
								src.frozen = 0
								src.doing = 0
								src.safe = 0
								return
						else
							if(!src.form_6)
								if(src.powerlevel_max >= 1000000000000  && src.level >= 2000)
									src.safe = 1
									src.doing = 1
									src.icon_state = "enrage"
									src.frozen = 1
									sleep(5)

									src.powerlevel = src.powerlevel_max
									src.ki = src.ki_max
									src.strength = src.strength_max
									src.defence = src.defence_max

									src.powerlevel *= 7
									src.ki *= 12
									src.strength *= 7
									src.defence *= 7

									src.speed = 3.8

									src.critical = src.critical_max
									src.dodge = src.dodge_max
									src.reflect = src.reflect_max
									src.block = src.block_max

									src.block += 15
									src.dodge += 15
									src.critical += 15
									src.reflect += 15
									src.counter += 15
									src.overlays += small_blue_elec

									view(6) << "<font color = green>[src.name] changes into their Freak Prefect Form!"
									src.icon_state = ""
									src.icon = 'Bio Android - Form 5.dmi'
									new/obj/techs/Overlays/Crater_Center(src.loc)
									src.form_6 = 1
									src.frozen = 0
									src.doing = 0
									src.safe = 0
									return