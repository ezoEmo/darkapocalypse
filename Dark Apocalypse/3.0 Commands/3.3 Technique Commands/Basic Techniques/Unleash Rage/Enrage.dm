mob/var/enraged = 0
mob/var/gone_ssj = 0
mob/var/eats = 0
mob/learn/verb/Unleash_Rage()
	set category = "Techniques"
	if(src.monkey)
		src << "Your body is under too much stress!"
		return

	if(src.kaioken)
		src << "Your body is under too much stress!"
		return

	if(src.form_1 && src.race == "Saiyan")
		src << "Your body is enraged from Transforming!"
		return
	else
		if(src.form_1 && src.race == "Half Saiyan")
			src << "Your body is enraged from Transforming!"
			return

	if(src.rage >= 10)
		if(src.enraged)
			src << "You are still too Enraged!"
			return
		else
			src.afk_time = 0
			src.enraged = 1
			src << "You feel an Uncontrollable Rage release itself from your body!"
			src.icon_state = "enrage"
			sleep(25)
			var/bonus = src.powerlevel_max * src.rage / 10
			src.powerlevel += bonus
			src.icon_state = ""
			if(src.race == "Majin")
				spawn(5) src.Thin_Majin()
			sleep(300)
			src.enraged = 0
			src.rage = 0
			src.powerlevel = src.powerlevel_max
			src << "You feel yourself become Calm again"
	else
		src << "Your don't have enough Rage..."
		return

mob
	proc
		Thin_Majin()
			if(src.rage == 100)
				if(!src.form_1 && src.obtain_super >= 0)
					if(src.eats >= 15 && src.karma == "Evil" && src.powerlevel_max >= 80000)
						src.obtain_super = 1
						src << "You feel more power surge through your body with Evil."
						sleep(10)
						view(6) << "[src.name] screams out as he unleashes some of his evil and transforms into a Thin Majin!"
						src.doing = 1
						flick("thin transform",src)
						src.frozen = 1
						sleep(100)


						src.powerlevel_max *= 2.5
						src.ki_max *= 2.5
						src.strength_max *= 2.5
						src.defence_max *= 2.5

						src.block_max += 10
						src.dodge_max += 4
						src.critical_max += 15
						src.reflect_max += 8

						src.speed_max = 3.6
						src.speed = 3.6

						src.powerlevel = src.powerlevel_max
						src.ki = src.ki_max
						src.strength = src.strength_max
						src.defence = src.defence_max
						src.critical = src.critical_max
						src.dodge = src.dodge_max
						src.reflect = src.reflect_max
						src.block = src.block_max

						src.icon = 'Majin - Form 2.dmi'
						src.icon_state = ""
						new/obj/techs/Overlays/Crater_Small(src.loc)

						src.underlays -= src.aura

						src.form_1 = 1
						src.frozen = 0
						src.doing = 0