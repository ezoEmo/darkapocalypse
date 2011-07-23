/obj/Dragonballs

	Earth_Dragonball_1
		name = "Earth Dragonball 1"
		icon = 'dragonball.dmi'
		icon_state = "1"
		density = 0

		verb
			Summon_Dragon()
				set category = null
				usr.Summon_Dragon()

			Pick_Up()
				set src in oview(0)
				set category = null
				if(!usr.pk)
					usr << "You are not a Combatant!"
					return
				if(Move(usr))
					if(usr.inven_min < usr.inven_max)
						usr << "You have picked up the: <u>[src]</u>."
						usr.inven_min += 1
						usr.e_db_1 = 1
					else
						usr << "No more room for items."
						return
				else
					usr << "You cannot pick up the [src]"
					return
			Drop()
				set category = null
				src.loc = usr.loc
				usr << "You drop the [src]"
				usr.e_db_1 = 0

	Earth_Dragonball_2
		name = "Earth Dragonball 2"
		icon = 'dragonball.dmi'
		icon_state = "2"
		density = 0

		verb
			Summon_Dragon()
				set category = null
				usr.Summon_Dragon()

			Pick_Up()
				set src in oview(0)
				set category = null
				if(!usr.pk)
					usr << "You are not a Combatant!"
					return

				if(Move(usr))
					if(usr.inven_min < usr.inven_max)
						usr << "You have picked up the: <u>[src]</u>."
						usr.inven_min += 1
						usr.e_db_2 = 1
					else
						usr << "No more room for items."
						return
				else
					usr << "You cannot pick up the [src]"

			Drop()
				set category = null
				src.loc = usr.loc
				usr << "You drop the [src]"
				usr.e_db_2 = 0

	Earth_Dragonball_3
		name = "Earth Dragonball 3"
		icon = 'dragonball.dmi'
		icon_state = "3"
		density = 0

		verb
			Summon_Dragon()
				set category = null
				usr.Summon_Dragon()

			Pick_Up()
				set src in oview(0)
				set category = null
				if(!usr.pk)
					usr << "You are not a Combatant!"
					return

				if(Move(usr))
					if(usr.inven_min < usr.inven_max)
						usr << "You have picked up the: <u>[src]</u>."
						usr.inven_min += 1
						usr.e_db_3 = 1
					else
						usr << "No more room for items."
						return
				else
					usr << "You cannot pick up the [src]"

			Drop()
				set category = null
				src.loc = usr.loc
				usr << "You drop the [src]"
				usr.e_db_3 = 0

	Earth_Dragonball_4
		name = "Earth Dragonball 4"
		icon = 'dragonball.dmi'
		icon_state = "4"
		density = 0

		verb
			Summon_Dragon()
				set category = null
				usr.Summon_Dragon()

			Pick_Up()
				set src in oview(0)
				set category = null
				if(!usr.pk)
					usr << "You are not a Combatant!"
					return

				if(Move(usr))
					if(usr.inven_min < usr.inven_max)
						usr << "You have picked up the: <u>[src]</u>."
						usr.inven_min += 1
						usr.e_db_4 = 1
					else
						usr << "No more room for items."
						return
				else
					usr << "You cannot pick up the [src]"

			Drop()
				set category = null
				src.loc = usr.loc
				usr << "You drop the [src]"
				usr.e_db_4 = 0

	Earth_Dragonball_5
		name = "Earth Dragonball 5"
		icon = 'dragonball.dmi'
		icon_state = "5"
		density = 0

		verb
			Summon_Dragon()
				set category = null
				usr.Summon_Dragon()

			Pick_Up()
				set src in oview(0)
				set category = null
				if(!usr.pk)
					usr << "You are not a Combatant!"
					return

				if(Move(usr))
					if(usr.inven_min < usr.inven_max)
						usr << "You have picked up the: <u>[src]</u>."
						usr.inven_min += 1
						usr.e_db_5 = 1
					else
						usr << "No more room for items."
						return
				else
					usr << "You cannot pick up the [src]"

			Drop()
				set category = null
				src.loc = usr.loc
				usr << "You drop the [src]"
				usr.e_db_5 = 0

	Earth_Dragonball_6
		name = "Earth Dragonball 6"
		icon = 'dragonball.dmi'
		icon_state = "6"
		density = 0

		verb
			Summon_Dragon()
				set category = null
				usr.Summon_Dragon()

			Pick_Up()
				set src in oview(0)
				set category = null
				if(!usr.pk)
					usr << "You are not a Combatant!"
					return

				if(Move(usr))
					if(usr.inven_min < usr.inven_max)
						usr << "You have picked up the: <u>[src]</u>."
						usr.inven_min += 1
						usr.e_db_6 = 1
					else
						usr << "No more room for items."
						return
				else
					usr << "You cannot pick up the [src]"

			Drop()
				set category = null
				src.loc = usr.loc
				usr << "You drop the [src]"
				usr.e_db_6 = 0

	Earth_Dragonball_7
		name = "Earth Dragonball 7"
		icon = 'dragonball.dmi'
		icon_state = "7"
		density = 0

		verb
			Summon_Dragon()
				set category = null
				usr.Summon_Dragon()

			Pick_Up()
				set src in oview(0)
				set category = null
				if(!usr.pk)
					usr << "You are not a Combatant!"
					return

				if(Move(usr))
					if(usr.inven_min < usr.inven_max)
						usr << "You have picked up the: <u>[src]</u>."
						usr.inven_min += 1
						usr.e_db_7 = 1
					else
						usr << "No more room for items."
						return
				else
					usr << "You cannot pick up the [src]"

			Drop()
				set category = null
				src.loc = usr.loc
				usr << "You drop the [src]"
				usr.e_db_7 = 0










