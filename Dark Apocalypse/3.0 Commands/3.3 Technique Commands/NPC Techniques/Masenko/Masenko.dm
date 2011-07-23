mob/var/masenko_charge = 'Cosmic Donut Charge.dmi'
mob/learn
	verb
		Masenko()
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

			Masenko_Shoot()
			src.afk_time = 0


mob
	proc
		Masenko_Shoot()
			var/obj/H = new/obj/masenko
			var/ki_damage = round(usr.powerlevel_max * 0.80)
			var/ki_cost = round(src.ki_max * 0.65)

			if(src.ki >= ki_cost)
				if(!src.doing)
					src.ki_lock = 1
					spawn(10) src.ki_lock = 0
					src.doing = 1
					src.ki -= ki_cost
					src.overlays += masenko_charge
					view(6) << "<font color = white>[src]:</font> MASENKO....."
					sleep(8)
					view(6) << "<font color = white>[src]:</font> HAA!!!"
					src.overlays -= masenko_charge
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
										M << "\red [src]'s Masenko slams into you!"
										src <<"\red Your Masenko slams into [M]!"
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
											src <<"\red Your Masenko is Absorbed by [M]!"
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
											M << "\red You try to absorb [src]'s Masenko, but it is too strong!"
											src <<"\red Your Masenko slams into [M]!"
											M.BigKiDeathCheck(src)
											src.doing = 0
											src.frozen = 0
											return

								M << "\red [src.name]'s Masenko slams into you"
								Explode(new /Effect/BasicBoom(M.loc,1,3))
								M.powerlevel -= ki_damage
								M.BigKiDeathCheck(src)
							del(H)
						sleep(1)


obj/masenko
	icon = 'Masenko.dmi'

/*mob
	var
		firing = 0 // This var determines whether the mob is firing a beam, or not.
		move = 1

	Move() // Move proc
		if(move) // If the move var is 1...
			..() // Continue process
		else // If its not 1...
			return // Stop movement
obj
	var
		mob/owner = null // This var will be set as the owner of the beam being fired.
		total = 10 // The total number of spaces the beam's head is allowed to move
		moved = 0 // The number of spaces the beam's head has moved
		list/Beam = list() // A simple list to keep track of the beam's body
	Beams
		icon = 'Masenko.dmi'
		density = 1
		Head
			icon_state = "head"
			New()
				spawn(1) // Delay is abit...
					Start() // Calls the Start() proc
					Check()
				..()
			proc
				Start()
					walk(src,usr.dir,1) // Makes the beam's head move
				Check() // This is the proc used to delete the beam when its at the map's edge
					while(src)
						var/turf/T = get_step(src,src.dir)
						if(!T)
							owner.firing = 0
							owner.icon_state = ""
							owner.doing = 0
							owner.move = 1

							if(src)
								for(var/obj/O in src.Beam)
									del(O)
								del(src)
						sleep(1)
			Bump(atom/M)
				if(isturf(M)) // If whatever the head bumps is a turf..
					owner.firing = 0 // Allow the owner to fire another beam
					owner.icon_state = "" // Give them their default icon_state
					owner.doing = 0

					owner.move = 1 // Allow them to move
					for(var/obj/O in src.Beam) // Checks for objects in the Head's Beam list...
						del(O) // Deletes any objects found
					del(src) // Deletes the head
				else if(ismob(M)) // If whatever the head bumps is a mob...
					view(src.owner) << "[src.owner]'s beam hits [M]!" // For all in the owner's view, gives a message
					owner.firing = 0 // Allows the owner to fire another beam
					src.owner.icon_state = "" // Sets them to their default icon_state
					owner.doing = 0

					owner.move = 1 // Allows them to move
					for(var/obj/O in src.Beam) //For all objects in the Head's Beam list...
						del(O) //Delete any objects found
					del(src) // Delete the head
				else
					if(!ismob(M) && !isturf(M) && !isobj(M) && !isarea(M))
						owner.firing = 0 // Allow the owner to fire another beam
						owner.icon_state = "" // Give them their default icon_state
						owner.doing = 0
						owner.move = 1 // Allow them to move
						for(var/obj/O in src.Beam) // Checks for objects in the Head's Beam list...
							del(O) // Deletes any objects found
						del(src) // Deletes the head


		Body // The Beam's body
			icon_state = "body"
			density = 1
	Move()
		if(istype(src,/obj/Beams/Head)) //If the obj trying to move is The Beam's Head...
			var/obj/Body = new/obj/Beams/Body(src.loc) // Create a new body at the current location
			Body.owner = src //Set the owner of the body to the Head
			src.Beam.Add(Body) // Adds the Body to the Head's Beam list, for later tracking and deletion of it
			Body.dir = src.dir // Set its direction
			moved++ // Adds 1 to the Head's moved var
			if(moved == total) // Checks to see if the spaces moved(the moved var) is equal to the spaces its allowed to move(the total var)
				owner.firing = 0 // Allows the owner to fire another beam
				owner.icon_state = "" // Sets the owner to its default icon_state
				owner.doing = 0

				owner.move = 1 // Allows the owner to move
				if(src) // Just incase...checking to make sure the object is still there, we dont want any runetime errors, do we? =p
					for(var/obj/O in src.Beam) // Checks for the objects in the Head's Beam list
						del(O) // Delete any objects found
					del(src) // Deletes the Head
		..() // Continues with the Move() procs norm

mob/learn
	verb
		Masenko() // Verb used for firing the beam
			set category = "Techniques"
			if(usr.doing)
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
			if(usr.firing) // If the mob's firing var is one...
				usr << "This cannot be done."
				return
			else // If the firing var isn't 1...
				usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
				usr.doing = 1
				usr.ki_lock = 1
				spawn(10) usr.ki_lock = 0
				usr.move = 0 // Disables the mob's movement
				usr.icon_state = "attack" // Sets the mob's icon_state
				usr.overlays += masenko_charge
				view(6) << "<font color = white>[src]:</font> MASENKO....."
				sleep(8)
				view(6) << "<font color = white>[src]:</font> HAA!!!"
				usr.overlays += masenko_charge
				usr.Beam() // Calls the Beam() proc
mob
	proc
		Beam()
			var/obj/Head = new/obj/Beams/Head() // Creates the Beam's Head
			var/ki_damage = round(usr.powerlevel_max * 0.80)
			var/ki_cost = round(usr.ki_max * 0.65)
			if(usr.dir == NORTH) // If the mob's dir is NORTH...
				Head.loc = locate(usr.x,usr.y+1,usr.z)
			if(usr.dir == SOUTH) // If SOUTH...
				Head.loc = locate(usr.x,usr.y-1,usr.z)
			if(usr.dir == WEST) // If WEST...
				Head.loc = locate(usr.x-1,usr.y,usr.z)
			if(usr.dir == EAST) // If EAST...
				Head.loc = locate(usr.x+1,usr.y,usr.z)
			Head.total = 8 // Sets the total to 6, that means the beam's head can move 6 spaces before deletion
			Head.dir = usr.dir // Sets the Head's dir to the mob's dir
			Head.owner = usr // Sets the Head's owner to the mob
*/
