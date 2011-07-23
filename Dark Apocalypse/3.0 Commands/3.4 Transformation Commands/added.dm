
mob/proc/Dark_Angel_Revert()
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

		src.icon = 'dark angel.dmi'
		src.Power_Redefine()
		src.Skin_Apply()

		oview() << "[src.name] has reverted from his Transformed state."
		src.icon_state = ""
		src.frozen = 0
		src.doing = 0

		return
	else
		return

mob/proc/Dark_Angel_Trans()
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

				view(6) << "<font color = purple>[src.name]'s transforms to a first form!?!"
				src.icon_state = ""
				src.icon = 'dark angelform 1 trans.dmi'
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

					view(6) << "<font color = purple>[src.name]'s transforms to a sencond form!?!"
					new/obj/techs/Overlays/Crater_Small(src.loc)
					src.icon = 'dark angel 2nd trans.dmi'
					src.icon_state = ""
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

						view(6) << "<font color = purple>[src.name]'s transforms to a third form!?!"
						src.icon_state = ""
						src.icon = 'dark angel 3rd trans.dmi'
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

							view(6) << "<font color = purple>[src.name]'s transforms to the final form!?!"
							src.icon_state = ""
							src.icon = 'dark angel 4rd trans.dmi'
							new/obj/techs/Overlays/Crater_Center(src.loc)
							src.form_4 = 1
							src.frozen = 0
							src.doing = 0
							src.safe = 0
							return
mob/proc/Bardock_Revert()
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

		src.icon = 'Bardock.dmi'
		src.Power_Redefine()
		src.Skin_Apply()

		oview() << "[src.name] has reverted from his Transformed state."
		src.icon_state = ""
		src.frozen = 0
		src.doing = 0

		return
	else
		return

mob/proc/Bardock_Trans()
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

				view(6) << "<font color = yellow>[src.name]'s transforms to a SUPER SAYAIN!?!"
				src.icon_state = ""
				src.icon = 'bardockss.dmi'
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

					view(6) << "<font color = yellow>[src.name]'s transforms to a SUPER SAYAIN 2!?!"
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

						view(6) << "<font color = yellow>[src.name]'s transforms to a SUPER SAYAIN 3!?!"
						src.icon_state = ""
						src.icon = 'bardockss3.dmi'
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

							view(6) << "<font color = red>[src.name]'s transforms to a SUPER SAYAIN 4!?!"
							src.icon_state = ""
							src.icon = 'bardockss4.dmi'
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


								view(6) << "<font color = white>[src.name]'s transforms to a SUPER SAYAIN 5!?!"
								src.icon_state = ""
								src.icon = 'BardockSS5.dmi'
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

									src.powerlevel *= 530
									src.ki *= 600
									src.strength *= 590
									src.defence *= 480

									src.block += 48
									src.dodge += 75
									src.critical += 59
									src.reflect += 37
									src.counter += 48

									src.speed = 1


									view(6) << "<font color = blue>[src.name]'s transforms to a SUPER SAYAIN 6!?!"
									src.icon_state = ""
									src.icon = 'BardockSS6.dmi'
									new/obj/techs/Overlays/Crater_Center(src.loc)
									src.form_6 = 1
									src.frozen = 0
									src.doing = 0
									src.safe = 0

									src.overlays += big_purple_elec
									return
