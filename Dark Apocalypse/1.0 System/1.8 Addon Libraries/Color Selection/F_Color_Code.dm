//*******************************************************************************/
//*
//*		I'm warning you, you don't want to look at this... it's not commented
//*		and my coding style is inefficient and downright ugly.  You'll be ruined for life.
//*		Really...  Well, I warned you.
//*
//*		Flick()
//*
//*******************************************************************************/

f_color_selector_handler
	proc

		Get_Color(mob/M)
			if(!M.client)
				return null
			var/f_color_selector/F = new()
			var/color = F.Get_Color_Sliders(M)
			del F
			return color


f_color_selector
	var
		list/sliders[0]
		list/f_background[0]
		obj/f_color_objects/F_button/F_OK
		obj/f_color_objects/current_rgb_text/Current_RGB_Text
		Current_RGB_Numbers
		Current_Colors
		Current_RGB
		Current_R = 0
		Current_B = 0
		Current_G = 0


	New()
		var/k
		var/l
		for(k=1, k<=6, k++)
			for(l = 1, l<= 4, l++)
				f_background["[k], [l]"] = new /obj/f_color_objects/background()
				var/obj/f_color_objects/background/BG = f_background["[k], [l]"]
				BG.icon = new /icon('F_Select_Background.dmi', "[k],[l]")
				BG.screen_loc = "[k+1], [1+l]"
				BG.layer = 7
		var/m
		for(m=0, m<4, m++)
			sliders["RED_[m]"] = new /obj/f_color_objects/color_slider()
			var/obj/f_color_objects/color_slider/CSR = sliders["RED_[m]"]
			CSR.position = m
			CSR.color = "RED"
			sliders["BLUE_[m]"] = new /obj/f_color_objects/color_slider()
			var/obj/f_color_objects/color_slider/CSB = sliders["BLUE_[m]"]
			CSB.position = m
			CSB.color = "BLUE"
			sliders["GREEN_[m]"] = new /obj/f_color_objects/color_slider()
			var/obj/f_color_objects/color_slider/CSG = sliders["GREEN_[m]"]
			CSG.position = m
			CSG.color = "GREEN"
			sliders["BACKGROUND_[m]"] = new /obj()
			var/obj/O = sliders["BACKGROUND_[m]"]
			O.icon = 'sliders_background.dmi'
			O.screen_loc = "[m + 3], 4"
		for(var/A in sliders)
			if(istype(sliders[A], /obj/f_color_objects/color_slider))
				var/obj/f_color_objects/color_slider/CS = sliders[A]
				CS.icon = new /icon('sliders.dmi', "[CS.color]_[CS.position +1]")
				CS.screen_loc = "[CS.position+3], 4"
				CS.My_Owner = src
		F_OK = new()
		F_OK.screen_loc = "6, 3"
		F_OK.My_Owner = src
		Current_RGB_Text = new()
		Current_RGB_Text.screen_loc = "4, 3"
		return ..()

	proc
		OK(mob/M)
			Hide(M)
			M.client.F_Color_Showing = FALSE

		Hide(mob/M)
			del Current_Colors
			del F_OK
			del Current_RGB_Text
			for(var/A in f_background)
				del f_background[A]
			for(var/A in sliders)
				del sliders[A]

		Update(color, value, mob/M)
			switch(color)
				if("RED")
					Current_R = value
					Current_RGB_Text.Update("RED", value)
				if("BLUE")
					Current_B = value
					Current_RGB_Text.Update("BLUE", value)
				if("GREEN")
					Current_G = value
					Current_RGB_Text.Update("GREEN", value)
			var/icon/I = new('blank.dmi')
			Current_RGB = rgb(Current_R, Current_G, Current_B)
			I.Blend(Current_RGB)
			var/obj/f_color_objects/current_color/CC = Current_Colors
			CC.icon = I

		Get_Color_Sliders(mob/M)
			while(M.client.F_Color_Showing)
				sleep(10)
			M.client.F_Color_Showing = TRUE
			Current_Colors = new /obj/f_color_objects/current_color()
			var/obj/f_color_objects/current_color/CC = Current_Colors
			CC.screen_loc = "3, 3"
			Current_RGB = rgb(0,0,0)
			Show_Sliders(M)
			while(M.client.F_Color_Showing)
				sleep(5)
			del Current_Colors
			return Current_RGB

		Show_Sliders(mob/M)
			M.client.screen += Current_Colors
			M.client.screen += F_OK
			M.client.screen += Current_RGB_Text
			for(var/A in f_background)
				M.client.screen += f_background[A]
			for(var/A in sliders)
				M.client.screen += sliders[A]




