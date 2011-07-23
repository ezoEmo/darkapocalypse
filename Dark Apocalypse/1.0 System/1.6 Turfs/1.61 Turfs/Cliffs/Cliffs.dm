turf/Cliffs
	name = ""
	icon = 'Cliffs.dmi'

	Cliff_Entrance
		icon_state = "cliff entrance"
		density = 0

	Shadow_1
		icon_state = "shadow 1"
		density = 0

	Shadow_2
		icon_state = "shadow 2"
		density = 0

	Cliff_001
		icon_state = "001"
		density = 0

	Cliff_002
		icon_state = "002"
		density = 0

	Cliff_003
		icon_state = "003"
		density = 0

	Cliff_004
		icon_state = "004"
		density = 0

	Cliff_005
		icon_state = "005"
		density = 0

	Cliff_006
		icon_state = "006"
		density = 0

	Cliff_007
		icon_state = "007"
		density = 0


	Cliff_008
		icon_state = "008"
		density = 0

	Cliff_009
		icon_state = "009"
		density = 0

	Cliff_010
		icon_state = "010"
		density = 0

	Cliff_011
		icon_state = "011"
		density = 1

	Cliff_012
		icon_state = "cliff down"
		density = 1

	Cliff_013
		icon_state = "cliff down 2"
		density = 1

//To see what cliff walls you are adding to the map, change their
//icon states to the ones referenced to in Cliffs.dmi
	Cliff_Wall_East
		beast = 1
		icon_state = "beast"
		density = 1
		New()
			icon_state = null

		Enter()
			if(usr.buku)
				return 0

	Cliff_Wall_West
		bwest = 1
		icon_state = "bwest"
		density = 1
		New()
			icon_state = null

		Enter()
			if(usr.buku)
				return 0

	Cliff_Wall_North
		bnorth = 1
		icon_state = "bnorth"
		density = 1
		New()
			icon_state = null

		Enter()
			if(usr.buku)
				return 0

	Cliff_Wall_South
		bsouth = 1
		icon_state = "bsouth"
		density = 1
		New()
			icon_state = null

		Enter()
			if(usr.buku)
				return 0

	Cliff_Wall_South_West
		bsouth = 1
		bwest = 1
		icon_state = "bsouthwest"
		density = 1
		New()
			icon_state = null

		Enter()
			if(usr.buku)
				return 0

	Cliff_Wall_South_East
		bsouth = 1
		beast = 1
		icon_state = "bsoutheast"
		density = 1
		New()
			icon_state = null

		Enter()
			if(usr.buku)
				return 0

	Cliff_Wall_North_West
		bnorth = 1
		bwest = 1
		icon_state = "bnorthwest"
		density = 1
		New()
			icon_state = null

		Enter()
			if(usr.buku)
				return 0

	Cliff_Wall_North_East
		bnorth = 1
		beast = 1
		icon_state = "bnortheast"
		density = 1
		New()
			icon_state = null

		Enter()
			if(usr.buku)
				return 0

turf
	var/bnorth = 0
	var/bsouth = 0
	var/beast = 0
	var/bwest = 0
	var/gnorth = 0
	var/gsouth = 0
	var/geast = 0
	var/gwest = 0

	Enter(mob/M as mob)//This one means if you try to enter and one of the cases is true

		if(ismob(M))
			if(M.buku)
				return 1

			if(src.gnorth&&M.dir==NORTH)
				return
			else if(src.gsouth&&M.dir==SOUTH)
				return
			else if(src.geast&&M.dir==EAST)
				return
			else if(src.gwest&&M.dir==WEST)
				return

			else
				return..()
		else
			return..()

	Exit(mob/M as mob)//This one means if you try to exit and one of the cases is true

		if(ismob(M))
			if(M.buku)
				return 1

			if(src.bnorth&&M.dir==NORTH)
				return
			else if(src.bsouth&&M.dir==SOUTH)
				return
			else if(src.beast&&M.dir==EAST)
				return
			else if(src.bwest&&M.dir==WEST)
				return

			else
				return..()
		else
			return..()
