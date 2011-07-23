var/hudicon = 'DBRR.dmi'
obj/HUD
mob
	var
		hud = 1
	proc
		AddHUD()
			for(var/T in icon_states(hudicon))
				var/obj/D = new/obj/HUD
				D.layer = 20
				D.icon = hudicon
				D.icon_state = T
				D.screen_loc = T
				client.screen += D
		RemoveHUD()
			for(var/obj/HUD/H in client.screen)
				del H
mob/PC
	verb
		Toggle_HUD()
			set category = "Channels"
			if(hud)
				RemoveHUD()
				src << "You disable your hud."
				hud = 0
				return
			if(!hud)
				AddHUD()
				hud = 1
				src << "You enable your hud."
				return