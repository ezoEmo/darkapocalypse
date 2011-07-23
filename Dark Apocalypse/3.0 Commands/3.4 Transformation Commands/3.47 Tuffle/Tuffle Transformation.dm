mob/var/obtain_super = 0
mob/var/obtain_super_2 = 0



mob/proc/Tuffle_Trans()


	if(src.doing)
		return
	if(src.KO)
		return
	else
		if(!src.form_1)
			if(src.powerlevel_max >= 100000  && src.infect_kill >= 10 && src.karma =="Evil")
				switch(alert("Are your sure you want to transform?","Permanent Transformation","Yes","No"))
					if("Yes")
						if(src.transforming)
							return
						if(src.form_1)
							return
						src.transforming = 1
						src.form_1 = 1
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

						view(6) << "<font color = white>[src.name] takes over their hosts body and morphs into Infected Form!"
						src.icon_state = ""
						src.icon = 'Bebi - Form 2.dmi'
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
				if(src.powerlevel_max >= 2500000  && src.infect_kill >= 50 && src.karma =="Evil" && src.karma_rating >= 20)
					switch(alert("Are your sure you want to transform?","Permanent Transformation","Yes","No"))
						if("Yes")
							if(src.transforming)
								return
							if(src.form_2)
								return
							src.transforming = 1
							src.form_2 = 1

							src.safe = 1
							src.doing = 1
							src.icon_state = "enrage"
							src.frozen = 1
							sleep(20)

							src.powerlevel_max *= 3
							src.ki_max *= 2
							src.strength_max *= 4
							src.defence_max *= 4

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

							view(6) << "<font color = white>[src.name] transforms into their Infected Form 2!"
							src.icon_state = ""
							src.icon = 'Bebi - Form 3.dmi'
							new/obj/techs/Overlays/Crater_Small(src.loc)

							src.frozen = 0
							src.doing = 0
							src.safe = 0
							src.transforming = 0
							return
						else
							return
			else
				if(!src.form_3)
					if(src.powerlevel_max >= 30000000  && src.infect_kill >=100)
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
						src.overlays += big_red_elec

						view(6) << "<font color = yellow>[src.name] explodes in rage as he goes Super Tuffle!"
						src.icon_state = ""
						new/obj/techs/Overlays/Crater_Center(src.loc)
						src.underlays -= src.aura
						src.underlays += src.ssj_aura
						spawn(25) src.underlays -= src.ssj_aura
						src.form_3 = 1
						src.frozen = 0
						src.doing = 0
						src.safe = 0
						return
				else
					if(!src.form_4)
						if(src.powerlevel_max >= 300000000  && src.infect_kill >=200)
							src.safe = 1
							src.doing = 1
							src.icon_state = "enrage"
							src.frozen = 1
							sleep(5)

							src.powerlevel = src.powerlevel_max
							src.ki = src.ki_max
							src.strength = src.strength_max
							src.defence = src.defence_max

							src.powerlevel *= 75
							src.ki *= 105
							src.strength *= 75
							src.defence *= 75

							src.speed = 1.8

							src.critical = src.critical_max
							src.dodge = src.dodge_max
							src.reflect = src.reflect_max
							src.block = src.block_max

							src.block += 15
							src.dodge += 15
							src.critical += 15
							src.reflect += 15
							src.counter += 15
							src.overlays += big_red_elec
							src.overlays += src.hair_fssj4

							view(6) << "<font color = yellow>[src.name] explodes in rage as he goes Hidden Tuffle Form!"
							src.icon_state = ""
							new/obj/techs/Overlays/Crater_Center(src.loc)
							src.underlays -= src.aura
							src.underlays += src.ssj_aura
							spawn(25) src.underlays -= src.ssj_aura
							src.form_4 = 1
							src.frozen = 0
							src.doing = 0
							src.safe = 0
							return


