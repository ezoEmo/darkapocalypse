mob/var/zanzoken = 0

mob/learn
	verb/Zanzoken()
		set category = "Techniques"

		if(usr.zanzoken)
			usr << "You stop using your Zanzoken Ability"
			usr.zanzoken = 0
			return
		else
			usr << "You start using your Zanzoken Ability"
			usr.zanzoken = 1
			return

client
	DblClick(O as obj)
		var/ki_cost = round(rand(5000,25000))

		if(usr.frozen)
			return
		if(usr.donut_wrapped)
			return
		if(usr.wrapped)
			return
		if(usr.GMLocked)
			return
		if(usr.dead)
			return
		if(usr.boxing)
			return
		if(usr.rest)
			return
		if(usr.zanzoken)
			if(istype(O,/mob/PC))
				return


			if(istype(O,/mob/NPC))
				return
			if(istype(O,/turf/Floors/No_Walking))
				return
			if(istype(O,/turf/SnakeWay/Clouds))
				return
			if(istype(O,/turf/SnakeWay/SnakeWay1))
				return
			if(istype(O,/turf/SnakeWay/SnakeWay2))
				return
			if(istype(O,/turf/SnakeWay/SnakeWay3))
				return
			if(istype(O,/turf/SnakeWay/SnakeWay4))
				return
			if(istype(O,/turf/SnakeWay/SnakeWay5))
				return
			if(istype(O,/turf/SnakeWay/SnakeWay6))
				return
			if(istype(O,/turf/SnakeWay/SnakeWay7))
				return
			if(istype(O,/turf/SnakeWay/SnakeWay8))
				return
			if(istype(O,/turf/Cliffs/Cliff_Wall_East))
				return
			if(istype(O,/turf/Cliffs/Cliff_Wall_West))
				return
			if(istype(O,/turf/Cliffs/Cliff_Wall_North))
				return
			if(istype(O,/turf/Cliffs/Cliff_Wall_South))
				return
			if(istype(O,/turf/Cliffs/Cliff_Wall_South_East))
				return
			if(istype(O,/turf/Cliffs/Cliff_Wall_South_West))
				return
			if(istype(O,/turf/Cliffs/Cliff_Wall_North_East))
				return
			if(istype(O,/turf/Cliffs/Cliff_Wall_North_West))
				return
			if(istype(O,/turf/Buildings/Wall))
				return
			if(istype(O,/turf/Buildings/Roof))
				return
			if(istype(O,/obj/Equipment))
				return
//			if(istype(O,/turf/area))
//				return

			if(usr.ki >= ki_cost)
				if(O in oview(12))
//					After_Image()
					flick("IT",usr)
					usr.ki -= ki_cost
					usr.z = O:z
					usr.x = O:x
					usr.y = O:y
					usr.afk_time = 0

			else
				usr << "You don't have enough Ki!"
				usr.afk_time = 0
				return

mob
	Monster

		After_Image

			name = ""
			density = 1
			dead = 0
			safe = 0

			powerlevel = 750
			powerlevel_max = 750

			ki = 0
			ki_max = 0

			speed = 5

			strength = 50
			defence = 15

			critical = 2

			karma = ""
			race = ""

			level = 15

			KO = 0

			zenni = 20

			frozen = 0

			cooldown = 0

			pk = 1

			exp = 100
			tnl = 100
proc
	After_Image()
		var/mob/Monster/After_Image/A = new /mob/Monster/After_Image

		A.icon = usr.icon
		A.name = usr.name
		A.powerlevel = usr.powerlevel
		A.ki = usr.ki
		A.defence = usr.defence
		A.strength = usr.strength
		A.safe = 1
		A.race = usr.race
		A.karma = usr.karma
		A.karma_rating = usr.karma_rating
		A.powerlevel_max = usr.powerlevel_max
		A.ki_max = usr.ki_max
		A.defence_max = usr.defence_max
		A.strength_max = usr.strength_max
		A.energy_code = usr.energy_code
		A.key = usr.key
		A.loc = locate(usr.x,usr.y,usr.z)
		A.level = usr.level
		A.critical = usr.critical
		A.block = usr.block
		A.reflect = usr.reflect
		A.counter = usr.counter
		A.dodge = usr.dodge
		A.owner = usr
		spawn(10) del A