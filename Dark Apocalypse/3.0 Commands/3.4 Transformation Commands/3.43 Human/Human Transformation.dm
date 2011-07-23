mob/proc/Human_Trans()
	var/trans_time = 17


	if(src.doing)
		return
	if(src.KO)
		return
	else
		if(!src.form_1)
			if(src.powerlevel_max >= 50000)
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

				src.powerlevel *= 12
				src.ki *= 8
				src.strength *= 10
				src.defence *= 10

				src.block += 7
				src.dodge += 4
				src.critical += 4
				src.reflect += 7
				src.counter += 4

				src.speed = 3.8

				view(6) << "<font color = #EB7F00>[src.name] explodes in rage as they Unlock their Potential!"
				src.icon_state = ""
				new/obj/techs/Overlays/Crater_Small(src.loc)
				src.form_1 = 1
				src.frozen = 0
				src.doing = 0
				src.FORM1_EXP()
//					src.Transformation_Strain()
				return
		else
			if(!src.form_2)
				if(src.powerlevel_max >= 220000)
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

					src.powerlevel *= 17
					src.ki *= 13
					src.strength *= 15
					src.defence *= 15

					src.block += 8
					src.dodge += 6
					src.critical += 6
					src.reflect += 8
					src.counter += 6

					src.speed = 3.2
					src.overlays += src.small_blue_elec

					view(6) << "<font color = #EB7F00>[src.name] explodes in rage as they Focus their power!"
					src.icon_state = ""
					new/obj/techs/Overlays/Crater_Small(src.loc)

					src.form_2 = 1
					src.frozen = 0
					src.doing = 0
					return
			else
				if(!src.form_3)
					if(src.powerlevel_max >= 495000)
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

						src.powerlevel *= 22
						src.ki *= 18
						src.strength *= 20
						src.defence *= 20

						src.block += 6
						src.dodge += 8
						src.critical += 6
						src.reflect += 6
						src.counter += 8

						src.speed = 2.8
						src.overlays -= src.small_blue_elec
						src.overlays += src.big_blue_elec

						view(6) << "<font color = #EB7F00>[src.name] explodes in rage as they enter a state of Advanced Focus!"
						src.icon_state = ""
						src.USSJ_Apply()
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
							src.strength = src.strength_max
							src.defence = src.defence_max
							src.critical = src.critical_max
							src.dodge = src.dodge_max
							src.reflect = src.reflect_max
							src.block = src.block_max

							src.powerlevel *= 27
							src.ki *= 23
							src.strength *= 25
							src.defence *= 25

							src.block += 8
							src.dodge += 5
							src.critical += 8
							src.reflect += 5
							src.counter += 5

							src.speed = 2.2
							src.overlays -= src.big_blue_elec
							src.overlays += src.ely_blue_elec

							view(6) << "<font color = #CCCCCC>[src.name] explodes in rage as their hair spikes up and unlock their full Potential!"
							src.icon_state = ""
							src.Skin_Apply()
							src.SH_Hair_Apply()
							new/obj/techs/Overlays/Crater_Center(src.loc)
							src.form_4 = 1
							src.frozen = 0
							src.doing = 0
							return

					else
						if(!src.form_5)
							if(src.powerlevel_max >= 4900000)

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

								src.powerlevel *= 32
								src.ki *= 28
								src.strength *= 30
								src.defence *= 30

								src.block += 5
								src.dodge += 8
								src.critical += 6
								src.reflect += 6
								src.counter += 8

								src.overlays -= src.ely_blue_elec
								src.overlays += src.ely_red_elec
								src.speed = 1.7

								view(6) << "<font color = red>[src.name] explodes in rage as their hair spikes up and turns red!"
								src.icon_state = ""
								new/obj/techs/Overlays/Crater_Center(src.loc)
								src.SH2_Hair_Apply()
								src.underlays += sh2_aura
								spawn(25) src.underlays -= sh2_aura

								src.form_5 = 1
								src.frozen = 0
								src.doing = 0
								return
