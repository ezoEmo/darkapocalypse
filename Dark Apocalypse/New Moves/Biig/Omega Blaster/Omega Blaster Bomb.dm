/obj/Techniques/Overlays/Omega_Blaster_Center

	icon = 'Omega Blaster.dmi'
	icon_state = "sb center"
	density = 0
	layer = 999

	New()
		pixel_y = 64
		pixel_x = 0

		src.overlays += new/obj/Techniques/Overlays/Omega_Blaster_Top_Left
		src.overlays += new/obj/Techniques/Overlays/Omega_Blaster_Top_Right
		src.overlays += new/obj/Techniques/Overlays/Omega_Blaster_Top

		src.overlays += new/obj/Techniques/Overlays/Omega_Blaster_Middle_Left
		src.overlays += new/obj/Techniques/Overlays/Omega_Blaster_Middle_Right

		src.overlays += new/obj/Techniques/Overlays/Omega_Blaster_Bottom_Left
		src.overlays += new/obj/Techniques/Overlays/Omega_Blaster_Bottom_Right
		src.overlays += new/obj/Techniques/Overlays/Omega_Blaster_Bottom








//------------------Top Spirit Bomb Overlays


/obj/Techniques/Overlays/Omega_Blaster_Top_Left

	icon = 'Omega Blaster.dmi'
	icon_state = "sb top 1"
	density = 0
	layer = 999

	New()
		pixel_y = 32
		pixel_x = -32


/obj/Techniques/Overlays/Omega_Blaster_Top

	icon = 'Omega Blaster.dmi'
	icon_state = "sb top 2"
	density = 0
	layer = 999

	New()
		pixel_y = 32
		pixel_x = 0


/obj/Techniques/Overlays/Omega_Blaster_Top_Right

	icon = 'Omega Blaster.dmi'
	icon_state = "sb top 3"
	density = 0
	layer = 999

	New()
		pixel_y = 32
		pixel_x = 32


//------------------Top Spirit Bomb Overlays




//------------------Center Spirit Bomb Overlays

/obj/Techniques/Overlays/Omega_Blaster_Middle_Left

	icon = 'Omega Blaster.dmi'
	icon_state = "sb side 1"
	density = 0
	layer = 999

	New()
		pixel_x = -32


/obj/Techniques/Overlays/Omega_Blaster_Middle_Right

	icon = 'Omega Blaster.dmi'
	icon_state = "sb side 2"
	density = 0
	layer = 999

	New()
		pixel_x = 32

//------------------Center Spirit Bomb Overlays



//------------------Bottom Spirit Bomb Overlays

/obj/Techniques/Overlays/Omega_Blaster_Bottom_Left

	icon = 'Omega Blaster.dmi'
	icon_state = "sb bottom 1"
	density = 0
	layer = 999

	New()
		pixel_y = -32
		pixel_x = -32


/obj/Techniques/Overlays/Omega_Blaster_Bottom

	icon = 'Omega Blaster.dmi'
	icon_state = "sb bottom 2"
	density = 0
	layer = 999

	New()
		pixel_y = -32
		pixel_x = 0


/obj/Techniques/Overlays/Omega_Blaster_Bottom_Right

	icon = 'Omega Blaster.dmi'
	icon_state = "sb bottom 3"
	density = 0
	layer = 999

	New()
		pixel_y = -32
		pixel_x = 32


/obj/Techniques/Overlays/Omega_Blaster_Small

	icon = 'Omega Blaster.dmi'
	icon_state = "small spirit bomb"
	density = 0
	layer = 999

	New()
		pixel_y = 64
		pixel_x = 0


mob/proc/Omega_Blaster_strain()

	if(src.powerlevel <= 0)
		view(6) << "<font size=1><B><font color = red>[src.name] has knocked himself out!"
		KO()
	else
		return
mob

	var

		small_Omega_Blaster = new/obj/Techniques/Overlays/Omega_Blaster_Small
		big_Omega_Blaster = new/obj/Techniques/Overlays/Omega_Blaster_Center