//********************************************************************************************//
//********************************************************************************************//
//************************************Namekian Dragonballs************************************//
//********************************************************************************************//
//********************************************************************************************//


/obj/Namek_Dragonballs

	Namek_Dragonball_1
		name = "Namek Dragonball 1"
		icon = 'namek dbs.dmi'
		icon_state = "1"
		density = 0

		verb
			Summon_Porunga()
				set category = null
				usr.Summon_Porunga()

			Pick_Up()
				set src in oview(0)
				set category = null
				if(!usr.pk)
					usr << "You are not a Combatant!"
					return

				if(Move(usr))
					if(usr.inven_min < usr.inven_max)
						usr << "You have picked up the: <u>[src]</u>."
						usr.inven_min += 1
						usr.n_db_1 = 1
					else
						usr << "No more room for items."
				else
					usr << "You cannot pick up the [src]"

			Drop()
				set category = null
				src.loc = usr.loc
				usr << "You drop the [src]"
				usr.n_db_1 = 0

	Namek_Dragonball_2
		name = "Namek Dragonball 2"
		icon = 'namek dbs.dmi'
		icon_state = "2"
		density = 0

		verb
			Summon_Porunga()
				set category = null
				usr.Summon_Porunga()

			Pick_Up()
				set src in oview(0)
				set category = null
				if(!usr.pk)
					usr << "You are not a Combatant!"
					return

				if(Move(usr))
					if(usr.inven_min < usr.inven_max)
						usr << "You have picked up the: <u>[src]</u>."
						usr.inven_min += 1
						usr.n_db_2 = 1
					else
						usr << "No more room for items."
						return
				else
					usr << "You cannot pick up the [src]"

			Drop()
				set category = null
				src.loc = usr.loc
				usr << "You drop the [src]"
				usr.n_db_2 = 0

	Namek_Dragonball_3
		name = "Namek Dragonball 3"
		icon = 'namek dbs.dmi'
		icon_state = "3"
		density = 0

		verb
			Summon_Porunga()
				set category = null
				usr.Summon_Porunga()


			Pick_Up()
				set src in oview(0)
				set category = null
				if(!usr.pk)
					usr << "You are not a Combatant!"
					return

				if(Move(usr))
					if(usr.inven_min < usr.inven_max)
						usr << "You have picked up the: <u>[src]</u>."
						usr.inven_min += 1
						usr.n_db_3 = 1
					else
						usr << "No more room for items."
						return
				else
					usr << "You cannot pick up the [src]"

			Drop()
				set category = null
				src.loc = usr.loc
				usr << "You drop the [src]"
				usr.n_db_3 = 0

	Namek_Dragonball_4
		name = "Namek Dragonball 4"
		icon = 'namek dbs.dmi'
		icon_state = "4"
		density = 0

		verb
			Summon_Porunga()
				set category = null
				usr.Summon_Porunga()

			Pick_Up()
				set src in oview(0)
				set category = null
				if(!usr.pk)
					usr << "You are not a Combatant!"
					return

				if(Move(usr))
					if(usr.inven_min < usr.inven_max)
						usr << "You have picked up the: <u>[src]</u>."
						usr.inven_min += 1
						usr.n_db_4 = 1
					else
						usr << "No more room for items."
						return
				else
					usr << "You cannot pick up the [src]"

			Drop()
				set category = null
				src.loc = usr.loc
				usr << "You drop the [src]"
				usr.n_db_4 = 0

	Namek_Dragonball_5
		name = "Namek Dragonball 5"
		icon = 'namek dbs.dmi'
		icon_state = "5"
		density = 0

		verb
			Summon_Porunga()
				set category = null
				usr.Summon_Porunga()

			Pick_Up()
				set src in oview(0)
				set category = null
				if(!usr.pk)
					usr << "You are not a Combatant!"
					return

				if(Move(usr))
					if(usr.inven_min < usr.inven_max)
						usr << "You have picked up the: <u>[src]</u>."
						usr.inven_min += 1
						usr.n_db_5 = 1
					else
						usr << "No more room for items."
						return
				else
					usr << "You cannot pick up the [src]"

			Drop()
				set category = null
				src.loc = usr.loc
				usr << "You drop the [src]"
				usr.n_db_5 = 0

	Namek_Dragonball_6
		name = "Namek Dragonball 6"
		icon = 'namek dbs.dmi'
		icon_state = "6"
		density = 0

		verb
			Summon_Porunga()
				set category = null
				usr.Summon_Porunga()

			Pick_Up()
				set src in oview(0)
				set category = null
				if(!usr.pk)
					usr << "You are not a Combatant!"
					return

				if(Move(usr))
					if(usr.inven_min < usr.inven_max)
						usr << "You have picked up the: <u>[src]</u>."
						usr.inven_min += 1
						usr.n_db_6 = 1
					else
						usr << "No more room for items."
						return
				else
					usr << "You cannot pick up the [src]"

			Drop()
				set category = null
				src.loc = usr.loc
				usr << "You drop the [src]"
				usr.n_db_6 = 0

	Namek_Dragonball_7
		name = "Namek Dragonball 7"
		icon = 'namek dbs.dmi'
		icon_state = "7"
		density = 0

		verb
			Summon_Porunga()
				set category = null
				usr.Summon_Porunga()


			Pick_Up()
				set src in oview(0)
				set category = null
				if(!usr.pk)
					usr << "You are not a Combatant!"
					return

				if(Move(usr))
					if(usr.inven_min < usr.inven_max)
						usr << "You have picked up the: <u>[src]</u>."
						usr.inven_min += 1
						usr.n_db_7 = 1
					else
						usr << "No more room for items."
						return
				else
					usr << "You cannot pick up the [src]"

			Drop()
				set category = null
				src.loc = usr.loc
				usr << "You drop the [src]"
				usr.n_db_7 = 0

