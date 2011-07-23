/obj/Techniques/Overlays/Supernova_Center

	icon = 'Supernova.dmi'
	icon_state = "sb center"
	density = 0
	layer = 999

	New()
		pixel_y = 64
		pixel_x = 0

		src.overlays += new/obj/Techniques/Overlays/Supernova_Top_Left
		src.overlays += new/obj/Techniques/Overlays/Supernova_Top_Right
		src.overlays += new/obj/Techniques/Overlays/Supernova_Top

		src.overlays += new/obj/Techniques/Overlays/Supernova_Middle_Left
		src.overlays += new/obj/Techniques/Overlays/Supernova_Middle_Right

		src.overlays += new/obj/Techniques/Overlays/Supernova_Bottom_Left
		src.overlays += new/obj/Techniques/Overlays/Supernova_Bottom_Right
		src.overlays += new/obj/Techniques/Overlays/Supernova_Bottom








//------------------Top Spirit Bomb Overlays


/obj/Techniques/Overlays/Supernova_Top_Left

	icon = 'Supernova.dmi'
	icon_state = "sb top 1"
	density = 0
	layer = 999

	New()
		pixel_y = 32
		pixel_x = -32


/obj/Techniques/Overlays/Supernova_Top

	icon = 'Supernova.dmi'
	icon_state = "sb top 2"
	density = 0
	layer = 999

	New()
		pixel_y = 32
		pixel_x = 0


/obj/Techniques/Overlays/Supernova_Top_Right

	icon = 'Supernova.dmi'
	icon_state = "sb top 3"
	density = 0
	layer = 999

	New()
		pixel_y = 32
		pixel_x = 32


//------------------Top Spirit Bomb Overlays




//------------------Center Spirit Bomb Overlays

/obj/Techniques/Overlays/Supernova_Middle_Left

	icon = 'Supernova.dmi'
	icon_state = "sb side 1"
	density = 0
	layer = 999

	New()
		pixel_x = -32


/obj/Techniques/Overlays/Supernova_Middle_Right

	icon = 'Supernova.dmi'
	icon_state = "sb side 2"
	density = 0
	layer = 999

	New()
		pixel_x = 32

//------------------Center Spirit Bomb Overlays



//------------------Bottom Spirit Bomb Overlays

/obj/Techniques/Overlays/Supernova_Bottom_Left

	icon = 'Supernova.dmi'
	icon_state = "sb bottom 1"
	density = 0
	layer = 999

	New()
		pixel_y = -32
		pixel_x = -32


/obj/Techniques/Overlays/Supernova_Bottom

	icon = 'Supernova.dmi'
	icon_state = "sb bottom 2"
	density = 0
	layer = 999

	New()
		pixel_y = -32
		pixel_x = 0


/obj/Techniques/Overlays/Supernova_Bottom_Right

	icon = 'Supernova.dmi'
	icon_state = "sb bottom 3"
	density = 0
	layer = 999

	New()
		pixel_y = -32
		pixel_x = 32


/obj/Techniques/Overlays/Supernova_Small

	icon = 'Supernova.dmi'
	icon_state = "small spirit bomb"
	density = 0
	layer = 999

	New()
		pixel_y = 64
		pixel_x = 0


mob/proc/Supernova_strain()

	if(src.powerlevel <= 0)
		view(6) << "<font size=1><B><font color = red>[src.name] has knocked himself out!"
		KO()
	else
		return
mob

	var

		small_Supernova = new/obj/Techniques/Overlays/Supernova_Small
		big_Supernova = new/obj/Techniques/Overlays/Supernova_Center