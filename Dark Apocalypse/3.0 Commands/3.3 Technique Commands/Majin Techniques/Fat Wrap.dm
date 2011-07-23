mob/var/fat_wrap = 'Fat Wrapped.dmi'
mob/var/wrapped = 0
mob/var/wrap_lock = 0
mob/var/WRAP_delay = 0

obj/Techniques/Majin/Fat_Wrap

	verb/Fat_Wrap()
		set category = "Techniques"

		if(usr.doing)
			src << "You are already doing something!"
			return

		if(usr.buku)
			return

		if(usr.dead)
			return

		if(usr.safe)
			src << "You are currently safe and cannot attack."
			return

		if(usr.wrap_lock)
			src << "Your body is still recovering."
			return

		if(usr.ki_lock)
			src << "Cannot use this Technique at his time"
			return

		if(!usr.pk)
			usr << "You are not a Combatant!"
			return

		for(var/turf/Floors/Safe_Zone/S in view(6))
			if(S in oview(6))
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


		spawn() usr.Fat_Wrap_Shoot()
		usr.afk_time = 0

mob
	proc
		Fat_Wrap_Shoot()
			var/obj/H = new/obj/Fat_Wrap
			var/ki_cost = round(src.ki_max * 0.15)

			if(src.ki >= ki_cost)
				if(!src.doing)
					src.doing = 1
					src.WRAP()
					src.ki -= ki_cost
					spawn(5) src.doing = 0
					spawn(5) src.frozen = 0
					H.dir = src.dir
					H.loc = src.loc
					spawn(50) src.wrap_lock = 0

					while(H)
						step(H,H.dir)
						if(!H)break
						var/turf/T = H.loc
						var/obj/O = H.loc
						if(T.density || O.density)
							del(H)
							break
						for(var/mob/M as mob in T)

							if(M == src)
								continue

							if(!M.dead && !M.safe && M.pk)
								M.overlays += fat_wrap
								M << "\red [usr.name]'s Fat Wrap tangles around your Body!"
								M.frozen = 1
								M.wrapped = 1
								del(H)
								sleep(50)
								if(!M)return
								M.frozen = 0
								M.wrapped = 0
								M.overlays -= fat_wrap
								return
							del(H)
						sleep(1)
obj/Fat_Wrap
	icon = 'Fat Wrap.dmi'




mob/proc/WRAP()
		src.WRAP_delay = 1
		spawn(100)
		src.WRAP_delay = 0






obj/Techniques/Majin/Absorb

	verb/Absorb(mob/M in get_step(usr,usr.dir))
		set category = "Techniques"

		if(!M)return

		if(!M.wrapped)
			usr << "You cannot seem to absorb [M]"
			return

		if(usr.doing)
			usr << "You are doing something already!"
			return

		if(M.race == "Android")
			usr << "<font color=blue>Error: </font>[M] is completely mechanical, you cannot absorb him!"
			return
		if(usr.dead || M.dead)
			usr << "A force stops you from attacking [M]"
			return

		if(usr.safe || M.safe)
			usr << "A force stops you from attacking [M]"
			return

		if(!M.pk)
			usr << "They are not a Combatant!"
			return

		if(!usr.pk)
			usr << "You are not a Combatant!"
			return

		if(!M.KO && M.powerlevel > 0)
			usr << "They must be knocked out first!"
			return
		else
			var/absorb = 0
			if(istype(M,/mob/PC))
				absorb = round(M.level * 10)
				usr.Super2_Trans()
				usr.absorb_kill ++

			usr.doing = 1
			usr.frozen = 1
			sleep(10)
			usr.icon_state = ""
			usr.doing = 0
			usr.frozen = 0
			usr.powerlevel_max += absorb
			M.powerlevel_max -= absorb
			M.powerlevel = 0
			M.AbsorbDeathCheck(usr)
			usr.afk_time = 0

mob/proc/Super2_Trans()
	if(src.form_1 && src.form_2 && !src.form_3 && !src.obtain_super_2)
		if(src.absorb_kill >= 15 && src.eats >= 100 && src.powerlevel_max >= 30000000 && src.level >= 750)
			src.obtain_super_2 = 1
			src.safe = 1
			src.doing = 1
			flick("super 2 transform",src)
			src.frozen = 1
			sleep(100)

			src.powerlevel *= 7
			src.ki *= 7
			src.strength *= 5
			src.defence *= 7

			src.critical += rand(1,5)
			src.dodge += rand(1,5)
			src.reflect += rand(1,5)
			src.block += rand(1,5)
			src.counter += rand(1,5)

			src.speed = 2.6


			view(6) << "<font color = #FF3DA6>The ground around [src.name] shakes and cracks as they Morph into their Third Form!"
			src.icon_state = ""
			src.icon = 'Majin - Form 4.dmi'

			src.form_3 = 1
			src.frozen = 0
			src.doing = 0
			src.safe = 0
			src.contents += new/obj/Transform/Transform
			src.contents += new/obj/Transform/Revert
