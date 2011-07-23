mob/learn
	verb/Demon_Ki_Blast()
		set category = "Techniques"
		set name = "Hell Blitz"

		if(src.doing)
			src << "You are already doing something!"
			return

		if(src.wrapped)
			src << "Your ki has been contained in the goo!"
			return

		if(src.safe)
			src << "You are currently safe and cannot attack."
			return

		if(src.buku)
			return

		if(src.dead)
			return

		if(src.ki_lock)
			src << "Cannot use this Technique at his time"
			return

		if(!src.pk)
			usr << "You are not a Combatant!"
			return

		for(var/turf/Floors/Safe_Zone/S in view(6))
			if(S in view(8))
				usr << "They are in a Safe Zone!"
				return
		if(prob(30))
			view(6) << "<font color=white>[usr.name]: </font>Ha!"



		spawn() Demon_Ki_Blast_Shoot()
		src.afk_time = 0

mob
	proc
		Demon_Ki_Blast_Shoot()
			var/obj/H = new/obj/Demon_Ki_Blast
			var/ki_damage = round(((usr.ki_skill / usr.ki_skill_max) * usr.level) + usr.powerlevel_max * 0.40)
			var/ki_cost = round(src.ki_max * 0.24)

			if(src.ki >= ki_cost)
				if(!src.doing)
					src.doing = 1
					usr.icon_state = "attack"
					sleep(5)
					usr.icon_state = ""
					src.ki -= ki_cost
					spawn(5) src.doing = 0
					spawn(5) src.frozen = 0
					H.dir = src.dir
					H.loc = src.loc

					while(H)
						step(H,H.dir)
						if(!H)break
						var/turf/T = H.loc
						if(T.density)
							del(H)
							break
						for(var/mob/M as mob in T)

							if(M == src)
								continue

							if(!M.dead && !M.safe && M.pk)
								M.powerlevel -= round(ki_damage)
								if(prob(30))
									M << "\red [usr.name]'s Hell Blitz slams into you"
								M.SmallKiDeathCheck(src)
								src.doing = 0
								src.frozen = 0
								return
							del(H)
						sleep(1)

obj/Demon_Ki_Blast
	icon = 'kiatc.dmi'