/*mob/proc/Bojack_Revert()

	if(src.form_1 == 1)

		src.frozen = 1
		src.icon_state = "enrage"

		sleep(10)

		src.form_1 = 0





		src.Hair_Apply()
		src.Power_Redefine()

		view(6) << "[src.name] has reverted from his Rage state."
		src.icon_state = ""
		src.icon = 'Bojack.dmi'
		src.Skin_Apply()
		src.frozen = 0
		return
	else
		return*/

mob/proc/Demonic_Warror_Revert()
	if(src.KO)
		src <<"No cheating"
		return
	if(src.form_1)

		src.frozen = 1
		src.icon_state = "enrage"

		sleep(10)

		src.form_1 = 0
		src.form_2 = 0
		src.form_3 = 0
		src.form_4 = 0
		src.form_5 = 0
		src.form_6 = 0

		src.overlays -= big_purple_elec
		src.overlays -= namek_elec
		src.overlays -= src.big_red_elec
		src.overlays -= src.mystic_elec
		src.overlays -= demon_elec_2
		src.overlays -= demon_elec
		src.overlays -= src.small_blue_elec
		src.overlays -= src.big_blue_elec
		src.overlays -= src.small_red_elec
		src.overlays -= src.big_red_elec
		src.overlays -= src.ely_red_elec
		src.overlays -= src.ely_blue_elec



		src.icon = 'Demonic Warror Form 1.dmi'
		src.Power_Redefine()

		oview() << "[src.name] has reverted from his Transformed state."
		src.icon_state = ""
		src.frozen = 0
		src.doing = 0

		return
	else
		return


mob/proc/All_Star_Revert()
	if(src.KO)
		src <<"No cheating"
		return
	if(src.form_1)

		src.frozen = 1
		src.icon_state = "enrage"

		sleep(10)

		src.form_1 = 0
		src.form_2 = 0
		src.form_3 = 0
		src.form_4 = 0
		src.form_5 = 0
		src.form_6 = 0

		src.overlays -= big_purple_elec
		src.overlays -= namek_elec
		src.overlays -= src.big_red_elec
		src.overlays -= src.mystic_elec
		src.overlays -= demon_elec_2
		src.overlays -= demon_elec
		src.overlays -= src.small_blue_elec
		src.overlays -= src.big_blue_elec
		src.overlays -= src.small_red_elec
		src.overlays -= src.big_red_elec
		src.overlays -= src.ely_red_elec
		src.overlays -= src.ely_blue_elec

		src.overlays += src.mystic_elec

		src.icon = 'All Star.dmi'
		src.Power_Redefine()

		oview() << "[src.name] has reverted from his Transformed state."
		world<<"<font color=Blue> You feel the World return back to the right state"
		src.icon_state = ""
		src.frozen = 0
		src.doing = 0

		return
	else
		return
mob/proc/Makenshi_Revert()
	if(src.KO)
		src <<"No cheating"
		return
	if(src.form_1)

		src.frozen = 1
		src.icon_state = "enrage"

		sleep(10)

		src.form_1 = 0
		src.form_2 = 0
		src.form_3 = 0
		src.form_4 = 0
		src.form_5 = 0
		src.form_6 = 0
		src.form_7 = 0

		src.overlays -= src.small_blue_elec
		src.overlays -= src.big_blue_elec

		src.overlays -= src.small_red_elec
		src.overlays -= src.big_red_elec

		src.overlays -= src.small_purple_elec
		src.overlays -= src.big_purple_elec

		src.overlays -= src.hair1
		src.overlays -= src.hair2
		src.overlays -= src.hair3
		src.overlays -= src.hair4


		src.overlays -= src.mystic_elec

		src.icon = 'Makenshi Normal Form.dmi'
		src.Power_Redefine()
		src.Skin_Apply()

		oview() << "[src.name] has reverted from his Transformed state."
		src.icon_state = ""
		src.frozen = 0
		src.doing = 0

		return
	else
		return

