mob/NPC/Guild_War_Agent
	name = "{NPC} Guild War Agent"
	icon = 'Roshi.dmi'
	density = 1
	safe = 1

	powerlevel = 100

	New()
		src.CreateName()

	verb
		Talk()
			set category = "Actions"
			set src in oview(2)

			switch(alert("Greetings [usr.name]! Want to go back to earth?","Yes","No"))
				if("Yes")
					usr.loc = locate(72,210,1)
					return
				if("No")
					return






