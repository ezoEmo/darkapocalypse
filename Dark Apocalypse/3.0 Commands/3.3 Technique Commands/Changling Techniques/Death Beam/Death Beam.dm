mob/var/dbeam_charge = 'DeathBeamCharge.dmi'
mob/learn/
	verb
		Death_Beam()
			set category = "Techniques"

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


			DBeam_Shoot()
			src.afk_time = 0


mob
	proc
		DBeam_Shoot()
			var/obj/H = new/obj/death_beam
			var/ki_damage = round(usr.powerlevel_max * 0.80)
			var/ki_cost = round(src.ki_max * 0.65)

			if(src.ki >= ki_cost)
				if(!src.doing)
					src.ki_lock = 1
					spawn(10) src.ki_lock = 0
					src.doing = 1
					src.ki -= ki_cost
					src.overlays += dbeam_charge
					view(6) << "<font color = white>[src]:</font> Death....."
					sleep(8)
					view(6) << "<font color = white>[src]:</font> Beam!!!"
					sleep(8)
					view(6) << "<font color = white>[src]:</font> FIRE!!!"
					sleep(8)
					view(6) << "<font color = white>[src]:</font> HA!!!"
					src.overlays -= dbeam_charge
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
										M << "\red [src]'s Death Beam slams into you!"
										src <<"\red Your Death Beam slams into [M]!"
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
											src <<"\red Your Death Beam is Absorbed by [M]!"
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
											M << "\red You try to absorb [src]'s Death Beam, but it is too strong!"
											src <<"\red Your Death Beam slams into [M]!"
											M.BigKiDeathCheck(src)
											src.doing = 0
											src.frozen = 0
											return

								M << "\red [src.name]'s Death Beam slams into you"
								Explode(new /Effect/BasicBoom(M.loc,1,3))
								M.powerlevel -= ki_damage
								M.BigKiDeathCheck(src)
							del(H)
						sleep(1)


obj/death_beam
	icon = 'DeathBeam(1).dmi'




/*mob/var/DB_Charge = 'DeathBeamCharge.dmi'
mob/var/firing = 0
obj
	var
		mob/owner = null // This var will be set as the owner of the beam being fired.
		total = 0 // The total number of spaces the beam's head is allowed to move
		moved = 0 // The number of spaces the beam's head has moved
		list/Beam = list() // A simple list to keep track of the beam's body


	Death_Beam_1
		icon = 'DeathBeam(1).dmi'
		density = 1



	Death_Beam_2 // The Beam's body
		icon = 'Deathbeam.dmi'
		density = 1
	proc/beam_add()
		var/obj/Body = new/obj/Death_Beam_2(src.loc) // Create a new body at the current location
		src.Beam.Add(Body) // Adds the Body to the Head's Beam list, for later tracking and deletion of it
		Body.dir = src.dir // Set its direction
		moved++ // Adds 1 to the Head's moved var
		if(moved == total) // Checks to see if the spaces moved(the moved var) is equal to the spaces its allowed to move(the total var)
			if(src) // Just incase...checking to make sure the object is still there, we dont want any runetime errors, do we? =p
				for(var/obj/O in src.Beam) // Checks for the objects in the Head's Beam list
					del(O) // Delete any objects found
				del(src) // Deletes the Head
		..() // Continues with the Move() procs norm

mob/learn/Changling
	verb
		Death_Beam() // Verb used for firing the beam
			set category = "Techniques"

			if(src.doing)
				src << "You are already doing something!"
				return

			if(src.buku)
				return

			if(src.wrapped)
				src << "Your ki has been contained in the goo!"
				return

			if(src.dead)
				return

			if(src.ki_lock)
				src << "Cannot use this Technique at his time"
				return


			if(!src.pk)
				usr << "You are not a Combatant!"
				return

			var/ki_cost = round(src.ki_max * 0.25)

			if(src.ki >= ki_cost)
				if(!src.doing)
					usr.icon_state = "DeathBeam"
					usr.overlays += DB_Charge
					view(6) << "\white [usr]: \font Death....."
					sleep(8)
					view(6) << "\white [usr] \font Beam!!"
					usr.overlays -= DB_Charge
					usr.doing = 1
					usr.firing = 1
					usr.frozen = 1
					spawn() Beam_Shoot()


mob/proc
	Beam_Shoot()

		var/obj/H = new/obj/Death_Beam_1

		var/ki_damage = round(((usr.ki_skill / usr.ki_skill_max) * usr.level) + usr.powerlevel_max * 0.35)
		var/ki_cost = round(src.ki_max * 0.24)

		if(src.ki >= ki_cost)
			if(!src.doing)
				src.doing = 1
				src.ki -= ki_cost
				spawn(5) src.doing = 0
				spawn(5) src.frozen = 0
				if(src.dir == NORTH)
					H.loc = locate(usr.x,usr.y+1,usr.z)
				if(src.dir == SOUTH)
					H.loc = locate(usr.x,usr.y-1,usr.z)
				if(src.dir == WEST)
					H.loc = locate(usr.x-1,usr.y,usr.z)
				if(src.dir == EAST)
					H.loc = locate(usr.x+1,usr.y,usr.z)
				H.dir = src.dir
				H.loc = src.loc
				H.total = 10
				H.owner = usr
				while(H)
					step(H,H.dir)
					H.beam_add()
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
								M << "\red [usr.name]'s Beam slams into you"
							M.SmallKiDeathCheck(src)
							src.doing = 0
							src.frozen = 0
							return
						del(H)
					sleep(1)
*/