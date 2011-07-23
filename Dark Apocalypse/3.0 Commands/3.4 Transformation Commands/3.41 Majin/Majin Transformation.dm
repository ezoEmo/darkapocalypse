mob/var/transforming = 0
mob/proc/Majin_Trans()

	if(src.doing)
		return
	else
		if(!src.form_3)
			if(src.obtain_super_2 && src.powerlevel_max >= 5000000)
				src.transforming = 1
				src.safe = 1
				src.doing = 1
				src.icon_state = "enrage"
				src.frozen = 1
				sleep(19)

				src.powerlevel *= 7
				src.ki *= 7
				src.strength *= 5
				src.defence *= 7


				src.critical += rand(1,5)
				src.dodge += rand(1,5)
				src.reflect += rand(1,5)
				src.block += rand(1,5)
				src.counter += rand(1,5)

				src.speed = 2.3


				src.overlays += small_red_elec

				view(6) << "<font color = #FF3DA6>The ground around [src.name] shakes and cracks as they Morph into their Fourth Form"
				src.icon_state = ""
				src.icon = 'Majin - Form 4.dmi'
				new/obj/techs/Overlays/Crater_Center(src.loc)
				src.form_3 = 1
				src.frozen = 0
				src.doing = 0
				src.safe = 0
				src.transforming = 0
				return
		else
			if(!src.form_4)
				if(src.eats >= 400 && src.powerlevel_max >= 40000000 && src.level >= 1150)
					switch(alert("Are your sure you want to transform?","Permanent Transformation","Yes","No"))
						if("Yes")
							if(src.transforming)
								return
							if(src.form_4)
								return
							else
								src.transforming = 1
								src.form_4 = 1
								src.safe = 1
								src.doing = 1
								flick("kid trans",src)
								src.frozen = 1
								sleep(100)

								src.powerlevel_max *= 6.5
								src.ki_max *= 7
								src.strength_max *= 5
								src.defence_max *= 6.5

								src.critical_max += rand(1,10)
								src.dodge_max += rand(1,10)
								src.reflect_max += rand(1,10)
								src.block_max += rand(1,10)
								src.counter_max += rand(1,10)

								src.speed = 1.6
								src.speed_max = 1.6

								src.powerlevel = src.powerlevel_max
								src.ki = src.ki_max
								src.strength = src.strength_max
								src.defence = src.defence_max
								src.critical = src.critical_max
								src.dodge = src.dodge_max
								src.reflect = src.reflect_max
								src.block = src.block_max

								src.overlays -= small_red_elec
								src.overlays += big_red_elec

								view(6) << "<font color = #FF3DA6>[src.name] screams out as the ground shakes and cracks as they Morph into their Final Form!"
								src.icon_state = ""
								src.icon = 'Majin - Form 5.dmi'
								new/obj/techs/Overlays/Crater_Center(src.loc)
								src.form_4 = 1
								src.frozen = 0
								src.doing = 0
								src.safe = 0
								src.transforming = 0
								src.contents -= new/obj/Techniques/Majin/Absorb
								return
						if("No")
							return
				else
					if(!src.form_5)
						if(src.powerlevel_max >= 500000000 && src.level >= 1150)
							switch(alert("Are your sure you want to transform?","Permanent Transformation","Yes","No"))
								if("Yes")
									if(src.transforming)
										return
									if(src.form_5)
										return
									else
										src.transforming = 1
										src.form_5 = 1
										src.safe = 1
										src.doing = 1
										flick("enrage",src)
										src.frozen = 1
										sleep(100)

										src.powerlevel_max *= 6.5
										src.ki_max *= 7
										src.strength_max *= 5
										src.defence_max *= 6.5

										src.critical_max += rand(1,10)
										src.dodge_max += rand(1,10)
										src.reflect_max += rand(1,10)
										src.block_max += rand(1,10)
										src.counter_max += rand(1,10)

										src.speed = 1.6
										src.speed_max = 1.6

										src.powerlevel = src.powerlevel_max
										src.ki = src.ki_max
										src.strength = src.strength_max
										src.defence = src.defence_max
										src.critical = src.critical_max
										src.dodge = src.dodge_max
										src.reflect = src.reflect_max
										src.block = src.block_max

										src.overlays -= small_red_elec
										src.overlays += big_red_elec

										view(6) << "<font color = #FF3DA6>[src.name] screams out as the ground shakes and cracks as they Morph into their Frist Kid Buu!"
										src.icon_state = ""
										src.icon = 'Kid Buu.dmi'
										new/obj/techs/Overlays/Crater_Center(src.loc)
										src.form_5 = 1
										src.frozen = 0
										src.doing = 0
										src.safe = 0
										src.transforming = 0
										return
								if("No")
									return
						else
							if(!src.form_6)
								if(src.powerlevel_max >= 40000000 && src.level >= 1150)
									switch(alert("Are your sure you want to transform?","Permanent Transformation","Yes","No"))
										if("Yes")
											if(src.transforming)
												return
											if(src.form_6)
												return
											else
												src.transforming = 1
												src.form_6 = 1
												src.safe = 1
												src.doing = 1
												flick("enrage",src)
												src.frozen = 1
												sleep(100)

												src.powerlevel_max *= 6.5
												src.ki_max *= 7
												src.strength_max *= 5
												src.defence_max *= 6.5

												src.critical_max += rand(1,10)
												src.dodge_max += rand(1,10)
												src.reflect_max += rand(1,10)
												src.block_max += rand(1,10)
												src.counter_max += rand(1,10)

												src.speed = 1.6
												src.speed_max = 1.6

												src.powerlevel = src.powerlevel_max
												src.ki = src.ki_max
												src.strength = src.strength_max
												src.defence = src.defence_max
												src.critical = src.critical_max
												src.dodge = src.dodge_max
												src.reflect = src.reflect_max
												src.block = src.block_max

												src.overlays -= small_red_elec
												src.overlays += big_red_elec

												view(6) << "<font color = #FF3DA6>[src.name] screams out as the ground shakes and cracks as they Morph into their Blue form!"
												src.icon_state = ""
												src.icon = 'Majin - Form 4 (Blue).dmi'
												new/obj/techs/Overlays/Crater_Center(src.loc)

												src.form_6 = 1
												src.frozen = 0
												src.doing = 0
												src.safe = 0
												src.transforming = 0
												return
										if("No")
											return