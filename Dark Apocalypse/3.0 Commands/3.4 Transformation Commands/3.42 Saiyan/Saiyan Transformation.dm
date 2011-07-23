mob/var/form_1 = 0
mob/var/form_2 = 0
mob/var/form_3 = 0
mob/var/form_4 = 0
mob/var/form_5 = 0
mob/var/form_6 = 0
mob/var/form_7 = 0
mob/var/form_8 = 0

mob/var/ascended_ssj = 0
mob/var/gone_ssj2 = 0


mob/proc/Saiyan_Trans()
	var/trans_time = 13


	if(src.doing)
		return
	if(src.KO)
		return
	else
		if(!src.form_1)
			if(src.powerlevel_max >= 85000)
				if(!src.ascended_ssj)
					src.aura_on = 0

					src.doing = 1
					src.icon_state = "enrage"
					src.frozen = 1
					sleep(19)

					src.powerlevel = src.powerlevel_max
					src.ki = src.ki_max
					src.strength = src.strength_max
					src.defence = src.defence_max
					src.critical = src.critical_max
					src.dodge = src.dodge_max
					src.reflect = src.reflect_max
					src.block = src.block_max

					src.powerlevel *= 13
					src.ki *= 8
					src.strength *= 10
					src.defence *= 9

					src.block += 2
					src.dodge += 5
					src.critical += 2
					src.reflect += 2
					src.counter += 5

					src.speed = 3

					src.overlays -= src.goku_hair
					src.overlays -= src.gohan_adult_hair
					src.overlays -= src.gohan_teen_hair
					src.overlays -= src.future_gohan_hair
					src.overlays -= src.vegeta_hair
					src.overlays -= src.trunks_long_hair

					src.underlays -= aura
					src.underlays += ssj_aura
					spawn(25) src.underlays -= ssj_aura

					src.SSJ_Hair_Apply()
					spawn(5) src.SSJ_EXP()

					view(6) << "<font color = yellow>[src.name] screams in an Uncontrollable Rage as their Hair Spikes up and turns Gold!"
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
					src.strength = src.strength_max
					src.defence = src.defence_max
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

					src.underlays -= src.aura
					src.underlays += src.ssj_aura
					spawn(25) src.underlays -= src.ssj_aura

					src.powerlevel *= 13
					src.ki *= 8
					src.strength *= 10
					src.defence *= 9

					src.block += 3
					src.dodge += 6
					src.critical += 3
					src.reflect += 3
					src.counter += 6

					src.speed = 2.8

					view(6) << "<I><font color = yellow>[src.name] screams in rage as their Hair Spikes up and turns Light Gold!</I>"
					src.icon_state = ""

					src.form_1 = 1
					src.frozen = 0
					src.doing = 0
					return
		else
			if(!src.form_2)
				if(src.powerlevel_max >= 250000)
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
					src.strength *= 15
					src.defence *= 14

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
					if(src.powerlevel_max >= 500000)
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

						src.powerlevel *= 23
						src.ki *= 18
						src.strength *= 20
						src.defence *= 19

						src.block += 4
						src.dodge += 7
						src.critical += 4
						src.reflect += 4
						src.counter += 7

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
						if(src.powerlevel_max >= 1500000)
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
							src.overlays -= src.raditz_hair_ssj
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

							src.powerlevel *= 28
							src.ki *= 23
							src.strength *= 25
							src.defence *= 24

							src.block += 6
							src.dodge += 10
							src.critical += 6
							src.reflect += 6
							src.counter += 10

							src.speed = 1.5

							view(6) << "<font color = yellow>[src.name] screams as their hair flows over their Back and turns Gold!"
							src.icon_state = ""
							new/obj/techs/Overlays/Crater_Center(src.loc)
							src.form_4 = 1
							src.frozen = 0
							src.doing = 0
							return
					else
						if(!src.form_5)
							if(src.powerlevel_max >= 10000000)
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
								src.overlays -= src.raditz_hair_ssj
								src.overlays -= src.vegeta_hair_ssj
								src.overlays -= src.trunks_long_hair_ssj

								src.overlays -= src.goku_hair_ussj
								src.overlays -= src.gohan_adult_hair_ussj
								src.overlays -= src.gohan_teen_hair_ussj
								src.overlays -= src.future_gohan_hair_ussj
								src.overlays -= src.vegeta_hair_ussj
								src.overlays -= src.trunks_long_hair_ussj

								src.overlays -= src.hair_ssj3
								src.overlays += src.hair_ssj4

								src.underlays -= aura
								src.underlays += ssj_aura
								spawn(25) src.underlays -= ssj_aura

								src.overlays -= src.big_blue_elec
								src.overlays += src.big_red_elec

								src.powerlevel *= 33
								src.ki *= 28
								src.strength *= 30
								src.defence *= 29

								src.block += 12
								src.dodge += 15
								src.critical += 12
								src.reflect += 12
								src.counter += 15

								src.speed = 0.5

								view(6) << "<font color = yellow>[src.name]'s screams in rage as their hair turns Black as Red fur sprouts on their Chest!"
								if(src.dark)
									src.icon = 'Male - Dark SSJ 4.dmi'
									src.icon_state = ""
									new/obj/techs/Overlays/Crater_Center(src.loc)
									src.form_5 = 1
									src.frozen = 0
									src.doing = 0
									return
								else
									src.icon = 'Male - SSJ 4.dmi'
									src.icon_state = ""
									new/obj/techs/Overlays/Crater_Center(src.loc)
									src.form_5 = 1
									src.frozen = 0
									src.doing = 0
									return
						else
							if(!src.form_6)
								if(src.powerlevel_max >= 100000000)
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
									src.overlays -= src.raditz_hair_ssj
									src.overlays -= src.vegeta_hair_ssj
									src.overlays -= src.trunks_long_hair_ssj

									src.overlays -= src.goku_hair_ussj
									src.overlays -= src.gohan_adult_hair_ussj
									src.overlays -= src.gohan_teen_hair_ussj
									src.overlays -= src.future_gohan_hair_ussj
									src.overlays -= src.vegeta_hair_ussj
									src.overlays -= src.trunks_long_hair_ussj

									src.overlays -= src.hair_ssj4
									src.overlays += src.hair_ssj5

									src.underlays -= aura
									src.underlays += ssj_aura
									spawn(25) src.underlays -= ssj_aura

									src.overlays -= src.big_blue_elec
									src.overlays += src.big_red_elec

									src.powerlevel *= 50
									src.ki *= 50
									src.strength *= 50
									src.defence *=50

									src.block += 12
									src.dodge += 15
									src.critical += 12
									src.reflect += 12
									src.counter += 15

									src.speed = 0.5

									view(6) << "<font color = yellow>[src.name]'s screams in rage as their hair turns White!"
									src.icon = 'Male - White.dmi'
									src.icon_state = ""
									new/obj/techs/Overlays/Crater_Center(src.loc)
									src.form_6 = 1
									src.frozen = 0
									src.doing = 0
									return
							else
								if(!src.form_7)
									if(src.powerlevel_max >= 50000000)
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
										src.overlays -= src.raditz_hair_ssj
										src.overlays -= src.vegeta_hair_ssj
										src.overlays -= src.trunks_long_hair_ssj

										src.overlays -= src.goku_hair_ussj
										src.overlays -= src.gohan_adult_hair_ussj
										src.overlays -= src.gohan_teen_hair_ussj
										src.overlays -= src.future_gohan_hair_ussj
										src.overlays -= src.vegeta_hair_ussj
										src.overlays -= src.trunks_long_hair_ussj

										src.overlays -= src.hair_ssj5
										src.overlays += src.hair_ssj6

										src.underlays -= aura
										src.underlays += ssj_aura
										spawn(25) src.underlays -= ssj_aura

										src.overlays -= src.big_blue_elec
										src.overlays += src.big_red_elec

										src.powerlevel *= 75
										src.ki *= 75
										src.strength *= 75
										src.defence *= 75

										src.block += 12
										src.dodge += 15
										src.critical += 12
										src.reflect += 12
										src.counter += 15

										src.speed = 0.5

										view(6) << "<font color = yellow>[src.name]'s screams in rage as their hair turns Blue!"
										src.icon = 'Male - White.dmi'
										src.icon_state = ""
										new/obj/techs/Overlays/Crater_Center(src.loc)
										src.form_7= 1
										src.frozen = 0
										src.doing = 0
										return

								else
									if(!src.form_8)
										if(src.powerlevel_max >= 50000000)
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
											src.overlays -= src.raditz_hair_ssj
											src.overlays -= src.vegeta_hair_ssj
											src.overlays -= src.trunks_long_hair_ssj

											src.overlays -= src.goku_hair_ussj
											src.overlays -= src.gohan_adult_hair_ussj
											src.overlays -= src.gohan_teen_hair_ussj
											src.overlays -= src.future_gohan_hair_ussj
											src.overlays -= src.vegeta_hair_ussj
											src.overlays -= src.trunks_long_hair_ussj

											src.overlays -= src.hair_ssj6
											src.overlays += src.hair_ssj7

											src.underlays -= aura
											src.underlays += ssj_aura
											spawn(25) src.underlays -= ssj_aura

											src.overlays -= src.big_blue_elec
											src.overlays += src.big_red_elec

											src.powerlevel *= 100
											src.ki *= 100
											src.strength *= 100
											src.defence *= 100

											src.block += 12
											src.dodge += 15
											src.critical += 12
											src.reflect += 12
											src.counter += 15

											src.speed = 0.1

											view(6) << "<font color = yellow>[src.name]'s screams in rage  as their hair turns blue as blue fur sprouts on their Chest!!"
											src.icon_state = ""
											new/obj/techs/Overlays/Crater_Center(src.loc)
											src.form_8= 1
											src.frozen = 0
											src.doing = 0
											return

