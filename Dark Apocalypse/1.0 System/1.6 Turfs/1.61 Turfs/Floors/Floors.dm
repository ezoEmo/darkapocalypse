turf/Floors
	icon = 'Floors.dmi'
	name = ""

	Floor_HBTC
		icon_state = "HBTC"
		density = 0

	Floor_1_1
		icon_state = "floor 1-1"
		density = 0
	Floor_1_2
		icon_state = "floor 1-2"
		density = 0
	Floor_1_3
		icon_state = "floor 1-3"
		density = 0
	Floor_1_4
		icon_state = "floor 1-4"
		density = 0
	Floor_1_5
		icon_state = "floor 1-5"
		density = 0
	Floor_1_6
		icon_state = "floor 1-6"
		density = 0
	Floor_1_7
		icon_state = "wooden 1"
		density = 0
	Floor_1_8
		icon_state = "floor 1-7"
		density = 0
	Floor_1_9
		icon_state = "floor 100"
		density = 0
	Floor_2_9
		icon_state = "floor 101"
		density = 0
	All_Star_Chair
		icon_state = "#22"
		density = 0
	Chair
		icon_state = "#23"
		density = 0
	Gravity_Floor
		icon_state = "floor 1-5"
		density = 0
		Entered(var/mob/M)
			for(var/obj/Gravity_Room/Gravity_Control/C in view(24))
				if(!C.gravon)
					return
				else
					M.random = rand(30,55)
					M.powerlevel -= M.random * C.grav
					M.GRAVITYDeath()
					M.random = rand(10,50)
					if(!M.dead)
						var/bonus_exp = C.grav * 0.33
						if("exp_buff" in usr.buffs)
							bonus_exp = bonus_exp * 0.47
						M.exp += bonus_exp
						M.Level_Up()

	Guild_Gravity_Floor
		icon_state = "floor 1-5"
		density = 0
		Entered(var/mob/M)
			for(var/obj/Gravity_Room/Guild_Gravity_Control/C in view(24))
				if(!C.gravon)
					return
				else
					if(!usr.grav)
						M.random = rand(25,50)
						M.powerlevel -= M.random * C.grav
						M.GRAVITYDeath()
						M.random = rand(10,25)
						if(!M.dead)
							var/bonus_exp = C.grav * 0.33
							if("exp_buff" in usr.buffs)
								bonus_exp = bonus_exp * 0.47
							M.exp += bonus_exp
							M.Level_Up()
	No_Walking
		density = 1
		Enter()
			return

	Sidewalk_1_1
		icon_state = "sidewalk 1-1"
		density = 0
	Sidewalk_1_2
		icon_state = "sidewalk 1-2"
		density = 0
	Sidewalk_1_3
		icon_state = "sidewalk 1-3"
		density = 0
	Sidewalk_1_4
		icon_state = "sidewalk 1-4"
		density = 0
	Sidewalk_1_5
		icon_state = "sidewalk 1-5"
		density = 0
	Sidewalk_1_6
		icon_state = "sidewalk 1-6"
		density = 0

	Stairs
		icon_state = "stairs"
		density = 0

	Safe_Zone
		density = 0
		Entered(var/obj/O)
			if(istype(O,/obj/Kamehameha/))
				del(O)
			if(istype(O,/obj/Distructo_Disk/))
				del(O)
			if(istype(O,/obj/Fat_Wrap/))
				del(O)

	Monster_Detect
		density = 0
		Entered()
			if(istype(usr,/mob/Monster/))
				return

turf/Floors/Craters

	Crater_1
		icon_state = "crater top 1"
		density = 0
	Crater_2
		icon_state = "crater top 2"
		density = 0
	Crater_3
		icon_state = "crater top 3"
		density = 0
	Crater_4
		icon_state = "crater middle 1"
		density = 0
	Crater_5
		icon_state = "crater middle 2"
		density = 0
	Crater_6
		icon_state = "crater middle 3"
		density = 0
	Crater_7
		icon_state = "crater bottom 1"
		density = 0
	Crater_8
		icon_state = "crater bottom 2"
		density = 0
	Crater_9
		icon_state = "crater bottom 3"
		density = 0

	Crater_Small
		icon_state = "small crater"
		density = 0

/obj/techs/Overlays/Crater_Center

	icon = 'Floors.dmi'
	icon_state = "crater middle 2"
	density = 0

	New()
		src.overlays += new/obj/techs/Overlays/Crater_Top_Right
		src.overlays += new/obj/techs/Overlays/Crater_Top_Center
		src.overlays += new/obj/techs/Overlays/Crater_Top_Left
		src.overlays += new/obj/techs/Overlays/Crater_Middle_Left
		src.overlays += new/obj/techs/Overlays/Crater_Middle_Right
		src.overlays += new/obj/techs/Overlays/Crater_Bottom_Right
		src.overlays += new/obj/techs/Overlays/Crater_Bottom_Left
		src.overlays += new/obj/techs/Overlays/Crater_Bottom_Center
		spawn(100) del(src)

/obj/techs/Overlays/Crater_Top_Right

	icon = 'Floors.dmi'
	icon_state = "crater top 3"
	density = 0

	New()
		pixel_y = 32
		pixel_x = 32


/obj/techs/Overlays/Crater_Top_Center

	icon = 'Floors.dmi'
	icon_state = "crater top 2"
	density = 0

	New()
		pixel_y = 32
		pixel_x = 0


/obj/techs/Overlays/Crater_Top_Left

	icon = 'Floors.dmi'
	icon_state = "crater top 1"
	density = 0

	New()
		pixel_y = 32
		pixel_x = -32



/obj/techs/Overlays/Crater_Middle_Left

	icon = 'Floors.dmi'
	icon_state = "crater middle 1"
	density = 0

	New()
		pixel_x = -32


/obj/techs/Overlays/Crater_Middle_Right

	icon = 'Floors.dmi'
	icon_state = "crater middle 3"
	density = 0

	New()
		pixel_x = 32


/obj/techs/Overlays/Crater_Bottom_Right

	icon = 'Floors.dmi'
	icon_state = "crater bottom 3"
	density = 0

	New()
		pixel_x = 32
		pixel_y = -32


/obj/techs/Overlays/Crater_Bottom_Left

	icon = 'Floors.dmi'
	icon_state = "crater bottom 1"
	density = 0

	New()
		pixel_x = -32
		pixel_y = -32


/obj/techs/Overlays/Crater_Bottom_Center

	icon = 'Floors.dmi'
	icon_state = "crater bottom 2"
	density = 0

	New()
		pixel_y = -32

/obj/techs/Overlays/Crater_Small

	icon = 'Floors.dmi'
	icon_state = "small crater"
	density = 0

	New()
		pixel_y = -8
		spawn(100) del(src)