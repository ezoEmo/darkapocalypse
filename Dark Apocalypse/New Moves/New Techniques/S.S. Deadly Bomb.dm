mob/var/ss_charge = 'SSCharge.dmi'
mob/var/ss_lock = 0

mob/learn
	verb
		SS_Deadly_Bomb(mob/M in oview(6))
			set name = "SS Deadly Bomb"
			set category = "Techniques"

			if(src.doing)
				src << "You are already doing something!"
				return

			if(src.buku)
				return

			if(M.safe)
				src << "A force stops you from attacking [M]"
				return

			if(src.safe)
				src << "You are currently safe and cannot attack."
				return

			if(src.wrapped)
				src << "Your ki has been contained in the goo!"
				return

			if(src.dead)
				return

			if(src.ki_lock)
				src << "Cannot use this Technique at his time"
				return

			if(src.disk_lock)
				src << "You are recovering from your last blast..."
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

			var/ki_damage = round(((usr.ki_skill / usr.ki_skill_max) * usr.level) + usr.powerlevel_max * 10)
			var/ki_cost = round(src.ki_max * 0.95)

			if(src.ki >= ki_cost)
				if(!src.doing)
					src.ki_lock = 1
					spawn(70) src.ki_lock = 0
					src.doing = 1
					src.ki -= ki_cost
					src.overlays += ss_charge
					view(6) << "<font color = red>[src]:</font> S.S..."
					sleep(10)
					view(6) << "<font color = red>[src]:</font> DEADLY!!!"
					sleep(15)
					view(6) << "<font color = red>[src]:</font> BOMB!!!!!!!!!!!!!"
					src.overlays -= ss_charge
					missile('SSDeadlyBomb.dmi', src, M)
					spawn(5) src.doing = 0
					spawn(5) src.frozen = 0
					spawn(150) src.ss_lock = 0

					if(prob(4))
						M.powerlevel = 0
						M << "\blue [usr.name]'s S.S. Deadly Bomb Blows you up!"
						M.SmallKiDeathCheck(src)
						src.doing = 0
						src.frozen = 0
						return
					else
						M.powerlevel -= round(ki_damage)
						M << "\red [usr.name]'s S.S. Deadly Bomb plows into you"
						M.SmallKiDeathCheck(src)
						src.doing = 0
						src.frozen = 0
						return

obj/ss_bomb
	icon = 'SSDeadlyBomb.dmi'