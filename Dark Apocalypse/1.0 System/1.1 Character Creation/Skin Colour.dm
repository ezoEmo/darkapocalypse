mob/var/dark = 0
mob
	proc
		Skin()
			switch(input("Tint of your Skin: ???", "Customization", text) in list ("White","Tan","Dark"))

				if("White")
					src.icon = 'Male - White.dmi'
					src.skin = "white"

				if("Tan")
					src.icon = 'Male - Tan.dmi'
					src.skin = "tan"

				if("Dark")
					src.icon = 'Male - Dark.dmi'
					src.skin = "dark"
					src.dark = 1