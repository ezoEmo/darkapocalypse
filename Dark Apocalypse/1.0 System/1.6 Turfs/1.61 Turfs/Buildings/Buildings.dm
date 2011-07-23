turf/AllStarChair
	icon = 'All star chair.dmi'
	name = ""

	Ch1
		icon_state = "ch1"
		density = 1
		Enter()
			return

	Ch2
		icon_state = "ch2"
		density = 1
		Enter()
			return
	Ch3
		icon_state = "ch3"
		density = 1
		Enter()
			return
	Ch4
		icon_state = "ch4"
		density = 1
		Enter()
			return
	Ch5
		icon_state = "ch5"
		density = 1
		Enter()
			return
	Ch6
		icon_state = "ch6"
		density = 1
		Enter()
			return
	Ch7
		icon_state = "ch7"
		density = 1
		Enter()
			return
	Ch8
		icon_state = "ch8"
		density = 1
		Enter()
			return
	Ch9
		icon_state = "ch9"
		density = 1
		Enter()
			return
	Ch10
		icon_state = "ch10"
		density = 1
		Enter()
			return
	Ch11
		icon_state = "ch11"
		density = 1
		Enter()
			return
	Ch12
		icon_state = "ch12"
		density = 1
		Enter()
			return
	Ch13
		icon_state = "ch13"
		density = 1
		Enter()
			return
	Ch14
		icon_state = "ch14"
		density = 1
		Enter()
			return
	Ch15
		icon_state = "ch15"
		density = 1
		Enter()
			return
	Ch16
		icon_state = "ch16"
		density = 1
		Enter()
			return
	Ch17
		icon_state = "ch17"
		density = 1
		Enter()
			return






turf/Buildings
	icon = 'Buildings.dmi'
	name = ""

	Roof
		icon_state = "roof"
		density = 1
		Enter()
			return
	Wall
		icon_state = "wall"
		density = 1

	Red_Wall
		icon_state = "redwall"
		density = 1

	Steel_Wall
		icon_state = "steelwall"
		density = 1

	CC_Logo
		icon_state = "cc logo"
		density = 1

	CC_Logo_1
		icon_state = "1"
		density = 1

	CC_Logo_2
		icon_state = "2"
		density = 1

	CC_Logo_3
		icon_state = "3"
		density = 1

	CC_Logo_4
		icon_state = "4"
		density = 1

	CC_Logo_5
		icon_state = "5"
		density = 1

	CC_Logo_6
		icon_state = "6"
		density = 1

	CC_Logo_7
		icon_state = "7"
		density = 1

	CC_Logo_8
		icon_state = "8"
		density = 1

	CC_Logo_9
		icon_state = "9"
		density = 1

	Stairs_Down
		density = 0
		icon_state = "stairs down"

	Stairs_Up
		density = 0
		icon_state = "stairs up"

	Window
		density = 1
		icon_state = "window"

		Border
		name = ""
		density = 1
		icon_state = "border"

	Wall1
		name = "Wall"
		density = 1
		icon_state = "wall 1"

	Wall2
		name = "Wall"
		density = 1
		icon_state = "wall 2"

	Wall3
		name = "Wall"
		density = 1
		icon_state = "wall 3"

	Wall4
		name = "Wall"
		density = 1
		icon_state = "wall 4"

	Wall5
		name = "Wall"
		density = 1
		icon_state = "wall 5"

	Wall6
		name = "Wall"
		density = 1
		icon_state = "wall 6"

	Wall7
		name = "Wall"
		density = 1
		icon_state = "wall 7"

	Kame_Wall
		name = "Kame House Wall"
		density = 1
		icon_state = "kame house"



mob
    see_invisible = 0

obj/Buildings
	Kame_Roof
		icon = 'Buildings.dmi'
		icon_state = "kame roof"
		invisibility = 1
		layer = 12

obj/Buildings
	Roof
		icon = 'Buildings.dmi'
		icon_state = "roof"
		invisibility = 1
		layer = 12

area
    house
        Entered(mob/PC/M)
            if(ismob(M))
                M.see_invisible = 0
        Exited(mob/PC/M)
            if(ismob(M))
                M.see_invisible = 1