mob/proc/Legend_Revert()
	if(src.KO)
		src <<"No cheating"
		return
	if(src.form_1)

		src.frozen = 1
		src.icon_state = "enrage"

		sleep(10)

		src.form_1 = 0
		src.form_2 = 0
		src.form_3 = 0
		src.form_4 = 0
		src.form_5 = 0
		src.form_6 = 0
		src.form_7 = 0

		src.overlays -= src.small_blue_elec
		src.overlays -= src.big_blue_elec

		src.overlays -= src.small_red_elec
		src.overlays -= src.big_red_elec

		src.overlays -= src.small_purple_elec
		src.overlays -= src.big_purple_elec

		src.overlays -= src.mystic_elec

		src.icon = 'LSSJ.dmi'
		src.Power_Redefine()
		src.Skin_Apply()

		oview() << "[src.name] has reverted from his Transformed state."
		src.icon_state = ""
		src.frozen = 0
		src.doing = 0

		return
	else
		return




mob/proc/Dragon_Revert()
	if(src.KO)
		src <<"No cheating"
		return
	if(src.form_1)

		src.frozen = 1
		src.icon_state = "enrage"

		sleep(10)

		src.form_1 = 0
		src.form_2 = 0
		src.form_3 = 0
		src.form_4 = 0
		src.form_5 = 0
		src.form_6 = 0

		src.overlays -= src.small_blue_elec
		src.overlays -= src.big_blue_elec

		src.overlays -= src.small_red_elec
		src.overlays -= src.big_red_elec

		src.overlays -= src.small_purple_elec
		src.overlays -= src.big_purple_elec

		src.overlays -= src.mystic_elec

		src.icon = 'Dragon.dmi'
		src.Power_Redefine()
		src.Skin_Apply()

		oview() << "[src.name] has reverted from his Transformed state."
		src.icon_state = ""
		src.frozen = 0
		src.doing = 0

		return
	else
		return
mob/proc/Bojack_Revert()
	if(src.KO)
		src <<"No cheating"
		return
	if(src.form_1)

		src.frozen = 1
		src.icon_state = "enrage"

		sleep(10)

		src.form_1 = 0
		src.form_2 = 0
		src.form_3 = 0
		src.form_4 = 0
		src.form_5 = 0

		src.overlays -= src.small_blue_elec
		src.overlays -= src.big_blue_elec

		src.overlays -= src.small_red_elec
		src.overlays -= src.big_red_elec
		src.overlays -= src.ely_red_elec
		src.overlays -= src.ely_blue_elec

		src.overlays -= src.mystic_elec
		src.underlays -= sh2_aura
		src.underlays -= src.aura
		src.aura_on = 0


		src.Power_Redefine()
		src.Skin_Apply()
		src.Hair_Apply()

		oview() << "[src.name] has reverted from his Transformed state."
		src.icon_state = ""
		src.frozen = 0
		src.doing = 0

		return
	else
		return

mob/proc/Saibaman_Revert()
	if(src.KO)
		src <<"No cheating"
		return
	if(src.form_1)

		src.frozen = 1
		src.icon_state = "enrage"

		sleep(10)

		src.form_1 = 0
		src.form_2 = 0
		src.form_3 = 0
		src.form_4 = 0
		src.form_5 = 0

		src.overlays -= src.small_blue_elec
		src.overlays -= src.big_blue_elec

		src.overlays -= src.small_red_elec
		src.overlays -= src.big_red_elec
		src.overlays -= src.ely_red_elec
		src.overlays -= src.ely_blue_elec

		src.overlays -= src.mystic_elec
		src.underlays -= sh2_aura
		src.underlays -= src.aura
		src.aura_on = 0


		src.Power_Redefine()
		src.Skin_Apply()
		src.Hair_Apply()

		oview() << "[src.name] has reverted from his Transformed state."
		src.icon = 'Saibaman - Form 1.dmi'
		src.icon_state = ""
		src.frozen = 0
		src.doing = 0

		return
	else
		return

