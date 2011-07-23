mob
	NPC

		Videl

			name = "{NPC} Videl"
			icon = 'Videl.dmi'
			density = 1
			safe = 1

			powerlevel = 100

			energy_code = 2245332

			New()
				src.CreateName()

			race = "Human"
			karma = "Good"

			verb
				Talk()
					set src in oview(1)
					usr.underlays -= usr.aura
					switch(input("Videl: What do you need?")in list("Change my Aura color","Never Mind"))

						if("Never Mind")
							return

						if("Change my Aura color")
							if(usr.learn_aura)
								usr.aura_on = 0
								var/icon/D = new('Aura.dmi')
								var/new_rgb = F_Color_Selector.Get_Color(usr)
								D.Blend(new_rgb)
								usr.aura = D
								usr.learn_aura = 1
							else
								usr << "<vont color = white>Videl:</font> You must first master your Aura before you can change it's colors!"
								return
