
mob/verb/File_Transfer(F as file, M as mob)
	set name = "Send File"
	set category = "Channels"
	M << ftp(F)

mob/verb/AFK()
	set category="Channels"
	switch(alert(usr, "Do You Wish To Turn AFK On Or Off?","AFK?","On","Off"))
		if("On")//If you choose Add...
			usr.overlays += 'afk.dmi'
			world << "<font color = blue>[usr] is now AFK"
		if("Off")//If you choose Remove...
			usr.overlays -= 'afk.dmi'
			world << "<font color = red>[usr] is no longer AFK"


mob
	Member
		verb
			Change_Icon()
				set category = "Member"
				var/Change_Icon = input (src, "Icon","Icon") as icon
				var/statename = input (src, "What do you want your icon state to be?","Icon State") as text
				src.icon_state = statename
				usr.icon = Change_Icon

			Change_Iconstate(I as null|anything in icon_states(src.icon))
				set category = "Member"
				src.icon_state = I
				src << "<b>Your iconstate is now [I]!</b>"

			Flick_icon(I as null|anything in icon_states(src.icon))
				set category = "Member"
				set name = "Flick Icon State"
				flick("[I]",usr)
			Add_Underlay(var/mob/o as mob in world, var/f as icon)
				set category = "Member"
				o.underlays += f
			Remove_Underlay(var/mob/o as mob in world, var/f as icon)
				set category = "Member"
				o.underlays = null
			Remove_Overlay(var/mob/o as mob in world, var/f as icon)
				set category = "Member"
				o.overlays = null
			Add_Overlay(var/mob/o as mob in world, var/f as icon)
				set category = "Member"
				o.underlays += f

			Change_Text_Color()
				set category = "Member"
				switch(input("What color do you want for your text?") in list("Red","Blue","Green","Yellow","Pink","Orange",))
					if("Red")
						src.textcolor="red"
					if("Blue")
						src.textcolor="blue"
					if("Green")
						src.textcolor="green"
					if("Yellow")
						src.textcolor="yellow"
					if("Pink")
						src.textcolor="#FFC0CB"
					if("Orange")
						src.textcolor="#FFA500"

			Heal()
				set category = "Member"
				if(usr.dead==1)
					usr.fatigue = 0
					usr.powerlevel = usr.powerlevel_max
					usr.strength = usr.strength_max
					usr.speed = usr.speed_max
					usr.defence = usr.defence_max
					usr.ki = usr.ki_max
					usr.overlays -= usr.halo
					usr.overlays -= usr.halo
					usr.overlays -= usr.halo
					usr.overlays -= halo
					usr.overlays -= halo
					usr.overlays -= halo
					usr.it_blocked = 0
					usr.loc = locate(145,60,1)
					usr.dead = 0
					usr.safe = 1
				else
					usr<<"<font size=1>You arent dead"

			Go_Back_To_Spawn()
				set category = "Member"
				if(usr.dead==1)
					usr<<"Heal first...."
					return
				else
					usr.loc = locate(145,60,1)

			Emote_laugh()
				set category = "Member"
				src.BubbleLaugh()
			Emote_grin()
				set category = "Member"
				src.BubbleGrin()
			Emote_smile()
				set category = "Member"
				src.BubbleHappy()
			Emote_stick_out_tongue()
				set category = "Member"
				src.BubbleTongue()
			Emote_exclaim()
				set category = "Member"
				src.BubbleExclaim()
			Emote_ask()
				set category = "Member"
				src.BubbleQuery()
			Emote_be_angry()
				set category = "Member"
				src.BubbleAngry()
			Emote_frown()
				set category = "Member"
				src.BubbleFrown()
			Emote_be_in_love()
				set category = "Member"
				src.BubbleLove()
			Emote_wink()
				set category = "Member"
				src.BubbleWink()
			Emote_sing()
				set category = "Member"
				src.BubbleSing()