mob/proc/Kai_Revert()
	if(src.KO)
		src <<"No cheating"
		return
	if(src.form_1)

		src.frozen = 1
		src.icon_state = "enrage"

		sleep(10)

		src.form_1 = 0
		src.form_2 = 0
		src.form_3 = 0
		src.form_4 = 0
		src.form_5 = 0

		src.overlays -= src.small_blue_elec
		src.overlays -= src.big_blue_elec

		src.overlays -= src.small_red_elec
		src.overlays -= src.big_red_elec
		src.overlays -= src.ely_red_elec
		src.overlays -= src.ely_blue_elec

		src.overlays -= src.mystic_elec
		src.underlays -= sh2_aura
		src.underlays -= src.aura
		src.aura_on = 0


		src.Power_Redefine()
		src.Skin_Apply()
		src.Hair_Apply()

		oview() << "[src.name] has reverted from his Transformed state."
		src.icon = 'Kai - Normal.dmi'
		src.icon_state = ""
		src.frozen = 0
		src.doing = 0

		return
	else
		return

mob/proc/All_Star_Trans()
	var/trans_time = 27

	if(src.upkeep == 5)
		trans_time = 5

	if(src.doing)
		return
	if(src.KO)
		return
	else
		if(!src.form_1)
			if(src.powerlevel_max >= 100)
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



				src.powerlevel *= kills
				src.ki *= kills
				src.strength *= kills
				src.defence *= kills

				src.block += kills
				src.dodge += kills
				src.critical += kills
				src.reflect += kills
				src.counter += kills

				src.speed = 1
				world<<"<font color=Blue>You Feel A Great Power you feel on your knees for the power."

				view(6) <<{"<font color = blue>[src.name]'s <FONT COLOR="#00008b">p</FONT><FONT COLOR="#000098">o</FONT><FONT COLOR="#0000a5">w</FONT><FONT COLOR="#0000b2">e</FONT><FONT COLOR="#0000bf">r</FONT><FONT COLOR="#0000cc"> </FONT><FONT COLOR="#0000d9">i</FONT><FONT COLOR="#0000e6">s</FONT><FONT COLOR="#0000f3"> </FONT><FONT COLOR="#0000ff">o</FONT><FONT COLOR="#0000f4">v</FONT><FONT COLOR="#0000e9">e</FONT><FONT COLOR="#0000dd">r</FONT><FONT COLOR="#0000d1">p</FONT><FONT COLOR="#0000c6">o</FONT><FONT COLOR="#0000ba">w</FONT><FONT COLOR="#0000ae">e</FONT><FONT COLOR="#0000a2">r</FONT><FONT COLOR="#000097"> </FONT><FONT COLOR="#00008b">e</FONT><FONT COLOR="#000097">v</FONT><FONT COLOR="#0000a2">e</FONT><FONT COLOR="#0000ae">r</FONT><FONT COLOR="#0000ba">t</FONT><FONT COLOR="#0000c6">h</FONT><FONT COLOR="#0000d1">i</FONT><FONT COLOR="#0000dd">n</FONT><FONT COLOR="#0000e9">g</FONT><FONT COLOR="#0000f4"> </FONT><FONT COLOR="#0000ff">i</FONT><FONT COLOR="#0000f3">n</FONT><FONT COLOR="#0000e6"> </FONT><FONT COLOR="#0000d9">s</FONT><FONT COLOR="#0000cc">i</FONT><FONT COLOR="#0000bf">t</FONT><FONT COLOR="#0000b2">e</FONT><FONT COLOR="#0000a5">!</FONT><FONT COLOR="#000098">!</FONT><FONT COLOR="#00008b">!</FONT>"}
				src.icon_state = ""
				src.icon = 'All-Star Second form.dmi'
				new/obj/techs/Overlays/Crater_Small(src.loc)

				src.form_1 = 1
				src.frozen = 0
				src.doing = 0
				src.safe = 0
				src.FORM1_EXP()
				src.overlays += big_purple_elec
				src.overlays += namek_elec
				src.overlays += src.big_red_elec
				src.overlays += src.mystic_elec
				src.overlays += demon_elec_2
				src.overlays += demon_elec
				src.overlays += src.small_blue_elec
				src.overlays += src.big_blue_elec
				src.overlays += src.small_red_elec
				src.overlays += src.big_red_elec
				src.overlays += src.ely_red_elec
				src.overlays += src.ely_blue_elec
//				src.Transformation_Strain()
				return
mob/proc/Makenshi_Trans()
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


				src.overlays += src.hair1

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

				view(6) << "<font color = white>[src.name]'s power surges as they morph into their Second Form!"
				src.icon_state = ""
				src.icon = 'Makenshi Intense Form.dmi'
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

					src.overlays -= src.hair1
					src.overlays += src.hair2

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

					view(6) << "<font color = white>[src.name]'s power surges as they morph into their Third Form!"
					src.icon_state = ""
					src.icon = 'Makenshi Dark  Form.dmi'
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

						src.overlays -= src.hair2
						src.overlays += src.hair3
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

						view(6) << "<font color =white>[src.name]'s power surges as they morph into their Forth Form!"
						src.icon_state = ""
						src.icon = 'Makenshi True Dark Form.dmi'
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

							src.overlays -= src.hair3
							src.overlays += src.hair4

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
							src.icon = 'Makenshi True White Form.dmi'
							new/obj/techs/Overlays/Crater_Center(src.loc)
							src.form_4 = 1
							src.frozen = 0
							src.doing = 0
							src.safe = 0
							return

mob/proc/Legend_Trans()
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

				view(6) << "<font color = green>[src.name]'s power surges as they morph into their Second Form!"
				src.icon_state = ""
				src.icon = 'Brollly.dmi'
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

					view(6) << "<font color = green>[src.name]'s power surges as they morph into their Third Form!"
					src.icon_state = ""
					src.icon = 'Brolly1.dmi'
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

						view(6) << "<font color = green>[src.name]'s power surges as they morph into their 4th Form!"
						src.icon_state = ""
						src.icon = 'Brolly2.dmi'
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

							view(6) << "<font color = green>[src.name]'s power surges as they morph into their 5th Form!"
							src.icon_state = ""
							src.icon = 'Brolly3.dmi'
							new/obj/techs/Overlays/Crater_Center(src.loc)
							src.form_4 = 1
							src.frozen = 0
							src.doing = 0
							src.safe = 0
							return
					else
						if(!src.form_5)
							if(!src.metal_converted)
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

									src.powerlevel *= 33
									src.ki *= 30
									src.strength *= 29
									src.defence *= 28

									src.block += 9
									src.dodge += 9
									src.critical += 11
									src.reflect += 11
									src.counter += 9

									src.speed = 1.8


									view(6) << "<font color = green>[src.name]'s power surges as they morph into their Final Form!"
									src.icon_state = ""
									src.icon = 'Brolly4.dmi'
									new/obj/techs/Overlays/Crater_Center(src.loc)
									src.form_5 = 1
									src.frozen = 0
									src.doing = 0
									src.safe = 0

									src.overlays += big_purple_elec
									return

mob/proc/Saibaman_Trans()
	var/trans_time = 5


	if(src.doing)
		return
	if(src.KO)
		return
	else
		if(!src.form_1)
			if(src.powerlevel_max >= 25000)
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

				view(6) << "<font color = green>[src.name] explodes into frist form!"
				src.icon = 'Saibaman - Form 1.dmi'
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

					view(6) << "<font color = Blue>[src.name] explodes into white form!"
					src.icon = 'Saibaman - Form 2.dmi'
					src.icon_state = ""
					new/obj/techs/Overlays/Crater_Small(src.loc)

					src.form_2 = 1
					src.frozen = 0
					src.doing = 0
					return
			else
				if(!src.form_3)
					if(src.powerlevel_max >= 75000)
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

						view(6) << "<font color = blue>[src.name] explodes into black Form!"
						src.icon = 'Saibaman - Form 3.dmi'
						src.icon_state = ""
						src.USSJ_Apply()
						new/obj/techs/Overlays/Crater_Small(src.loc)

						src.form_3 = 1
						src.frozen = 0
						src.doing = 0
						return


mob/proc/Kai_Trans()
	var/trans_time = 5


	if(src.doing)
		return
	if(src.KO)
		return
	else
		if(!src.form_1)
			if(src.powerlevel_max >= 100000)
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

				view(6) << "<font color = blue>[src.name] explodes into Elder Kai Form!"
				src.icon = 'Kai - Elder.dmi'
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
				if(src.powerlevel_max >= 200000)
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

					view(6) << "<font color = Blue>[src.name] explodes into King Form!"
					src.icon = 'Kai - King.dmi'
					src.icon_state = ""
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

						view(6) << "<font color = blue>[src.name] explodes into Grand Form!"
						src.icon = 'Kai - Grand.dmi'
						src.icon_state = ""
						src.USSJ_Apply()
						new/obj/techs/Overlays/Crater_Small(src.loc)

						src.form_3 = 1
						src.frozen = 0
						src.doing = 0
						return
				else
					if(!src.form_4)
						if(src.powerlevel_max >= 1000000)

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

							view(6) << "<font color = blue>[src.name] explodes into Supreme Form!"
							src.icon = 'Kai - Supreme.dmi'
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
							if(src.powerlevel_max >= 5000000)

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

								view(6) << "<font color = blue>[src.name]'s breaks into  Ultimate Kai Form!"
								src.icon_state = ""
								src.icon = 'Kai - Ultimate.dmi'
								new/obj/techs/Overlays/Crater_Center(src.loc)
								src.SH2_Hair_Apply()
								src.underlays += sh2_aura
								spawn(25) src.underlays -= sh2_aura

								src.form_5 = 1
								src.frozen = 0
								src.doing = 0
								return
mob/proc/Bojack_Trans()
	var/trans_time = 5


	if(src.doing)
		return
	if(src.KO)
		return
	else
		if(!src.form_1)
			if(src.powerlevel_max >= 75000)
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

				view(6) << "<font color = green>[src.name] explodes in rage as they Unlock their Potential!"
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
				if(src.powerlevel_max >= 200000)
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

					view(6) << "<font color = green>[src.name] explodes in rage as they Focus their power!"
					src.icon_state = ""
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

						view(6) << "<font color = green>[src.name] explodes in rage as they enter a state of Advanced Focus!"
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

							view(6) << "<font color = #CCCCCC>[src.name] explodes in rage and unlock their full Potential!"
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

								view(6) << "<font color = #800080>[src.name]'s breaks into a horrible rage!"
								src.icon_state = ""
								src.icon = 'Bojack Rage.dmi'
								new/obj/techs/Overlays/Crater_Center(src.loc)
								src.SH2_Hair_Apply()
								src.underlays += sh2_aura
								spawn(25) src.underlays -= sh2_aura

								src.form_5 = 1
								src.frozen = 0
								src.doing = 0
								return
mob/proc/Dragon_Trans()
	var/trans_time = 10

	if(src.upkeep == 5)
		trans_time = 5

	if(src.doing)
		return
	if(src.KO)
		return
	else
		if(!src.form_1)
			if(src.powerlevel_max >= 100000)
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

				view(6) << "<font color = #800080>[src.name] changes into his Second Form!"
				src.icon_state = ""
				src.icon = 'Dragon Rage 2.dmi'
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

					view(6) << "<font color = #800080>[src.name] changes into his Third Form!"
					src.icon = 'Dragon Rage 3.dmi'
					new/obj/techs/Overlays/Crater_Small(src.loc)

					src.form_2 = 1
					src.frozen = 0
					src.doing = 0
					src.safe = 0
					return
			else
				if(!src.form_3)
					if(src.powerlevel_max >= 1000000)
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

						view(6) << "<font color = #800080>[src.name] changes into his Forth Form!"
						src.icon = 'Dragon Rage 5.dmi'
						new/obj/techs/Overlays/Crater_Small(src.loc)
						src.form_3 = 1
						src.frozen = 0
						src.doing = 0
						src.safe = 0
						return
				else
					if(!src.form_4)
						if(src.powerlevel_max >= 3500000)
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

							view(6) << "<font color = #800080>[src.name] changes into his Fifth Form!"
							src.icon_state = ""
							src.icon = 'Dragon Rage 6.dmi'
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

								src.powerlevel *= 33
								src.ki *= 30
								src.strength *= 29
								src.defence *= 28

								src.block += 9
								src.dodge += 9
								src.critical += 11
								src.reflect += 11
								src.counter += 9

								src.speed = 1.8


								view(6) << "<font color = #800080>[src.name] changes into his Final Form!"
								src.icon = 'Dragon Rage 7.dmi'
								src.icon_state=""
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

									src.powerlevel *= 100
									src.ki *= 100
									src.strength *= 100
									src.defence *= 100

									src.block += 9
									src.dodge += 9
									src.critical += 19
									src.reflect += 3
									src.counter += 3

									src.speed = -10.5


									view(6) << "<font color = #800080>[src.name] changes into his Omega Form!"
									src.icon = 'Omega.dmi'
									src.icon_state=""
									new/obj/techs/Overlays/Crater_Center(src.loc)
									src.form_6 = 1
									src.frozen = 0
									src.doing = 0
									src.safe = 0

									src.overlays += big_purple_elec
									src.overlays += src.ely_red_elec
									src.overlays += src.ely_blue_elec
									return

mob/proc/Demonic_Warror_Trans()
	var/trans_time = 10

	if(src.upkeep == 5)
		trans_time = 5

	if(src.doing)
		return
	if(src.KO)
		return
	else
		if(!src.form_1)
			if(src.powerlevel_max >= 100000)
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

				view(6) << "<font color =red>[src.name] changes into his Second Form!"
				src.icon_state = ""
				src.icon = 'Demonic Warror Form 2.dmi'
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

					view(6) << "<font color = red>[src.name] changes into his Third Form!"
					src.icon = 'Demonic Warror Form 3.dmi'
					new/obj/techs/Overlays/Crater_Small(src.loc)

					src.form_2 = 1
					src.frozen = 0
					src.doing = 0
					src.safe = 0
					return
			else
				if(!src.form_3)
					if(src.powerlevel_max >= 1000000)
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

						view(6) << "<font color = red>[src.name] changes into his Forth Form!"
						src.icon = 'Demonic Warror Form 4.dmi'
						new/obj/techs/Overlays/Crater_Small(src.loc)
						src.form_3 = 1
						src.frozen = 0
						src.doing = 0
						src.safe = 0
						return
				else
					if(!src.form_4)
						if(src.powerlevel_max >= 3500000)
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

							view(6) << "<font color = #red>[src.name] changes into his Fifth Form!"
							src.icon_state = ""
							src.icon = 'Demonic Warror Final Form.dmi'
							new/obj/techs/Overlays/Crater_Center(src.loc)
							src.form_4 = 1
							src.frozen = 0
							src.doing = 0
							src.safe = 0
							return
				/*	else
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

								src.powerlevel *= 33
								src.ki *= 30
								src.strength *= 29
								src.defence *= 28

								src.block += 9
								src.dodge += 9
								src.critical += 11
								src.reflect += 11
								src.counter += 9

								src.speed = 1.8


								view(6) << "<font color = #800080>[src.name] changes into his Final Form!"
								src.icon = 'Dragon Rage 7.dmi'
								src.icon_state=""
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

									src.powerlevel *= 100
									src.ki *= 100
									src.strength *= 100
									src.defence *= 100

									src.block += 9
									src.dodge += 9
									src.critical += 19
									src.reflect += 3
									src.counter += 3

									src.speed = -10.5


									view(6) << "<font color = #800080>[src.name] changes into his Omega Form!"
									src.icon = 'Omega.dmi'
									src.icon_state=""
									new/obj/techs/Overlays/Crater_Center(src.loc)
									src.form_6 = 1
									src.frozen = 0
									src.doing = 0
									src.safe = 0

									src.overlays += big_purple_elec
									src.overlays += src.ely_red_elec
									src.overlays += src.ely_blue_elec
									return*/