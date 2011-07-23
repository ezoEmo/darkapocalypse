mob/learn/
	verb
		Shocking_Death_Ball(mob/M in oview(6))
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
				src << "[M] is currently safe and cannot be attack."
				return

			if(!M.pk)
				usr << "[M] Must be a combatant to engage in combat with players!"
				return


			if(src.wrapped)
				src << "Your ki has been contained in the goo!"
				return

			if(src.dead)
				return

			if(src.ki_lock)
				src << "Cannot use this Technique at his time"
				return

			if(src.Rball_lock)
				src << "You are recovering from your last blast..."
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

			var/ki_damage = round(((usr.ki_skill / usr.ki_skill_max) * usr.level) + usr.powerlevel_max * 0.45)
			var/ki_cost = src.ki_max

			if(src.ki >= ki_cost)
				if(!src.doing)
					src.ki_lock = 1
					spawn(10) src.ki_lock = 0
					src.frozen = 1
					src.doing = 1
					src.ki -= ki_cost
					src.overlays += ball_charge
					src.icon_state = "spirit bomb"
					view(6) << "<font color = white>[src]:</font> Shocking..."
					sleep(10)
					view(6) << "<font color = white>[src]:</font> Death..."
					sleep(10)
					view(6) << "<font color = white>[src]:</font> Ball!!!"
					src.overlays -= ball_charge
					src.icon_state = ""
					spawn(5) src.doing = 0
					spawn(5) src.frozen = 0


					for(var/turf/T in view(src,8))
						var/chance = roll(1,8)
						if(chance == 1)
							missile('Revege Ball.dmi', src, M)
					if(prob(M.dodge))
						usr << "\red [M] has avoided some of the damage."
						M << "<font color=lime>You avoided some of the damage!"
						ki_damage = round(((usr.ki_skill / usr.ki_skill_max) * usr.level) + usr.powerlevel_max * 0.30)
						M.powerlevel -= ki_damage
					else
						M.powerlevel -= ki_damage
					M.BigKiDeathCheck(src)
					src.Rball_lock = 1
					spawn(150) src.Rball_lock = 0


			src.afk_time = 0


