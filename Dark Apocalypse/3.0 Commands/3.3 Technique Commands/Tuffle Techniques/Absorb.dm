mob/var/infect_kill = 0

obj/Techniques/Tuffle/Absorb

	verb/Absorb(mob/M in get_step(usr,usr.dir))
		set category = "Techniques"
		set name = "Infect"
		if(!M)return

		if(usr.doing)
			usr << "You are doing something already!"
			return

		if(M.race == "Android")
			usr << "<font color=blue>Error: </font>[M] is completely mechanical, you cannot infect him!"
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
			usr.infect_kill ++
			usr.afk_time = 0