/obj/Black_Star_Dragonballs

	Black_Star_Dragonball_1
		name = "Black Star Dragonball 1"
		icon = 'BlackStarBalls.dmi'
		icon_state = "1"
		density = 0

		verb
			Summon_Omega_Shenron()
				set category = null
				usr.Summon_Omega_Shenron()

			Pick_Up()
				set src in oview(0)
				set category = null
				if(!usr.pk)
					usr << "You are not a Combatant!"
					return

				if(Move(usr))
					if(usr.inven_min < usr.inven_max)
						usr << "You have picked up the: <u>[src]</u>."
						usr.inven_min += 1
						usr.bs_db_1 = 1
					else
						usr << "No more room for items."
				else
					usr << "You cannot pick up the [src]"

			Drop()
				set category = null
				src.loc = usr.loc
				usr << "You drop the [src]"
				usr.bs_db_1 = 0

	Black_Star_Dragonball_2
		name = "Black Star Dragonball 2"
		icon = 'BlackStarBalls.dmi'
		icon_state = "2"
		density = 0

		verb
			Summon_Omega_Shenron()
				set category = null
				usr.Summon_Omega_Shenron()

			Pick_Up()
				set src in oview(0)
				set category = null
				if(!usr.pk)
					usr << "You are not a Combatant!"
					return

				if(Move(usr))
					if(usr.inven_min < usr.inven_max)
						usr << "You have picked up the: <u>[src]</u>."
						usr.inven_min += 1
						usr.bs_db_2 = 1
					else
						usr << "No more room for items."
				else
					usr << "You cannot pick up the [src]"

			Drop()
				set category = null
				src.loc = usr.loc
				usr << "You drop the [src]"
				usr.bs_db_2 = 0

	Black_Star_Dragonball_3
		name = "Black Star Dragonball 3"
		icon = 'BlackStarBalls.dmi'
		icon_state = "3"
		density = 0

		verb
			Summon_Omega_Shenron()
				set category = null
				usr.Summon_Omega_Shenron()

			Pick_Up()
				set src in oview(0)
				set category = null
				if(!usr.pk)
					usr << "You are not a Combatant!"
					return

				if(Move(usr))
					if(usr.inven_min < usr.inven_max)
						usr << "You have picked up the: <u>[src]</u>."
						usr.inven_min += 1
						usr.bs_db_3 = 1
					else
						usr << "No more room for items."
				else
					usr << "You cannot pick up the [src]"

			Drop()
				set category = null
				src.loc = usr.loc
				usr << "You drop the [src]"
				usr.bs_db_3 = 0

	Black_Star_Dragonball_4
		name = "Black Star Dragonball 4"
		icon = 'BlackStarBalls.dmi'
		icon_state = "4"
		density = 0

		verb
			Summon_Omega_Shenron()
				set category = null
				usr.Summon_Omega_Shenron()

			Pick_Up()
				set src in oview(0)
				set category = null
				if(!usr.pk)
					usr << "You are not a Combatant!"
					return

				if(Move(usr))
					if(usr.inven_min < usr.inven_max)
						usr << "You have picked up the: <u>[src]</u>."
						usr.inven_min += 1
						usr.bs_db_4 = 1
					else
						usr << "No more room for items."
				else
					usr << "You cannot pick up the [src]"

			Drop()
				set category = null
				src.loc = usr.loc
				usr << "You drop the [src]"
				usr.bs_db_4 = 0

	Black_Star_Dragonball_5
		name = "Black Star Dragonball 5"
		icon = 'BlackStarBalls.dmi'
		icon_state = "5"
		density = 0

		verb
			Summon_Omega_Shenron()
				set category = null
				usr.Summon_Omega_Shenron()

			Pick_Up()
				set src in oview(0)
				set category = null
				if(!usr.pk)
					usr << "You are not a Combatant!"
					return

				if(Move(usr))
					if(usr.inven_min < usr.inven_max)
						usr << "You have picked up the: <u>[src]</u>."
						usr.inven_min += 1
						usr.bs_db_5 = 1
					else
						usr << "No more room for items."
				else
					usr << "You cannot pick up the [src]"

			Drop()
				set category = null
				src.loc = usr.loc
				usr << "You drop the [src]"
				usr.bs_db_5 = 0

	Black_Star_Dragonball_6
		name = "Black Star Dragonball 6"
		icon = 'BlackStarBalls.dmi'
		icon_state = "6"
		density = 0

		verb
			Summon_Omega_Shenron()
				set category = null
				usr.Summon_Omega_Shenron()

			Pick_Up()
				set src in oview(0)
				set category = null
				if(!usr.pk)
					usr << "You are not a Combatant!"
					return

				if(Move(usr))
					if(usr.inven_min < usr.inven_max)
						usr << "You have picked up the: <u>[src]</u>."
						usr.inven_min += 1
						usr.bs_db_6 = 1
					else
						usr << "No more room for items."
				else
					usr << "You cannot pick up the [src]"

			Drop()
				set category = null
				src.loc = usr.loc
				usr << "You drop the [src]"
				usr.bs_db_6 = 0

	Black_Star_Dragonball_7
		name = "Black Star Dragonball 7"
		icon = 'BlackStarBalls.dmi'
		icon_state = "7"
		density = 0

		verb
			Summon_Omega_Shenron()
				set category = null
				usr.Summon_Omega_Shenron()

			Pick_Up()
				set src in oview(0)
				set category = null
				if(!usr.pk)
					usr << "You are not a Combatant!"
					return

				if(Move(usr))
					if(usr.inven_min < usr.inven_max)
						usr << "You have picked up the: <u>[src]</u>."
						usr.inven_min += 1
						usr.bs_db_7 = 1
					else
						usr << "No more room for items."
				else
					usr << "You cannot pick up the [src]"

			Drop()
				set category = null
				src.loc = usr.loc
				usr << "You drop the [src]"
				usr.bs_db_7 = 0