mob/var/distructo_disk = 'Distructo Disk Charge.dmi'
mob/var/DD_delay= 0
mob/learn
	verb
		Distructo_Disk()
			set category = "Techniques"

			if(src.doing)
				src << "You must wait before using this!"
				return

			if(src.buku)
				return

			if(src.wrapped)
				src << "Your ki has been contained in the goo!"
				return

			if(src.dead)
				return

			if(src.safe)
				src << "You are currently safe and cannot attack."
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

			for(var/turf/Planet_Gravitys/Supreme_Kai/A in view(6))
				if(A in view(8))
					usr << "They are in a Safe Zone!"
					return

			for(var/turf/Planet_Gravitys/King_Kai/D in view(6))
				if(D in view(8))
					usr << "They are in a Safe Zone!"
					return

			spawn() Distructo_Disk_Shoot()
			src.afk_time = 0

mob
	proc
		Distructo_Disk_Shoot()
			var/obj/H = new/obj/Distructo_Disk
			var/ki_damage = round(((usr.ki_skill / usr.ki_skill_max) * usr.level) + usr.powerlevel_max * 0.25)
			var/ki_cost = round(src.ki_max * 0.34)

			if(src.ki >= ki_cost)
				if(!src.doing)
					src.ki_lock = 1
					spawn(10) src.ki_lock = 0
					src.DD()
					src.doing = 1
					src.ki -= ki_cost
					src.overlays += distructo_disk
					view(6) << "<font color = white>[src]:</font> Distructo..."
					sleep(10)
					view(6) << "<font color = white>[src]:</font> DISK..."
					sleep(15)
					view(6) << "<font color = white>[src]:</font> HA!!!"
					src.overlays -= distructo_disk
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
								if(prob(12))
									M.powerlevel = 0
									M << "\red [usr.name]'s Distructo Disk slices through your Chest!"
									M.SmallKiDeathCheck(src)
									src.doing = 0
									src.frozen = 0
									if(M.race == "Saiyan")
										if(prob(35))
											if(M.tail_cut)
												M << "\red [src.name]'s Distructo Disk has cut you tail off!"
												M.overlays -= M.tail
												M.tail_cut = 0
												if(M.monkey)
													M.oozaru_break()
												spawn(2000) M.apply_tail()
									return
								else
									M.powerlevel -= round(ki_damage)
									M << "\red [usr.name]'s Distructo Disk slices into you"
									M.SmallKiDeathCheck(src)
									src.doing = 0
									src.frozen = 0
									if(M.race == "Saiyan")
										if(prob(35))
											if(M.tail_cut)
												M << "\red [src.name]'s Distructo Disk has cut you tail off!"
												M.overlays -= M.tail
												M.tail_cut = 0
												if(M.monkey)
													M.oozaru_break()
												spawn(2000) M.apply_tail()
									return
							del(H)
						sleep(1)




obj/Distructo_Disk
	icon = 'Distructo Disk.dmi'


mob/proc/DD()
		src.DD_delay = 1
		spawn(60)
		src.DD_delay = 0

