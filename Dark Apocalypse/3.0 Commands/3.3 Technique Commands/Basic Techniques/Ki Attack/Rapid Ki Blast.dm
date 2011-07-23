

mob/learn
	verb
		Rapid_Ki_Blast(mob/M in oview(6))
			set category = "Techniques"

			if(src.doing)
				src << "You are already doing something!"
				return

			if(src.buku)
				return

			if(src.safe)
				src << "You are currently safe and cannot attack."
				return

			if(M.safe)
				src << "A force stops you from attacking [M]"
				return

			if(M.dead)
				src << "A force stops you from attacking [M]"
				return

			if(src.wrapped)
				src << "Your ki has been contained in the goo!"
				return

			if(src.dead)
				return

			if(src.ki_lock)
				src << "Cannot use this Technique at his time"
				return

			if(!M.pk)
				usr << "[M] Must be a combatant to engage in combat with players!"
				return


			if(!src.pk)
				usr << "You are not a Combatant!"
				return

			for(var/turf/Floors/Safe_Zone/S in view(6))
				if(S in view(8))
					usr << "They are in a Safe Zone!"
					return
			for(var/turf/Planet_Gravitys/Supreme_Kai/A in view(6))
				if(A in view(8))
					usr << "They are in a Safe Zone!"
					return

			for(var/turf/Planet_Gravitys/King_Kai/D in view(6))
				if(D in view(8))
					usr << "They are in a Safe Zone!"
					return


			src.afk_time = 0

			var/ki_damage = round(((usr.ki_skill / usr.ki_skill_max) * usr.level) + usr.powerlevel_max * 0.23)
			var/ki_cost = round(src.ki_max * 0.43)

			if(src.level >= 500)
				ki_damage = round(((usr.ki_skill / usr.ki_skill_max) * usr.level) + usr.powerlevel_max * 0.33)

			if(src.level >= 750)
				ki_damage = round(((usr.ki_skill / usr.ki_skill_max) * usr.level) + usr.powerlevel_max * 0.43)

			if(src.level >= 1250)
				ki_damage = round(((usr.ki_skill / usr.ki_skill_max) * usr.level) + usr.powerlevel_max * 0.55)

			if(src.level >= 500 && src.level <= 749)
				if(src.ki >= ki_cost)
					if(!src.doing)
						src.ki_lock = 1
						spawn(10) src.ki_lock = 0
						src.doing = 1
						usr.icon_state = "attack"
						sleep(5)
						usr.icon_state = ""
						src.ki -= ki_cost
						src.overlays += kamehameha_charge
						view(6) << "<font color = white>[src]:</font> Rapid Ki Blast..."
						sleep(10)
						sleep(15)
						view(6) << "<font color = white>[src]:</font> HA!!!"
						src.overlays -= kamehameha_charge
						missile(new/obj/Ki_Blast, usr, M)
						sleep(8)
						view(6) << "<font color = white>[src]:</font> HA!!!"

						missile(new/obj/Ki_Blast, usr, M)
						sleep(8)
						view(6) << "<font color = white>[src]:</font> HA!!!"

						missile(new/obj/Ki_Blast, usr, M)

						sleep(8)
						view(6) << "<font color = white>[src]:</font> HA!!!"

						missile(new/obj/Ki_Blast, usr, M)
						sleep(8)
						view(6) << "<font color = white>[src]:</font> HA!!!"

						missile(new/obj/Ki_Blast, usr, M)
						M.powerlevel -= round(ki_damage)

						M.SmallKiDeathCheck(src)
						src.doing = 0
						src.frozen = 0
						return
			else
				if(src.level >= 750)
					if(src.ki >= ki_cost)
						if(!src.doing)
							src.ki_lock = 1
							spawn(10) src.ki_lock = 0

							src.doing = 1
							src.ki -= ki_cost
							src.overlays += kamehameha_charge
							view(6) << "<font color = white>[src]:</font> Rapid Ki Blast..."
							sleep(10)
							sleep(15)
							view(6) << "<font color = white>[src]:</font> HA!!!"
							src.overlays -= kamehameha_charge
							missile(new/obj/Ki_Blast, usr, M)
							sleep(8)
							view(6) << "<font color = white>[src]:</font> HA!!!"

							missile(new/obj/Ki_Blast, usr, M)
							sleep(8)
							view(6) << "<font color = white>[src]:</font> HA!!!"

							missile(new/obj/Ki_Blast, usr, M)

							sleep(8)
							view(6) << "<font color = white>[src]:</font> HA!!!"

							missile(new/obj/Ki_Blast, usr, M)

							sleep(8)
							view(6) << "<font color = white>[src]:</font> HA!!!"

							missile(new/obj/Ki_Blast, usr, M)
							sleep(8)
							view(6) << "<font color = white>[src]:</font> HA!!!"

							missile(new/obj/Ki_Blast, usr, M)
							sleep(8)
							view(6) << "<font color = white>[src]:</font> HA!!!"

							missile(new/obj/Ki_Blast, usr, M)

							M.powerlevel -= round(ki_damage)

							M.SmallKiDeathCheck(src)
							src.doing = 0
							src.frozen = 0
							return
				else
					if(src.ki >= ki_cost)
						if(!src.doing)

							src.ki_lock = 1
							spawn(10) src.ki_lock = 0
							src.doing = 1
							src.ki -= ki_cost
							src.overlays += kamehameha_charge
							view(6) << "<font color = white>[src]:</font> Rapid Ki Blast..."
							sleep(10)
							sleep(15)
							view(6) << "<font color = white>[src]:</font> HA!!!"
							src.overlays -= kamehameha_charge
							missile(new/obj/Ki_Blast, usr, M)
							sleep(8)
							view(6) << "<font color = white>[src]:</font> HA!!!"

							missile(new/obj/Ki_Blast, usr, M)
							sleep(8)
							view(6) << "<font color = white>[src]:</font> HA!!!"

							missile(new/obj/Ki_Blast, usr, M)

							M.powerlevel -= round(ki_damage)

							M.SmallKiDeathCheck(src)
							src.doing = 0
							src.frozen = 0
							return
