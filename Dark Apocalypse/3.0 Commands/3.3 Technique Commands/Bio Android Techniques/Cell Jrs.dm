mob/var
	owner
	cell_jrs = 0


mob/learn
	verb/Createcell()
		set name = "Create Cell Jr"
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

		if(src.cell_jrs >= 3)
			src << "You can only have 3 cell jrs at a time."
			return

		var/ki_cost = round(src.ki_max)
		var/mob/Monster/Cell_Jr/B = new/mob/Monster/Cell_Jr
		if(src.ki >= ki_cost)
			view() << "[src.name] has created a cell jr!"
			src.ki -= ki_cost
			src.cell_jrs += 1
			B.loc = locate(usr.x+1,usr.y,usr.z)
			B.powerlevel = src.powerlevel_max/4
			B.level = src.level
			B.ki = src.ki_max/4
			B.strength = src.strength/4
			B.defence = src.defence/4
			B.speed = src.speed
			B.critical = src.critical/4
			B.block = src.block/4
			B.reflect = src.reflect/4
			B.counter = src.counter/4
			B.dodge = src.dodge/4
			B.owner = usr
