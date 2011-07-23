obj/Buildings
	icon = 'Buildings.dmi'
	name = ""

	Door_1
		density = 1
		icon_state = "door 1-1"
		var/open = 0
		layer = 5
		Bumped()
			if(!src.open)
				src.icon_state = "door 1-2"
				src.density = 0
				sleep(30)
				src.icon_state = "door 1-1"
				src.density = 1
		Enter()
			if(!src.open)
				return

	Door_2
		density = 1
		icon_state = "door 2-1"
		var/open = 0
		layer = 5
		Bumped()
			if(!src.open)
				src.icon_state = "door 2-2"
				src.density = 0
				sleep(30)
				src.icon_state = "door 2-1"
				src.density = 1
		Enter()
			if(!src.open)
				return


	Door_3
		density = 1
		icon_state = "door 2-2"
