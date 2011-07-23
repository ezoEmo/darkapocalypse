mob/proc/Half_Saiyan_Trans()
	var/trans_time = 22

	if(src.upkeep == 5)
		trans_time = 5

	if(src.doing)
		return
	if(src.KO)
		return
	else
		if(!src.form_1)
			if(src.powerlevel_max >= 60000)
				if(!src.ascended_ssj)
					src.aura_on = 0
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

					src.powerlevel *= 10
					src.ki *= 8
					src.strength *= 9
					src.defence *= 8

					src.block += 2
					src.dodge += 5
					src.critical += 2
					src.reflect += 5
					src.counter += 2

					src.speed = 2.9

					src.overlays -= src.goku_hair
					src.overlays -= src.gohan_adult_hair
					src.overlays -= src.gohan_teen_hair
					src.overlays -= src.future_gohan_hair
					src.overlays -= src.raditz_hair
					src.overlays -= src.vegeta_hair
					src.overlays -= src.trunks_long_hair


					src.underlays -= aura
					src.underlays += ssj_aura
					spawn(25) src.underlays -= ssj_aura

					src.SSJ_Hair_Apply()
					spawn(5) src.SSJ_EXP()

					view(6) << "<font color = yellow>[src.name] screams in an Uncontrollable Rage as their Hair Spikes up and turns Light Gold!"
					src.icon_state = ""
					new/obj/techs/Overlays/Crater_Small(src.loc)

					src.form_1 = 1
					src.frozen = 0
					src.doing = 0
