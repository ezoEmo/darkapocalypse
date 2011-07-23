mob/learn
	verb/Kiai(mob/M in oview(6))
		set category = "Techniques"
		var/ki_cost = round(src.ki_max * 0.02)
		var/ki_damage = round(usr.level)

		if(src.doing)
			src << "You are already doing something!"
			return

		if(src.buku)
			return

		if(src.dead)
			return

		if(src.ki_lock)
			src << "Cannot use this Technique at his time"
			return

		if(M.safe)
			return

		if(M.dead)
			return

		if(M == usr)
			return

		if(!M.pk)
			usr << "They are not a Combatant!"
			return

		if(!usr.pk)
			usr << "You are not a Combatant!"
			return

		for(var/turf/Floors/Safe_Zone/S in view(6))
			if(S in view(8))
				usr << "They are in a Safe Zone!"
				return

		if(ki_damage <= 0)
			ki_damage = 10

		if(src.ki >= ki_cost)
			src.ki -= ki_cost
			var/FallDir = get_dir(src,M)
			src.dir = FallDir
			step(M,FallDir)
			switch(FallDir)
				if(NORTH)M.dir = SOUTH
				if(NORTHWEST)M.dir = SOUTHEAST
				if(WEST)M.dir = EAST
				if(SOUTHWEST)M.dir = NORTHEAST
				if(SOUTH)M.dir = NORTH
				if(SOUTHEAST)M.dir = NORTHWEST
				if(EAST)M.dir = WEST
				if(NORTHEAST)M.dir = SOUTHWEST
			sleep(5)
			M.powerlevel -= ki_damage
			M.DeathCheck(src)
			src.afk_time = 0
		else
			src << "You do not have enough Ki!"
			return