mob/var/kaioken = 0
mob/var/learn_kaioken = 0

mob/learn
	verb/Kaioken()
		set category = "Techniques"

		if(src.dead)
			src << "You cannot usr Kaioken whilst dead!"
			return

		if(src.buku)
			src << "You cannot use Kaioken whilst Flying!"
			return

		if(src.doing)
			src << "You are busy doing something!"
			return

		if(usr.monkey)
			usr << "\blue Error: \font You cannot Transform whilst oozaru"
			return

		if(src.KO)
			return

		if(src.rest)
			src << "You stop resting"
			src.doing = 0
			src.rest = 0
			src.icon_state = ""
			src.frozen = 0
			return

		if(src.chest_implant || src.head_implant || src.arms_implant || src.legs_implant)
			src << "Your Circuitry cannot handle the stress of Kaioken!"
			return

		if(src.race != "Namek" || src.race != "Majin" || !src.mystic)
			if(src.form_2 || src.form_3 || src.form_4 || src.form_5)
				src << "Your body cannot handle the stress of Kaioken!"
				return

		var/kaioken_bonus = input("What is the level of your Kaioken? (50 is Maximum)") as num | null

		if(src.buku)
			src << "You cannot use Kaioken whilst Flying!"
			return

		if(!kaioken_bonus)
			if(src.kaioken)
				src << "You relax your Kaioken state"
				src.underlays -= kaio_aura
				src.aura_on = 0
				src.kaioken = 0
				src.Power_Redefine()
				return
			else
				src << "You arent in a kaioken state"
				return

		if(src.kaioken)
			src << "You are already using Kaioken. Reset it by Entering 0"
			return

		var/kaioken_limit = 50

		if(src.race == "Majin" || src.race == "Namek" || src.race == "Bio-Android" || src.race == "Android" && !src.form_1|| src.race == "Tuffle" && !src.form_1)
			kaioken_limit = 100

		if(kaioken_bonus < 0)
			src << "You cannot enter a negative value!"
			return

		if(kaioken_bonus > kaioken_limit)
			if(usr.monkey)
				usr << "\blue Error: \font You cannot Transform whilst oozaru"
				return

			view(6) << "<font color = red>[src]'s collapses from the strain of Kaioken!"
			src.underlays -= kaio_aura
			src.kaioken = 0
			src.sight |= BLIND
			src.Power_Redefine()
			sleep(100)
			src.sight &= ~BLIND
			return
		else
			if(kaioken_bonus == kaioken_limit)
				if(usr.monkey)
					usr << "\blue Error: \font You cannot Transform whilst oozaru"
					return

				if(src.race != "Namek" || src.race != "Majin" || !src.mystic)
					if(src.form_2 || src.form_3 || src.form_4 || src.form_5)
						src << "Your body cannot handle the stress of Kaioken!"
						return
				view(5) << "<B><font color = white>[src]:</font> \red Super Kaioken!"
				usr.powerlevel += usr.powerlevel_max * kaioken_bonus / 10
				if(src.race == "Majin" || src.race == "Namek" || src.race == "Bio-Android")
					usr.speed -= 1.6
				else
					usr.speed --
				usr.strength += usr.strength_max * 2.5
				usr.underlays -= usr.aura
				usr.underlays += kaio_aura
				usr.kaioken = 1
				usr.Kaio_Strain()
			else
				if(kaioken_bonus >= 1)
					if(usr.monkey)
						usr << "\blue Error: \font You cannot Transform whilst oozaru"
						return

					if(src.race != "Namek" || src.race != "Majin" || !src.mystic)
						if(src.form_2 || src.form_3 || src.form_4 || src.form_5)
							src << "Your body cannot handle the stress of Kaioken!"
							return

					view(5) << "<font size = -1><B><font color = white>[src]:</font> \red Kaioken times [kaioken_bonus]!"

					usr.powerlevel += usr.powerlevel_max * kaioken_bonus / 10
					if(src.race == "Majin" || src.race == "Namek" || src.race == "Bio-Android" || src.race == "Android" ||src.race == "Tuffle")
						usr.speed -= 1.6
					else
						usr.speed --
					usr.underlays -= usr.aura
					usr.underlays += kaio_aura
					usr.strength += usr.strength_max * 2
					usr.kaioken = 1
					usr.Kaio_Strain()

		src.afk_time = 0