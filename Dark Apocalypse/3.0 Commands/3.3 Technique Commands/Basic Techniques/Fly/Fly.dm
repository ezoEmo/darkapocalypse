mob/var/buku = 0

mob/learn
	verb/Fly()
		set category = "Techniques"

		if(src.monkey)
			src << "You cannot Fly while in your oozaru form"
			return

		if(src.dead)
			src << "You cannot Fly while your dead"
			return

		if(src.donut_wrapped)
			return

		if(src.stone_form)
			return

		if(src.buku_lock)
			src << "You cannot Fly at the moment"
			return

		for(var/turf/Floors/Gravity_Floor/S in view(6))
			if(S in oview(6))
				usr << "The Gravity is too heavy here to Fly!"
				return

		if(src.buku)
			src << "You land on the ground from the sky"
			src.buku = 0
			src.density = 1
			src.doing = 0
			src.icon_state = ""
			src.afk_time = 0
			return
		else
			if(src.doing)
				return

			src.icon_state = "flight"
			src << "You lift off the ground and take for the sky"
			src.buku = 1
			src.density = 0
			src.doing = 1
			src.afk_time = 0
			return