mob/proc/Bio_W_Trans()


	if(src.doing)
		return
	else
		if(!src.form_1)
			if(src.powerlevel_max >= 1000000  && src.level >= 350)
				switch(alert("Are your sure you want to transform?","Permanent Transformation","Yes","No"))
					if("Yes")
						if(src.transforming)
							return
						if(src.form_1)
							return
						else
							src.transforming = 1
							src.safe = 1
							src.doing = 1
							src.icon_state = "enrage"
							src.frozen = 1
							sleep(19)

							src.powerlevel_max *= 2.5
							src.ki_max *= 2.5
							src.strength_max *= 2.5
							src.defence_max *= 2.5



							src.speed = 3.2
							src.speed_max = 3.2

							src.critical_max += rand(1,3)
							src.dodge_max += rand(1,3)
							src.reflect_max += rand(1,3)
							src.block_max += rand(1,3)
							src.counter_max += rand(1,3)

							src.powerlevel = src.powerlevel_max
							src.ki = src.ki_max
							src.strength = src.strength_max
							src.defence = src.defence_max


							view(6) << "<font color = green>[src.name] transforms into his number 2 form!"
							src.icon = 'Bio Warrior 2.dmi'
							src.icon_state = ""
							new/obj/techs/Overlays/Crater_Small(src.loc)

							src.form_1 = 1
							src.frozen = 0
							src.doing = 0
							src.safe = 0
							src.transforming = 0
							return
					if("No")
						return
		else
			if(!src.form_2)
				if(src.powerlevel_max >= 35000000  && src.level >= 800)
					switch(alert("Are your sure you want to transform?","Permanent Transformation","Yes","No"))
						if("Yes")
							if(src.transforming)
								return
							if(src.form_2)
								return
							else
								src.transforming = 1
								src.safe = 1
								src.doing = 1
								src.icon_state = "enrage"
								src.frozen = 1
								sleep(19)

								src.powerlevel_max *= 25
								src.ki_max *= 25
								src.strength_max *= 25
								src.defence_max *= 25


								src.speed = 2
								src.speed_max = 2

								src.critical_max += rand(1,5)
								src.dodge_max += rand(1,5)
								src.reflect_max += rand(1,5)
								src.block_max += rand(1,5)
								src.counter_max += rand(1,5)

								src.powerlevel = src.powerlevel_max
								src.ki = src.ki_max
								src.strength = src.strength_max
								src.defence = src.defence_max
								src.overlays += small_blue_elec

								view(6) << "<font color = green>[src.name] transforms into his number 3 form!!"
								src.icon = 'Bio Warrior 3.dmi'
								src.icon_state = ""
								new/obj/techs/Overlays/Crater_Center(src.loc)
								src.form_2 = 1
								src.frozen = 0
								src.doing = 0
								src.safe = 0
								src.transforming = 0
								return
						if("No")
							return
			else
				if(!src.form_3)
					if(src.powerlevel_max >= 80000000)
						src.safe = 1
						src.doing = 1
						src.icon_state = "enrage"
						src.frozen = 1
						sleep(5)

						src.powerlevel = src.powerlevel_max
						src.ki = src.ki_max
						src.strength = src.strength_max
						src.defence = src.defence_max

						src.powerlevel_max *= 30
						src.ki_max *= 40
						src.strength_max *= 30
						src.defence_max *= 30

						src.speed = 0.3

						src.critical = src.critical_max
						src.dodge = src.dodge_max
						src.reflect = src.reflect_max
						src.block = src.block_max

						src.block_max += 15
						src.dodge_max += 15
						src.critical_max += 15
						src.reflect_max += 15
						src.counter_max += 15
						src.overlays += mystic_elec

						view(6) << "<font color = green>[src.name] transforms into his number 4 form!!"
						src.icon_state = ""
						src.icon = 'Bio Warrior 4.dmi'
						new/obj/techs/Overlays/Crater_Center(src.loc)
						src.underlays -= src.aura
						src.form_3 = 1
						src.frozen = 0
						src.doing = 0
						src.safe = 0
						return
				else
					if(!src.form_4)
						if(src.powerlevel_max >= 100000000)
							src.safe = 1
							src.doing = 1
							src.icon_state = "enrage"
							src.frozen = 1
							sleep(5)

							src.powerlevel = src.powerlevel_max
							src.ki = src.ki_max
							src.strength = src.strength_max
							src.defence = src.defence_max

							src.powerlevel_max *= 30
							src.ki_max *= 50
							src.strength_max *= 35
							src.defence_max *= 35

							src.speed = 0.2

							src.critical = src.critical_max
							src.dodge = src.dodge_max
							src.reflect = src.reflect_max
							src.block = src.block_max

							src.block_max += 20
							src.dodge_max += 20
							src.critical_max += 20
							src.reflect_max += 20
							src.counter_max += 20
							src.overlays += mystic_elec

							view(6) << "<font color = green>[src.name] transforms into his number 5 form!!"
							src.icon_state = ""
							src.icon = 'Bio Warrior 5.dmi'
							new/obj/techs/Overlays/Crater_Center(src.loc)
							src.underlays -= src.aura

							src.form_4 = 1
							src.frozen = 0
							src.doing = 0
							src.safe = 0
							return
					else
						if(!src.form_5)
							if(src.powerlevel_max >= 1000000000)
								src.safe = 1
								src.doing = 1
								src.icon_state = "enrage"
								src.frozen = 1
								sleep(5)

								src.powerlevel = src.powerlevel_max
								src.ki = src.ki_max
								src.strength = src.strength_max
								src.defence = src.defence_max

								src.powerlevel_max *= 60
								src.ki_max *= 60
								src.strength_max *= 60
								src.defence_max *= 60

								src.speed = 0.1

								src.critical = src.critical_max
								src.dodge = src.dodge_max
								src.reflect = src.reflect_max
								src.block = src.block_max

								src.block_max += 20
								src.dodge_max += 20
								src.critical_max += 20
								src.reflect_max += 20
								src.counter_max += 20
								src.overlays += mystic_elec

								view(6) << "<font color = green>[src.name] transforms into his number 6 form!!"
								src.icon_state = ""
								src.icon = 'Bio Warrior 6.dmi'
								new/obj/techs/Overlays/Crater_Center(src.loc)
								src.underlays -= src.aura


								src.form_5 = 1
								src.frozen = 0
								src.doing = 0
								src.safe = 0
								return
						else
							if(!src.form_6)
								if(src.powerlevel_max >= 10000000000)
									src.safe = 1
									src.doing = 1
									src.icon_state = "enrage"
									src.frozen = 1
									sleep(5)

									src.powerlevel = src.powerlevel_max
									src.ki = src.ki_max
									src.strength = src.strength_max
									src.defence = src.defence_max

									src.powerlevel_max *= 60
									src.ki_max *= 60
									src.strength_max *= 60
									src.defence_max *= 60

									src.speed = 0.1

									src.critical = src.critical_max
									src.dodge = src.dodge_max
									src.reflect = src.reflect_max
									src.block = src.block_max

									src.block_max += 20
									src.dodge_max += 20
									src.critical_max += 20
									src.reflect_max += 20
									src.counter_max += 20
									src.overlays += mystic_elec

									view(6) << "<font color = green>[src.name] transforms into his number 7 form!!"
									src.icon_state = ""
									src.icon = 'Bio Warrior 7.dmi'
									new/obj/techs/Overlays/Crater_Center(src.loc)
									src.underlays -= src.aura

									src.form_6 = 1
									src.frozen = 0
									src.doing = 0
									src.safe = 0
									return


