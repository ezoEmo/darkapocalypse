mob/proc/Android_Trans()


	if(src.doing)
		return
	else
		if(!src.form_1)
			if(src.powerlevel_max >= 100000  && src.chip >= 6 && src.kills >= 25)
				switch(alert("Are your sure you want to transform?","Permanent Transformation","Yes","No"))
					if("Yes")
						if(src.transforming)
							return
						if(src.form_1)
							return
						src.transforming = 1
						src.safe = 1
						src.doing = 1
						src.icon_state = "enrage"
						src.frozen = 1
						sleep(20)

						src.powerlevel_max *= 7.5
						src.ki_max *= 8.5
						src.strength_max *= 8.5
						src.defence_max *= 8.5

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

						view(6) << "<font color = blue>[src.name] transforms into their Super Form!"
						src.icon_state = ""
						src.icon = 'Android - Form 2.dmi'
						src.overlays += android_elec
						new/obj/techs/Overlays/Crater_Small(src.loc)
						src.form_1 = 1
						src.frozen = 0
						src.doing = 0
						src.safe = 0
						src.transforming = 0
						return
					else
						return
		else
			if(!src.form_2)
				if(src.powerlevel_max >= 35000000  && src.kills >= 100)
					switch(alert("Are your sure you want to transform?","Permanent Transformation","Yes","No"))
						if("Yes")
							if(src.transforming)
								return
							if(src.form_2)
								return

							src.transforming = 1

							src.safe = 1
							src.doing = 1
							src.icon_state = "enrage"
							src.frozen = 1
							sleep(20)

							src.powerlevel_max *= 6
							src.ki_max *= 8
							src.strength_max *= 8
							src.defence_max *= 6

							src.critical_max += rand(1,10)
							src.dodge_max += rand(1,10)
							src.reflect_max += rand(1,10)
							src.block_max += rand(1,10)
							src.counter_max += rand(1,10)

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
							src.overlays -= android_elec
							src.overlays += ultimate_elec
							src.overlays -= goku_hair
							src.overlays -= vegeta_hair
							src.overlays -= gohan_teen_hair
							src.overlays -= gohan_adult_hair
							src.overlays -= trunks_long_hair
							src.overlays -= future_gohan_hair
							src.overlays -= goku_hair_ssj
							src.overlays -= raditz_hair
							src.overlays -= raditz_hair_ssj
							src.overlays += src.hair_droid

							view(6) << "<font color = blue>[src.name] transforms into their Ultra Form!"
							src.icon_state = ""
							src.icon = 'Android - Form 3.dmi'
							new/obj/techs/Overlays/Crater_Center(src.loc)
							src.form_2 = 1
							src.frozen = 0
							src.doing = 0
							src.safe = 0
							src.transforming = 0
							return
						else
							return
			else
				if(!src.form_3)
					if(src.powerlevel_max >= 350000000  && src.kills >= 500)
						switch(alert("Are your sure you want to transform?","Permanent Transformation","Yes","No"))
							if("Yes")
								if(src.transforming)
									return
								if(src.form_3)
									return

								src.transforming = 1

								src.safe = 1
								src.doing = 1
								src.icon_state = "enrage"
								src.frozen = 1
								sleep(20)

								src.powerlevel_max *= 6
								src.ki_max *= 8
								src.strength_max *= 8
								src.defence_max *= 6

								src.critical_max += rand(1,10)
								src.dodge_max += rand(1,10)
								src.reflect_max += rand(1,10)
								src.block_max += rand(1,10)
								src.counter_max += rand(1,10)

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
								src.overlays -= android_elec
								src.overlays += ultimate_elec
								src.overlays -= goku_hair
								src.overlays -= vegeta_hair
								src.overlays -= gohan_teen_hair
								src.overlays -= gohan_adult_hair
								src.overlays -= trunks_long_hair
								src.overlays -= future_gohan_hair
								src.overlays -= goku_hair_ssj
								src.overlays -= raditz_hair
								src.overlays -= raditz_hair_ssj


								view(6) << "<font color = blue>[src.name] transforms into their Battle Android!"
								src.icon_state = ""
								src.icon = 'Battle android.dmi'
								new/obj/techs/Overlays/Crater_Center(src.loc)
								src.form_3 = 1
								src.frozen = 0
								src.doing = 0
								src.safe = 0
								src.transforming = 0
								return
							else
								return
				else
					if(!src.form_4)
						if(src.powerlevel_max >= 50000000000  && src.kills >= 1000)
							switch(alert("Are your sure you want to transform?","Permanent Transformation","Yes","No"))
								if("Yes")
									if(src.transforming)
										return
									if(src.form_4)
										return

									src.transforming = 1

									src.safe = 1
									src.doing = 1
									src.icon_state = "enrage"
									src.frozen = 1
									sleep(20)

									src.powerlevel_max *= 6
									src.ki_max *= 8
									src.strength_max *= 8
									src.defence_max *= 6

									src.critical_max += rand(1,10)
									src.dodge_max += rand(1,10)
									src.reflect_max += rand(1,10)
									src.block_max += rand(1,10)
									src.counter_max += rand(1,10)

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
									src.overlays -= android_elec
									src.overlays += ultimate_elec
									src.overlays -= goku_hair
									src.overlays -= vegeta_hair
									src.overlays -= gohan_teen_hair
									src.overlays -= gohan_adult_hair
									src.overlays -= trunks_long_hair
									src.overlays -= future_gohan_hair
									src.overlays -= goku_hair_ssj
									src.overlays -= raditz_hair
									src.overlays -= raditz_hair_ssj


									view(6) << "<font color = blue>[src.name] transforms into their Ultimate Form!"
									src.icon_state = ""
									src.icon = 'Android - Form 4.dmi'
									new/obj/techs/Overlays/Crater_Center(src.loc)
									src.form_4 = 1
									src.frozen = 0
									src.doing = 0
									src.safe = 0
									src.transforming = 0
									return
								else
									return
					else
						if(!src.form_5)
							if(src.powerlevel_max >= 7500000000000  && src.kills >= 1500)
								switch(alert("Are your sure you want to transform?","Permanent Transformation","Yes","No"))
									if("Yes")
										if(src.transforming)
											return
										if(src.form_5)
											return

										src.transforming = 1

										src.safe = 1
										src.doing = 1
										src.icon_state = "enrage"
										src.frozen = 1
										sleep(20)

										src.powerlevel_max *= 6
										src.ki_max *= 8
										src.strength_max *= 8
										src.defence_max *= 6

										src.critical_max += rand(1,10)
										src.dodge_max += rand(1,10)
										src.reflect_max += rand(1,10)
										src.block_max += rand(1,10)
										src.counter_max += rand(1,10)

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
										src.overlays -= android_elec
										src.overlays += ultimate_elec
										src.overlays -= goku_hair
										src.overlays -= vegeta_hair
										src.overlays -= gohan_teen_hair
										src.overlays -= gohan_adult_hair
										src.overlays -= trunks_long_hair
										src.overlays -= future_gohan_hair
										src.overlays -= goku_hair_ssj
										src.overlays -= raditz_hair
										src.overlays -= raditz_hair_ssj
										src.overlays -= src.hair_droid
										src.overlays += src.hair_droid2
										view(6) << "<font color = blue>[src.name] transforms into their Mega Ultimate Form!"
										src.icon_state = ""
										src.icon = 'Android - Form 5.dmi'
										new/obj/techs/Overlays/Crater_Center(src.loc)
										src.form_5 = 1
										src.frozen = 0
										src.doing = 0
										src.safe = 0
										src.transforming = 0
										return
									else
										return
						else
							if(!src.form_6)
								if(src.powerlevel_max >= 7500000000000  && src.kills >= 1500)
									switch(alert("Are your sure you want to transform?","Permanent Transformation","Yes","No"))
										if("Yes")
											if(src.transforming)
												return
											if(src.form_6)
												return

											src.transforming = 1

											src.safe = 1
											src.doing = 1
											src.icon_state = "enrage"
											src.frozen = 1
											sleep(20)

											src.powerlevel_max *= 6
											src.ki_max *= 8
											src.strength_max *= 8
											src.defence_max *= 6

											src.critical_max += rand(1,10)
											src.dodge_max += rand(1,10)
											src.reflect_max += rand(1,10)
											src.block_max += rand(1,10)
											src.counter_max += rand(1,10)

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
											src.overlays -= android_elec
											src.overlays += ultimate_elec
											src.overlays -= goku_hair
											src.overlays -= vegeta_hair
											src.overlays -= gohan_teen_hair
											src.overlays -= gohan_adult_hair
											src.overlays -= trunks_long_hair
											src.overlays -= future_gohan_hair
											src.overlays -= goku_hair_ssj
											src.overlays -= raditz_hair
											src.overlays -= raditz_hair_ssj
											src.overlays -= src.hair_droid
											src.overlays -= src.hair_droid
											src.overlays += src.rodhead
											view(6) << "<font color = blue>[src.name] transforms into their Ultimate Killing Form!"
											src.icon_state = ""
											src.icon = 'Rods.dmi'
											new/obj/techs/Overlays/Crater_Center(src.loc)
											src.form_6 = 1
											src.frozen = 0
											src.doing = 0
											src.safe = 0
											src.transforming = 0
											return
										else
											return