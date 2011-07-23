/obj/Techniques/Overlays/Freezing_Corkscrew_Center

	icon = 'Freezing Cork.dmi'
	icon_state = ""
	density = 0

	New()
		pixel_y = 0
		pixel_x = 0

		src.overlays += new/obj/Techniques/Overlays/Freezing_Corkscrew_Top_Left
		src.overlays += new/obj/Techniques/Overlays/Freezing_Corkscrew_Top_Right
		src.overlays += new/obj/Techniques/Overlays/Freezing_Corkscrew_Top

		src.overlays += new/obj/Techniques/Overlays/Freezing_Corkscrew_Middle_Left
		src.overlays += new/obj/Techniques/Overlays/Freezing_Corkscrew_Middle_Right

		src.overlays += new/obj/Techniques/Overlays/Freezing_Corkscrew_Bottom_Left
		src.overlays += new/obj/Techniques/Overlays/Freezing_Corkscrew_Bottom_Right
		src.overlays += new/obj/Techniques/Overlays/Freezing_Corkscrew_Bottom








//------------------Top Spirit Bomb Overlays


/obj/Techniques/Overlays/Freezing_Corkscrew_Top_Left

	icon = 'Freezing Cork.dmi'
	icon_state = "sb top 1"
	density = 0

	New()
		pixel_y = 32
		pixel_x = -32


/obj/Techniques/Overlays/Freezing_Corkscrew_Top

	icon = 'Freezing Cork.dmi'
	icon_state = "sb top 2"
	density = 0

	New()
		pixel_y = 32
		pixel_x = 0


/obj/Techniques/Overlays/Freezing_Corkscrew_Top_Right

	icon = 'Freezing Cork.dmi'
	icon_state = "sb top 3"
	density = 0

	New()
		pixel_y = 32
		pixel_x = 32


//------------------Top Spirit Bomb Overlays




//------------------Center Spirit Bomb Overlays

/obj/Techniques/Overlays/Freezing_Corkscrew_Middle_Left

	icon = 'Freezing Cork.dmi'
	icon_state = "sb side 1"
	density = 0

	New()
		pixel_x = -32


/obj/Techniques/Overlays/Freezing_Corkscrew_Middle_Right

	icon = 'Freezing Cork.dmi'
	icon_state = "sb side 2"
	density = 0
	New()
		pixel_x = 32

//------------------Center Spirit Bomb Overlays



//------------------Bottom Spirit Bomb Overlays

/obj/Techniques/Overlays/Freezing_Corkscrew_Bottom_Left

	icon = 'Freezing Cork.dmi'
	icon_state = "sb bottom 1"
	density = 0

	New()
		pixel_y = -32
		pixel_x = -32


/obj/Techniques/Overlays/Freezing_Corkscrew_Bottom

	icon = 'Freezing Cork.dmi'
	icon_state = "sb bottom 2"
	density = 0

	New()
		pixel_y = -32
		pixel_x = 0


/obj/Techniques/Overlays/Freezing_Corkscrew_Bottom_Right

	icon = 'Freezing Cork.dmi'
	icon_state = "sb bottom 3"
	density = 0

	New()
		pixel_y = -32
		pixel_x = 32


/obj/Techniques/Overlays/Freezing_Corkscrew_Small

	icon = 'Freezing Cork.dmi'
	icon_state = "small spirit bomb"
	density = 0

	New()
		pixel_y = 64
		pixel_x = 0


mob/proc/Freezing_Corkscrew_strain()

	if(src.powerlevel <= 0)
		view(6) << "<font size=1><B><font color = red>[src.name] has knocked himself out!"
		KO()
	else
		return
mob

	var

		small_Freezing_Corkscrew = new/obj/Techniques/Overlays/Freezing_Corkscrew_Small
		big_Freezing_Corkscrew = new/obj/Techniques/Overlays/Freezing_Corkscrew_Center