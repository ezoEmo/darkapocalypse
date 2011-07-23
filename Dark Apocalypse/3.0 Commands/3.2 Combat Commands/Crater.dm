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