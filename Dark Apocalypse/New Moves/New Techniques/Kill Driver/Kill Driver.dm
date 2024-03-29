mob/var/learn_kill_driver = 0
mob/var/kill_driver_charge = 'Kill Driver Charge.dmi'

mob/learn
	verb
		Kill_Driver()
			set category = "Techniques"
			if(src.form_3)
				if(usr.doing)
					src << "You are already doing something!"
					return

				if(src.monkey)
					usr << "You cannot use this skill at the moment."
					return

				if(src.wrapped)
					src << "Your ki has been contained in the goo!"
					return

				if(usr.buku)
					return

				if(src.safe)
					src << "You are currently safe and cannot attack."
					return


				if(usr.dead)
					return

				if(usr.ki_lock)
					src << "Cannot use this Technique at his time"
					return

				if(!usr.pk)
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


				Kill_Driver_Shoot()
				src.afk_time = 0
			else
				src <<"You can not use this technique at this Power level"
mob
	proc
		Kill_Driver_Shoot()
			var/obj/H = new/obj/kill_driver
			var/ki_damage = round(usr.powerlevel_max * 0.88)
			var/ki_cost = round(src.ki_max * 0.68)

			if(src.ki >= ki_cost)
				if(!src.doing)
					src.ki_lock = 1
					spawn(10) src.ki_lock = 0
					src.doing = 1
					src.ki -= ki_cost
					src.overlays += kill_driver_charge
					view(6) << "<font color = white>[src]:</font> Kill....."
					sleep(8)
					view(6) << "<font color = white>[src]:</font> Driver!!"
					sleep(8)
					view(6) << "<font color = white>[src]:</font> HA!!!"
					src.overlays -= kill_driver_charge
					usr.icon_state = "attack"
					sleep(3)
					usr.icon_state = ""
					spawn(5) src.doing = 0
					spawn(5) src.frozen = 0
					if(!H)return
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
							var/absorb_max = round(M.powerlevel_max)
							var/ki_absorbed = round(M.ki_shield_strength - ki_damage)

							if(M == src)
								continue
							if(!M.dead && !M.safe && M.pk)
								if(M.ki_shield)
									if(ki_absorbed >= 1)
										src << "<font color = #00C3ED>[M]'s Ki Shield Absorbs the attacks damage!"
										M << "<font color = #00C3ED>Your Ki Shield Absorbs [src]'s Attack!"
										Explode(new /Effect/BasicBoom(M.loc,1,3))
										M.powerlevel -= round(ki_absorbed)
										M.ki_shield_strength -= round(ki_damage)
										M.BigKiDeathCheck(src)
										src.doing = 0
										src.frozen = 0
										return
									else
										M << "\red [src]'s Kill Driver slams into you!"
										src <<"\red Your Kill Driver slams into [M]!"
										Explode(new /Effect/BasicBoom(M.loc,1,3))
										M.powerlevel -= round(ki_absorbed)
										M.ki_shield_strength -= round(ki_damage)
										M.BigKiDeathCheck(src)
										src.doing = 0
										src.frozen = 0
										return
								else
									if(M.absorbing)
										if(absorb_max > ki_damage)
											M << "\red [src]'s attacks hits you, but you Absorb the energy!"
											src <<"\red Your Kill Driver is Absorbed by [M]!"
											M.gooda+=1
											M.UTBA()
											Explode(new /Effect/BasicBoom(M.loc,1,3))
											M.ki += ki_damage
											src.doing = 0
											src.frozen = 0
											return
										else
											Explode(new /Effect/BasicBoom(M.loc,1,3))
											M.powerlevel -= round(ki_damage)
											M << "\red You try to absorb [src]'s Kill Driver, but it is too strong!"
											src <<"\red Your Kill Driver slams into [M]!"
											M.BigKiDeathCheck(src)
											src.doing = 0
											src.frozen = 0
											return

								M << "\red [src.name]'s Kill Driver slams into you"
								Explode(new /Effect/BasicBoom(M.loc,1,3))
								M.powerlevel -= ki_damage
								M.BigKiDeathCheck(src)
							del(H)
						sleep(1)

obj/kill_driver
	icon = 'Kill Driver.dmi'