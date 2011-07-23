/obj/Techniques/Overlays/CasA_Center

	icon = 'CasA.dmi'
	icon_state = "sb center"
	density = 0


	New()
		pixel_y = 0
		pixel_x = 0

		src.overlays += new/obj/Techniques/Overlays/CasA_Top_Left
		src.overlays += new/obj/Techniques/Overlays/CasA_Top_Right
		src.overlays += new/obj/Techniques/Overlays/CasA_Top

		src.overlays += new/obj/Techniques/Overlays/CasA_Middle_Left
		src.overlays += new/obj/Techniques/Overlays/CasA_Middle_Right

		src.overlays += new/obj/Techniques/Overlays/CasA_Bottom_Left
		src.overlays += new/obj/Techniques/Overlays/CasA_Bottom_Right
		src.overlays += new/obj/Techniques/Overlays/CasA_Bottom








//------------------Top Spirit Bomb Overlays


/obj/Techniques/Overlays/CasA_Top_Left

	icon = 'CasA.dmi'
	icon_state = "sb top 1"
	density = 0
	layer = 999

	New()
		pixel_y = 32
		pixel_x = -32


/obj/Techniques/Overlays/CasA_Top

	icon = 'CasA.dmi'
	icon_state = "sb top 2"
	density = 0
	layer = 999

	New()
		pixel_y = 32
		pixel_x = 0


/obj/Techniques/Overlays/CasA_Top_Right

	icon = 'CasA.dmi'
	icon_state = "sb top 3"
	density = 0
	layer = 999

	New()
		pixel_y = 32
		pixel_x = 32


//------------------Top Spirit Bomb Overlays




//------------------Center Spirit Bomb Overlays

/obj/Techniques/Overlays/CasA_Middle_Left

	icon = 'CasA.dmi'
	icon_state = "sb side 1"
	density = 0
	layer = 999

	New()
		pixel_x = -32


/obj/Techniques/Overlays/CasA_Middle_Right

	icon = 'CasA.dmi'
	icon_state = "sb side 2"
	density = 0
	layer = 999

	New()
		pixel_x = 32

//------------------Center Spirit Bomb Overlays



//------------------Bottom Spirit Bomb Overlays

/obj/Techniques/Overlays/CasA_Bottom_Left

	icon = 'CasA.dmi'
	icon_state = "sb bottom 1"
	density = 0
	layer = 999

	New()
		pixel_y = 64
		pixel_x = -32


/obj/Techniques/Overlays/CasA_Bottom

	icon = 'CasA.dmi'
	icon_state = "sb bottom 2"
	density = 0
	layer = 999

	New()
		pixel_y = 64
		pixel_x = 0


/obj/Techniques/Overlays/CasA_Bottom_Right

	icon = 'CasA.dmi'
	icon_state = "sb bottom 3"
	density = 0
	layer = 999

	New()
		pixel_y = 64
		pixel_x = 32


/obj/Techniques/Overlays/CasA_Small

	icon = 'CasA.dmi'
	icon_state = "small spirit bomb"
	density = 0
	layer = 999

	New()
		pixel_y = 64
		pixel_x = 0


mob/proc/CasA_strain()

	if(src.powerlevel <= 0)
		view(6) << "<font size=1><B><font color = red>[src.name] has knocked himself out!"
		KO()
	else
		return
mob

	var

		small_CasA = new/obj/Techniques/Overlays/CasA_Small
		big_CasA = new/obj/Techniques/Overlays/CasA_Center