//					spawn(10) src.Transformation_Strain()
					return
				else
					src.doing = 1
					src.icon_state = "enrage"
					src.frozen = 1
					sleep(trans_time)

					src.powerlevel = src.powerlevel_max
					src.ki = src.ki_max
					src.critical = src.critical_max
					src.dodge = src.dodge_max
					src.reflect = src.reflect_max
					src.block = src.block_max

					if(src.hair == "Goku")
						src.overlays -= src.goku_hair
						src.overlays += src.goku_hair_assj
					if(src.hair == "Adult Gohan")
						src.overlays -= src.gohan_adult_hair
						src.overlays += src.gohan_adult_hair_assj
					if(src.hair == "Teen Gohan")
						src.overlays -= src.gohan_teen_hair
						src.overlays += src.gohan_teen_hair_assj
					if(src.hair == "Future Gohan")
						src.overlays -= src.future_gohan_hair
						src.overlays += src.future_gohan_hair_assj
					if(src.hair == "Vegeta")
						src.overlays -= src.vegeta_hair
						src.overlays += src.vegeta_hair_assj
					if(src.hair == "Trunks Long")
						src.overlays -= src.trunks_long_hair
						src.overlays += src.trunks_long_hair_assj

					src.underlays -= aura
					src.underlays += ssj_aura
					spawn(25) src.underlays -= ssj_aura

					src.powerlevel *= 12
					src.ki *= 11
					src.strength *= 3.8
					src.defence *= 2

					src.block += 4
					src.dodge += 6
					src.critical += 3
					src.reflect += 6
					src.counter += 4

					src.speed = 2.6

					view(6) << "<I><font color = yellow>[src.name] screams in rage as their Hair Spikes up and turns Light Gold!</I>"
					src.icon_state = ""

					src.form_1 = 1
					src.frozen = 0
					src.doing = 0
					return
		else
			if(!src.form_2)
				if(src.powerlevel_max >= 350000)
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

					if(src.hair == "Goku")
						src.overlays -= src.goku_hair_ssj
						src.overlays -= src.goku_hair_assj
						src.overlays += src.goku_hair_ussj
					if(src.hair == "Adult Gohan")
						src.overlays -= src.gohan_adult_hair_ssj
						src.overlays -= src.gohan_adult_hair_assj
						src.overlays += src.gohan_adult_hair_ussj
					if(src.hair == "Teen Gohan")
						src.overlays -= src.gohan_teen_hair_ssj
						src.overlays -= src.gohan_teen_hair_assj
						src.overlays += src.gohan_teen_hair_ussj
					if(src.hair == "Future Gohan")
						src.overlays -= src.future_gohan_hair_ssj
						src.overlays -= src.future_gohan_hair_assj
						src.overlays += src.future_gohan_hair_ussj
					if(src.hair == "Vegeta")
						src.overlays -= src.vegeta_hair_ssj
						src.overlays -= src.vegeta_hair_assj
						src.overlays += src.vegeta_hair_ussj
					if(src.hair == "Trunks Long")
						src.overlays -= src.trunks_long_hair_ssj
						src.overlays -= src.trunks_long_hair_assj
						src.overlays += src.trunks_long_hair_ussj

					src.underlays -= aura
					src.underlays += ssj_aura
					spawn(25) src.underlays -= ssj_aura

					src.overlays += src.small_blue_elec

					src.powerlevel *= 18
					src.ki *= 13
					src.strength *= 14
					src.defence *= 15

					src.block -= 5
					src.dodge -= 15
					src.critical += 10
					src.reflect -= 5
					src.counter -= 5

					src.speed = 7

					view(6) << "<font color = yellow>[src.name]'s Muscles Bulge and their Hair Spikes up and turns Gold!"
					src.icon_state = ""
					src.USSJ_Apply()
					new/obj/techs/Overlays/Crater_Small(src.loc)

					src.form_2 = 1
					src.frozen = 0
					src.doing = 0
					return
			else
				if(!src.form_3)
					if(src.powerlevel_max >= 750000)
						src.doing = 1
						src.icon_state = "enrage"
						src.frozen = 1
						sleep(trans_time)

						src.powerlevel = src.powerlevel_max
						src.ki = src.ki_max
						src.critical = src.critical_max
						src.strength = src.strength_max
						src.defence = src.defence_max
						src.dodge = src.dodge_max
						src.reflect = src.reflect_max
						src.block = src.block_max

						if(src.hair == "Goku")
							src.overlays -= src.goku_hair_ssj
							src.overlays += src.goku_hair_assj
							src.overlays -= src.goku_hair_ussj
						if(src.hair == "Adult Gohan")
							src.overlays -= src.gohan_adult_hair_ssj
							src.overlays += src.gohan_adult_hair_assj
							src.overlays -= src.gohan_adult_hair_ussj
						if(src.hair == "Teen Gohan")
							src.overlays -= src.gohan_teen_hair_ssj
							src.overlays += src.gohan_teen_hair_assj
							src.overlays -= src.gohan_teen_hair_ussj
						if(src.hair == "Future Gohan")
							src.overlays -= src.future_gohan_hair_ssj
							src.overlays += src.future_gohan_hair_assj
							src.overlays -= src.future_gohan_hair_ussj
						if(src.hair == "Vegeta")
							src.overlays -= src.vegeta_hair_ssj
							src.overlays += src.vegeta_hair_assj
							src.overlays -= src.vegeta_hair_ussj
						if(src.hair == "Trunks Long")
							src.overlays -= src.trunks_long_hair_ssj
							src.overlays += src.trunks_long_hair_assj
							src.overlays -= src.trunks_long_hair_ussj

						src.underlays -= aura
						src.underlays += ssj_aura
						spawn(25) src.underlays -= ssj_aura
						src.overlays -= src.small_blue_elec
						src.overlays += src.big_blue_elec

						src.powerlevel = src.powerlevel_max
						src.powerlevel *= 23
						src.ki *= 18
						src.strength *= 19
						src.defence *= 20

						src.block += 6
						src.dodge += 12
						src.critical += 6
						src.reflect += 12
						src.counter += 6

						src.speed = 2.3

						view(6) << "<font color = yellow>[src.name] screams in rage as their Hair Spikes up and Electricity sparks around them!"
						src.icon_state = ""
						src.Skin_Apply()
						new/obj/techs/Overlays/Crater_Small(src.loc)

						src.form_3 = 1
						src.frozen = 0
						src.doing = 0
						return

				else
					if(!src.form_4)
						if(src.powerlevel_max >= 1750000)
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
							src.dodge = src.dodge_max
							src.reflect = src.reflect_max
							src.block = src.block_max

							if(src.hair == "Goku")
								src.overlays -= src.goku_hair_ssj
								src.overlays -= src.goku_hair_assj
								src.overlays += src.goku_hair_ussj
							if(src.hair == "Adult Gohan")
								src.overlays -= src.gohan_adult_hair_ssj
								src.overlays -= src.gohan_adult_hair_assj
								src.overlays += src.gohan_adult_hair_ussj
							if(src.hair == "Teen Gohan")
								src.overlays -= src.gohan_teen_hair_ssj
								src.overlays -= src.gohan_teen_hair_assj
								src.overlays += src.gohan_teen_hair_ussj
							if(src.hair == "Future Gohan")
								src.overlays -= src.future_gohan_hair_ssj
								src.overlays -= src.future_gohan_hair_assj
								src.overlays += src.future_gohan_hair_ussj
							if(src.hair == "Vegeta")
								src.overlays -= src.vegeta_hair_ssj
								src.overlays -= src.vegeta_hair_assj
								src.overlays += src.vegeta_hair_ussj
							if(src.hair == "Trunks Long")
								src.overlays -= src.trunks_long_hair_ssj
								src.overlays -= src.trunks_long_hair_assj
								src.overlays += src.trunks_long_hair_ussj
							src.underlays -= aura
							src.underlays += ssj_aura
							spawn(25) src.underlays -= ssj_aura

							src.overlays -= src.big_blue_elec
							src.overlays += src.big_red_elec

							src.powerlevel *= 28
							src.ki *= 23
							src.strength *= 24
							src.defence *= 25

							src.block += 6
							src.dodge += 8
							src.critical += 6
							src.reflect += 6
							src.counter += 8

							src.speed = 1.5

							view(6) << "<font color = yellow>[src.name]'s Power Explodes and the ground shakes as his hair spikes up and red electricity flows around him!"
							src.icon_state = ""
							new/obj/techs/Overlays/Crater_Center(src.loc)
							src.form_4 = 1
							src.frozen = 0
							src.doing = 0
							return
					else
						if(!src.form_5)
							if(src.fused)
								if(src.powerlevel_max >= 5000000)
									src.doing = 1
									src.icon_state = "enrage"
									src.frozen = 1
									sleep(trans_time)

									src.powerlevel = src.powerlevel_max
									src.ki = src.ki_max
									src.critical = src.critical_max
									src.strength = src.strength_max
									src.defence = src.defence_max
									src.dodge = src.dodge_max
									src.reflect = src.reflect_max
									src.block = src.block_max

									src.overlays -= src.goku_hair_ssj
									src.overlays -= src.gohan_adult_hair_ssj
									src.overlays -= src.gohan_teen_hair_ssj
									src.overlays -= src.future_gohan_hair_ssj
									src.overlays -= src.vegeta_hair_ssj
									src.overlays -= src.trunks_long_hair_ssj

									src.overlays -= src.goku_hair_assj
									src.overlays -= src.gohan_adult_hair_assj
									src.overlays -= src.gohan_teen_hair_assj
									src.overlays -= src.future_gohan_hair_assj
									src.overlays -= src.vegeta_hair_assj
									src.overlays -= src.trunks_long_hair_assj

									src.overlays -= src.goku_hair_ussj
									src.overlays -= src.gohan_adult_hair_ussj
									src.overlays -= src.gohan_teen_hair_ussj
									src.overlays -= src.future_gohan_hair_ussj
									src.overlays -= src.vegeta_hair_ussj
									src.overlays -= src.trunks_long_hair_ussj

									src.overlays += src.hair_ssj3

									src.underlays -= aura
									src.underlays += ssj_aura
									spawn(25) src.underlays -= ssj_aura

									src.powerlevel *= 35
									src.ki *= 33
									src.strength *= 33
									src.defence *= 34

									src.block += 6
									src.dodge += 10
									src.critical += 6
									src.reflect += 6
									src.counter += 10

									src.speed = 1.5

									view(6) << "<font color = yellow>[src.name] screams as their hair flows over their Back and turns Gold!"
									src.icon_state = ""
									new/obj/techs/Overlays/Crater_Center(src.loc)
									src.form_5 = 1
									src.frozen = 0
									src.doing = 0
									return
							else
								if(!src.form_5)
									if(src.powerlevel_max >= 4900000 && src.mystic)
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
										src.dodge = src.dodge_max
										src.reflect = src.reflect_max
										src.block = src.block_max
										if(src.hair == "Goku")
											src.overlays -= src.goku_hair_ssj
											src.overlays -= src.goku_hair_assj
											src.overlays -= src.goku_hair_ussj

										if(src.hair == "Adult Gohan")
											src.overlays -= src.gohan_adult_hair_ssj
											src.overlays -= src.gohan_adult_hair_assj
											src.overlays -= src.gohan_adult_hair_ussj
										if(src.hair == "Teen Gohan")
											src.overlays -= src.gohan_teen_hair_ssj
											src.overlays -= src.gohan_teen_hair_assj
											src.overlays -= src.gohan_teen_hair_ussj
										if(src.hair == "Future Gohan")
											src.overlays -= src.future_gohan_hair_ssj
											src.overlays -= src.future_gohan_hair_assj
											src.overlays -= src.future_gohan_hair_ussj
										if(src.hair == "Vegeta")
											src.overlays -= src.vegeta_hair_ssj
											src.overlays -= src.vegeta_hair_assj
											src.overlays -= src.vegeta_hair_ussj
										if(src.hair == "Trunks Long")
											src.overlays -= src.trunks_long_hair_ssj
											src.overlays -= src.trunks_long_hair_assj
											src.overlays -= src.trunks_long_hair_ussj

										src.SH_Hair_Apply()

										src.underlays -= aura
										src.underlays += ssj_aura
										spawn(25) src.underlays -= ssj_aura

										src.overlays -= src.big_red_elec
										src.overlays += src.mystic_elec

										src.powerlevel *= 33
										src.ki *= 28
										src.strength *= 29
										src.defence *= 30

										src.block += 6
										src.dodge += 10
										src.critical += 6
										src.reflect += 6
										src.counter += 10
										src.speed = 1.5

										view(6) << "<font color = white>[src.name]'s Power Explodes and white electricity flows as they unlock their latent Potential!"
										src.icon_state = ""
										new/obj/techs/Overlays/Crater_Center(src.loc)
										src.form_5 = 1
										src.frozen = 0
										src.doing = 0
										return