obj/f_color_objects

	current_rgb_text
		icon = 'numbers_ones.dmi'
		icon_state = "CODES_BACKGROUND"
		layer = 999
		var
			icon/red_overlay
			icon/green_overlay
			icon/blue_overlay

		proc
			num2alpha(var/N as num)
				switch(N)
					if(1)
						return "ONE"
					if(2)
						return "TWO"
					if(3)
						return "THREE"
					if(4)
						return "FOUR"
					if(5)
						return "FIVE"
					if(6)
						return "SIX"
					if(7)
						return "SEVEN"
					if(8)
						return "EIGHT"
					if(9)
						return "NINE"
					if(0)
						return "ZERO"

			Update(color, value)
				switch(color)
					if("RED")
						overlays -= red_overlay
						red_overlay = Get_Number_Overlay(value)
						red_overlay.Shift(NORTH, 20)
						overlays += red_overlay
					if("GREEN")
						overlays -= green_overlay
						green_overlay = Get_Number_Overlay(value)
						green_overlay.Shift(NORTH, 10)
						overlays += green_overlay
					if("BLUE")
						overlays -= blue_overlay
						blue_overlay = Get_Number_Overlay(value)
						overlays += blue_overlay

			Get_Number_Overlay(value)
				var/icon/total_overlay = new /icon('numbers_ones.dmi', "BLANK")
				if(value >= 100)
					var/icon/temp_icon = new('numbers_ones.dmi', num2alpha((value-(value%100))/100))
					temp_icon.Shift(WEST, 12)
					total_overlay.Blend(temp_icon, ICON_OVERLAY)
				if(value >= 10)
					var/icon/temp_icon = new('numbers_ones.dmi', num2alpha((value -(value-value%100) - value%10)/10))
					temp_icon.Shift(WEST, 6)
					total_overlay.Blend(temp_icon, ICON_OVERLAY)
				var/icon/I = new('numbers_ones.dmi', num2alpha((value - (value-value%10))))
				total_overlay.Blend(I, ICON_OVERLAY)
				return total_overlay

	current_color
		icon = 'blank.dmi'
		layer = 990
	color_slider
		layer = 990
		var
			color
			position
			f_color_selector/My_Owner

		MouseUp(location, icon_x, icon_y)
			My_Owner.Update(color, 2*(icon_x+(32 * position))-2, usr)
			switch(color)
				if("RED")
					del usr.client.F_Color_Red_Mark
					var/icon/I = new('selected_slider.dmi')
					I.Shift(4, icon_x)
					I.Shift(1, 20)
					usr.client.F_Color_Red_Mark = image(I, src, layer = 8)
					usr.client << usr.client.F_Color_Red_Mark
				if("GREEN")
					del usr.client.F_Color_Green_Mark
					var/icon/I = new('selected_slider.dmi')
					I.Shift(4, icon_x)
					I.Shift(1, 10)
					usr.client.F_Color_Green_Mark = image(I, src, layer = 8)
					usr.client << usr.client.F_Color_Green_Mark
				if("BLUE")
					del usr.client.F_Color_Blue_Mark
					var/icon/I = new('selected_slider.dmi')
					I.Shift(4, icon_x)
					usr.client.F_Color_Blue_Mark = image(I, src, layer = 8)
					usr.client << usr.client.F_Color_Blue_Mark
			return ..()

	background
		layer = 900

	F_button
		layer = 990
		var
			f_color_selector/My_Owner
		layer = 7
		icon='button.dmi'
		Click()
			flick("CLICKED", src)
			spawn(3)
				My_Owner.OK(usr)
			return ..()
var/f_color_selector_handler/F_Color_Selector
world
	New()
		spawn(1)
			if(!F_Color_Selector)
				F_Color_Selector = new()
		return ..()

client
	var
		F_Color_Showing = FALSE
		F_Color_Red_Mark
		F_Color_Blue_Mark
		F_Color_Green_Mark


/******************************************************************************
*
*		Well, if you actually read through that, you are braver than I thought
*		anyone would be.  If you have any comments on how to make things
*		more efficient, or any other ideas, page me or mail me at flick@gator.net
*
*
******************************************************************************/