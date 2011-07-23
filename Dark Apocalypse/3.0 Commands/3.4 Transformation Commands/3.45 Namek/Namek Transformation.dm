mob/proc/Namek_Trans()


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

							view(6) << "<font color = green>[src.name] calms there mind, an fuse with Nail!"
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

								view(6) << "<font color = green>[src.name] calms there mind an fuses with Kami!"
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

						view(6) << "<font color = green>[src.name] explodes in rage as he goes Super Namek!"
						src.icon_state = ""
						src.icon = 'Namek - Super.dmi'
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

							view(6) << "<font color = green>[src.name] explodes in rage as he goes Super Namek 2!"
							src.icon_state = ""
							src.icon = 'Namek - Super2.dmi'
							new/obj/techs/Overlays/Crater_Center(src.loc)
							src.underlays -= src.aura

							src.form_4 = 1
							src.frozen = 0
							src.doing = 0
							src.safe = 0
							return
					else
						if(!src.form_5)
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

								view(6) << "<font color = green>[src.name] looks up as he Reaches above all Nameks!"
								src.icon_state = ""
								src.icon = 'Namek - Super3.dmi'
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

									view(6) << "<font color = green>[src.name] Finds a Hidden Form!"
									src.icon_state = ""
									src.icon = 'Namek - Super4.dmi'
									new/obj/techs/Overlays/Crater_Center(src.loc)
									src.underlays -= src.aura

									src.form_6 = 1
									src.frozen = 0
									src.doing = 0
									src.safe = 0
									return