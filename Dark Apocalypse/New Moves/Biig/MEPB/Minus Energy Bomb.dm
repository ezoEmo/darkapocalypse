/obj/Techniques/Overlays/Minus_Energy_Center

	icon = 'Minus Energy.dmi'
	icon_state = "sb center"
	density = 0
	layer = 999

	New()
		pixel_y = 64
		pixel_x = 0

		src.overlays += new/obj/Techniques/Overlays/Minus_Energy_Top_Left
		src.overlays += new/obj/Techniques/Overlays/Minus_Energy_Top_Right
		src.overlays += new/obj/Techniques/Overlays/Minus_Energy_Top

		src.overlays += new/obj/Techniques/Overlays/Minus_Energy_Middle_Left
		src.overlays += new/obj/Techniques/Overlays/Minus_Energy_Middle_Right

		src.overlays += new/obj/Techniques/Overlays/Minus_Energy_Bottom_Left
		src.overlays += new/obj/Techniques/Overlays/Minus_Energy_Bottom_Right
		src.overlays += new/obj/Techniques/Overlays/Minus_Energy_Bottom








//------------------Top Spirit Bomb Overlays


/obj/Techniques/Overlays/Minus_Energy_Top_Left

	icon = 'Minus Energy.dmi'
	icon_state = "sb top 1"
	density = 0
	layer = 999

	New()
		pixel_y = 32
		pixel_x = -32


/obj/Techniques/Overlays/Minus_Energy_Top

	icon = 'Minus Energy.dmi'
	icon_state = "sb top 2"
	density = 0
	layer = 999

	New()
		pixel_y = 32
		pixel_x = 0


/obj/Techniques/Overlays/Minus_Energy_Top_Right

	icon = 'Minus Energy.dmi'
	icon_state = "sb top 3"
	density = 0
	layer = 999

	New()
		pixel_y = 32
		pixel_x = 32


//------------------Top Spirit Bomb Overlays




//------------------Center Spirit Bomb Overlays

/obj/Techniques/Overlays/Minus_Energy_Middle_Left

	icon = 'Minus Energy.dmi'
	icon_state = "sb side 1"
	density = 0
	layer = 999

	New()
		pixel_x = -32


/obj/Techniques/Overlays/Minus_Energy_Middle_Right

	icon = 'Minus Energy.dmi'
	icon_state = "sb side 2"
	density = 0
	layer = 999

	New()
		pixel_x = 32

//------------------Center Spirit Bomb Overlays



//------------------Bottom Spirit Bomb Overlays

/obj/Techniques/Overlays/Minus_Energy_Bottom_Left

	icon = 'Minus Energy.dmi'
	icon_state = "sb bottom 1"
	density = 0
	layer = 999

	New()
		pixel_y = -32
		pixel_x = -32


/obj/Techniques/Overlays/Minus_Energy_Bottom

	icon = 'Minus Energy.dmi'
	icon_state = "sb bottom 2"
	density = 0
	layer = 999

	New()
		pixel_y = -32
		pixel_x = 0


/obj/Techniques/Overlays/Minus_Energy_Bottom_Right

	icon = 'Minus Energy.dmi'
	icon_state = "sb bottom 3"
	density = 0
	layer = 999

	New()
		pixel_y = -32
		pixel_x = 32


/obj/Techniques/Overlays/Minus_Energy_Small

	icon = 'Minus Energy.dmi'
	icon_state = "small spirit bomb"
	density = 0
	layer = 999

	New()
		pixel_y = 64
		pixel_x = 0


mob/proc/Minus_Energy_strain()

	if(src.powerlevel <= 0)
		view(6) << "<font size=1><B><font color = red>[src.name] has knocked himself out!"
		KO()
	else
		return
mob

	var

		small_Minus_Energy = new/obj/Techniques/Overlays/Minus_Energy_Small
		big_Minus_Energy = new/obj/Techniques/Overlays/Minus_Energy_Center