mob/proc/SSJ_EXP()
	set background = 1
	if(src.ssj_level < 15)
		if(src.form_1 && !src.form_2 && !src.form_3 && !src.form_4 && !src.form_5 && !src.form_6 && !src.form_7)
			if(src.ssj_exp >= src.ssj_tnl)
				src.ssj_level ++
				src.ssj_exp = 0
				src.upkeep -= rand(4,6)

				if(src.upkeep < 5)
					src.upkeep = 5

				if(src.upkeep > 5 && src.ssj_level == 15)
					src.upkeep = 5

				if(src.ssj_level == 15)
					src << "\white You feel your body become used to the Super Saiyan form..."

			src.ssj_exp += rand(5,15)
			spawn(250) src.SSJ_EXP()


mob/proc/FORM1_EXP()
	set background = 1
	if(src.form_1_level < 15)
		if(src.form_1 && !src.form_2 && !src.form_3 && !src.form_4 && !src.form_5 && !src.form_6 && !src.form_7)
			if(src.form_1_exp >= src.form_1_tnl)
				src.form_1_level ++
				src.form_1_exp = 0
				src.upkeep -= rand(4,6)

				if(src.upkeep < 5)
					src.upkeep = 5

				if(src.upkeep > 5 && src.ssj_level == 15)
					src.upkeep = 5

				if(src.ssj_level == 15)
					src << "\white You feel your body become used to your new form..."

			src.form_1_exp += rand(5,15)
			spawn(250) src.FORM1_EXP()



