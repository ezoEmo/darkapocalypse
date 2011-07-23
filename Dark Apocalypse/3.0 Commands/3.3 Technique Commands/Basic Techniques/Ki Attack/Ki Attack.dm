mob/learn
	verb/Ki_Blast()
		set category = "Techniques"

		if(src.doing)
			src << "You are already doing something!"
			return

		if(src.wrapped)
			src << "Your ki has been contained in the goo!"
			return

		if(src.buku)
			return

		if(src.dead)
			return

		if(src.ki_lock)
			src << "Cannot use this Technique at his time"
			return

		if(src.safe)
			src << "You are currently safe and cannot attack."
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
		if(prob(30))
			view(6) << "<font color=white>[usr.name]: </font>Ha!"


		spawn() Ki_Blast_Shoot()
		src.afk_time = 0

mob
	proc
		Ki_Blast_Shoot()
			var/obj/H = new/obj/Ki_Blast
			var/ki_damage = round(((usr.ki_skill / usr.ki_skill_max) * usr.level) + usr.powerlevel_max * 0.25)
			var/ki_cost = round(src.ki_max * 0.23)

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
								if(prob(M.reflect))
									src.powerlevel -= round(ki_damage * 2)
									src << "\red [M.name] deflects your ki blast right back a you!"
									M << "\green You deflect [src]'s ki blast right back at him!"
									src.SmallKiDeathCheck(src)
									src.doing = 0
									src.frozen = 0
									return
								else
									if(M.ki_shield)
										if(prob(42))
											M.powerlevel -= round(ki_damage - M.ki_shield_strength)
											if(prob(30))
												M << "\red [usr.name]'s Ki Blast slams into you but doesnt hurt you as much"
											M.SmallKiDeathCheck(src)
											src.doing = 0
											src.frozen = 0
											return
										else
											M.powerlevel -= round(ki_damage)
											if(prob(30))
												M << "\red [usr.name]'s Ki Blast slams into you"
											M.SmallKiDeathCheck(src)
											src.doing = 0
											src.frozen = 0
											return
									else
										if(M.absorbing == 1)
											if(prob(22))
												M.powerlevel += M.level
												if(prob(30))
													M << "\green You absorbed some of [usr.name]'s Ki Blast"
												src.doing = 0
												src.frozen = 0
												return
											else
												M.powerlevel -= round(ki_damage)
												if(prob(30))
													M << "\red [usr.name]'s Ki Blast slams into you"
												M.SmallKiDeathCheck(src)
												src.doing = 0
												src.frozen = 0
												return

										else
											if(M.race == "Bio-Android")
												if(prob(22))
													M.powerlevel += M.level

													if(prob(30))
														M << "\green You absorbed some of [usr.name]'s Ki Blast"
													src.doing = 0
													src.frozen = 0
													return
												else

													M.powerlevel -= round(ki_damage)
													if(prob(30))
														M << "\red [usr.name]'s Ki Blast slams into you"
													M.SmallKiDeathCheck(src)
													src.doing = 0
													src.frozen = 0
													return
											else

												M.powerlevel -= round(ki_damage)
												if(prob(30))
													M << "\red [usr.name]'s Ki Blast slams into you"
												M.SmallKiDeathCheck(src)
												src.doing = 0
												src.frozen = 0
												return

							del(H)
						sleep(1)

obj/Ki_Blast
	icon = 'Ki Attack.dmi'