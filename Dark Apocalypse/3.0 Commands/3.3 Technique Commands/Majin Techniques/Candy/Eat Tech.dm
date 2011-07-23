mob/learn/Majin

	verb/Candy_Ray(mob/M in oview(1))
		set category = "Techniques"
		if(usr.pk == 0)
			src << "you must be a combatant to engage in combat with other players!"
			return
		if(M.pk == 0)
			src << "[M] must be a combatant to engage in combat with other players!"
			return

		if(M.race == "Android")
			usr << "<font color=blue>Error: </font>[M] is completely mechanical, you cannot convert him!"
			return

		if(usr.doing == 1)
			usr << "You are already doing something"
			return
		if(M.safe == 1)
			usr << "[M] is currently safe, you cannot attack him yet!"
			return
		if(usr.safe)
			usr << "You are currently Safe and cannot Attack!"
			return

		if(usr.buku == 1)
			return

		if(M.dead == 1)
			return

		if(M.safe == 1)
			return


		if(M.KO == 1)

			var/obj/Equipment/Candy_Obj/O=new
			usr.doing = 1
			O.name = "[M.name] Candy"
			if(istype(M,/mob/PC))
				O.powerlevel_bonus = round(M.level * 10)
				M.powerlevel_max -= O.powerlevel_bonus
			O.loc = M.loc
			M.CandyDeathCheck(src)
			spawn(20) usr.doing = 0
			return