mob/proc/Uub_Trans()


	if(src.doing)
		return
	else
		if(!src.form_1)
			if(src.powerlevel_max >= 1000000  && src.level >= 350)
				switch(alert("Are your sure you want to transform?","Permanent Transformation","Yes","No"))
					if("Yes")
						if(src.transforming)
							return
						if(src.form_1)
							return
						else
							src.transforming = 1
							src.safe = 1
							src.doing = 1
							src.icon_state = "enrage"
							src.frozen = 1
							sleep(19)

							src.powerlevel_max *= 5
							src.ki_max *= 5
							src.strength_max *= 5
							src.defence_max *= 5



							src.speed = 3.2
							src.speed_max = 3.2

							src.critical_max += rand(1,3)
							src.dodge_max += rand(1,3)
							src.reflect_max += rand(1,3)
							src.block_max += rand(1,3)
							src.counter_max += rand(1,3)

							src.powerlevel = src.powerlevel_max
							src.ki = src.ki_max
							src.strength = src.strength_max
							src.defence = src.defence_max


							view(6) << "<font color = white>[src.name] transforms into his Unlock hidden form!"
							src.icon_state = ""
							new/obj/techs/Overlays/Crater_Small(src.loc)

							src.form_1 = 1
							src.frozen = 0
							src.doing = 0
							src.safe = 0
							src.transforming = 0
							return
					if("No")
						return
		else
			if(!src.form_2)
				if(src.powerlevel_max >= 35000000  && src.level >= 800)
					switch(alert("Are your sure you want to transform?","Permanent Transformation","Yes","No"))
						if("Yes")
							if(src.transforming)
								return
							if(src.form_2)
								return
							else
								src.transforming = 1
								src.safe = 1
								src.doing = 1
								src.icon_state = "enrage"
								src.frozen = 1
								sleep(19)

								src.powerlevel_max *= 5
								src.ki_max *= 5
								src.strength_max *= 5
								src.defence_max *= 5


								src.speed = 2
								src.speed_max = 2

								src.critical_max += rand(1,5)
								src.dodge_max += rand(1,5)
								src.reflect_max += rand(1,5)
								src.block_max += rand(1,5)
								src.counter_max += rand(1,5)

								src.powerlevel = src.powerlevel_max
								src.ki = src.ki_max
								src.strength = src.strength_max
								src.defence = src.defence_max
								src.overlays += small_blue_elec

								view(6) << "<font color = white>[src.name] use Goku's training and transforman into his next form!!"
								src.icon = 'Uub 2.dmi'
								src.icon_state = ""
								new/obj/techs/Overlays/Crater_Center(src.loc)
								src.form_2 = 1
								src.frozen = 0
								src.doing = 0
								src.safe = 0
								src.transforming = 0
								return
						if("No")
							return
			else
				if(!src.form_3)
					if(src.powerlevel_max >= 80000000)
						src.safe = 1
						src.doing = 1
						src.icon_state = "trans"
						src.frozen = 1
						sleep(37)

						src.powerlevel = src.powerlevel_max
						src.ki = src.ki_max
						src.strength = src.strength_max
						src.defence = src.defence_max

						src.powerlevel_max *= 4
						src.ki_max *= 8
						src.strength_max *= 9
						src.defence_max *= 4

						src.speed = 0.3

						src.critical = src.critical_max
						src.dodge = src.dodge_max
						src.reflect = src.reflect_max
						src.block = src.block_max

						src.block_max += 15
						src.dodge_max += 15
						src.critical_max += 15
						src.reflect_max += 15
						src.counter_max += 15
						src.overlays += mystic_elec

						view(6) << "<font color = white>[src.name] fuses with Majin buu to became Majuub!"
						src.icon_state = ""
						src.icon = 'Uub 3.dmi'
						new/obj/techs/Overlays/Crater_Center(src.loc)
						src.underlays -= src.aura
						src.form_3 = 1
						src.frozen = 0
						src.doing = 0
						src.safe = 0
						return
				else
					if(!src.form_4)
						if(src.powerlevel_max >= 100000000)
							src.safe = 1
							src.doing = 1
							src.icon_state = "enrage"
							src.frozen = 1
							sleep(5)

							src.powerlevel = src.powerlevel_max
							src.ki = src.ki_max
							src.strength = src.strength_max
							src.defence = src.defence_max

							src.powerlevel_max *= 30
							src.ki_max *= 50
							src.strength_max *= 35
							src.defence_max *= 35

							src.speed = 0.2

							src.critical = src.critical_max
							src.dodge = src.dodge_max
							src.reflect = src.reflect_max
							src.block = src.block_max

							src.block_max += 2
							src.dodge_max += 2
							src.critical_max += 2
							src.reflect_max += 2
							src.counter_max += 2
							src.overlays += mystic_elec

							view(6) << "<font color = white>[src.name] skin truns pink!!"
							src.icon_state = ""
							src.icon = 'Uub 4.dmi'
							new/obj/techs/Overlays/Crater_Center(src.loc)
							src.underlays -= src.aura

							src.form_4 = 1
							src.frozen = 0
							src.doing = 0
							src.safe = 0
							return
					else
						if(!src.form_5)
							if(src.powerlevel_max >= 1000000000)
								src.safe = 1
								src.doing = 1
								src.icon_state = "enrage"
								src.frozen = 1
								sleep(5)

								src.powerlevel = src.powerlevel_max
								src.ki = src.ki_max
								src.strength = src.strength_max
								src.defence = src.defence_max

								src.powerlevel_max *= 6
								src.ki_max *= 7
								src.strength_max *= 6
								src.defence_max *= 6

								src.speed = 0.1

								src.critical = src.critical_max
								src.dodge = src.dodge_max
								src.reflect = src.reflect_max
								src.block = src.block_max

								src.block_max += 20
								src.dodge_max += 20
								src.critical_max += 20
								src.reflect_max += 20
								src.counter_max += 20
								src.overlays += mystic_elec

								view(6) << "<font color = white>[src.name] transforms back the normal skin...but his power has increased!!"
								src.icon_state = ""
								src.icon = 'Uub 3.dmi'
								new/obj/techs/Overlays/Crater_Center(src.loc)
								src.underlays -= src.aura


								src.form_5 = 1
								src.frozen = 0
								src.doing = 0
								src.safe = 0
								return
						else
							if(!src.form_6)
								if(src.powerlevel_max >= 10000000000)
									src.safe = 1
									src.doing = 1
									src.icon_state = "enrage"
									src.frozen = 1
									sleep(5)

									src.powerlevel = src.powerlevel_max
									src.ki = src.ki_max
									src.strength = src.strength_max
									src.defence = src.defence_max

									src.powerlevel_max *= 60
									src.ki_max *= 60
									src.strength_max *= 60
									src.defence_max *= 60

									src.speed = 0.1

									src.critical = src.critical_max
									src.dodge = src.dodge_max
									src.reflect = src.reflect_max
									src.block = src.block_max

									src.block_max += 20


									src.dodge_max += 20
									src.critical_max += 20
									src.reflect_max += 20
									src.counter_max += 20
									src.overlays += mystic_elec

									view(6) << "<font color = white>[src.name] transforms into his Champions form!!"
									src.icon_state = ""
									src.icon = 'Uub 5.dmi'
									new/obj/techs/Overlays/Crater_Center(src.loc)
									src.underlays -= src.aura

									src.form_6 = 1
									src.frozen = 0
									src.doing = 0
									src.safe = 0
									return