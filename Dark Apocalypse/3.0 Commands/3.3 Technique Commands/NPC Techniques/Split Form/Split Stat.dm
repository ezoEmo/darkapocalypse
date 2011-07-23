mob/var
	maker
	splits = 0



mob/learn
	verb/Split_Form()
		set name = "Split Form"
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
		if(src.level <800)
			if(src.splits >= 1)
				src << "You can only have 1 Split Form at a time."
				return
		else
			if(src.splits >= 2)
				src << "You can only have 2 Split Forms at a time."
				return

		var/ki_cost = round(src.ki_max)
		var/mob/Monster/Split_form/S = new/mob/Monster/Split_form
		if(src.ki >= ki_cost)
			view() << "[src.name] has created a Split Form!"
			src.ki -= ki_cost
			src.splits += 1
			S.loc = locate(usr.x+1,usr.y,usr.z)
			S.powerlevel = src.powerlevel_max/3
			S.level = src.level
			S.ki = src.ki_max/3
			S.strength = src.strength/3
			S.defence = src.defence/3
			S.speed = src.speed
			S.critical = src.critical/3
			S.block = src.block/3
			S.reflect = src.reflect/3
			S.counter = src.counter/3
			S.dodge = src.dodge/3

			S.maker = usr
			S.icon =usr.icon
			S.overlays = usr.overlays
			S.underlays = usr.underlays
			S.zanzoken = usr.zanzoken
			S.race = usr.race
			S.hair = usr.hair
mob/learn
	verb/Kill_Split()
		set category = "Techniques"
		for(var/mob/Monster/Split_form/S in world)
			if(S.maker == src)
				src.splits = 0
				src <<"You have summoned your Split back to you."
				del S
			..()