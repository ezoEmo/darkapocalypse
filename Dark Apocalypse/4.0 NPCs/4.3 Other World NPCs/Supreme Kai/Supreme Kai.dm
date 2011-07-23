mob/NPC/

	Supreme_Kai
		name = "{NPC} Supreme Kai"
		icon = 'Supreme Kai.dmi'
		density = 1
		doing = 0
		safe = 1

		powerlevel = 100

		energy_code = 3317954

		New()
			src.CreateName()

		verb/Talk()
			set src in oview(1)
			set category = null

			if(!usr)return

			var/talk = input("King Kai: What do you need, [usr.name]?","") in list ("I want to go to King Kai's","Never Mind")

			switch(talk)

				if("Never Mind")
					return

				if("I want to go to King Kai's")
					usr << "<font color = white>Supreme Kai:</white> Very well"
					usr.loc = locate(105,92,3)