mob/var/bulma_quest_start = 0

mob
	NPC

		Bulma

			name = "{NPC} Bulma"
			icon = 'Bulma.dmi'
			density = 1
			safe = 1

			powerlevel = 100

			energy_code = 5534561

			New()
				src.CreateName()

			verb
				Talk()
					set src in oview(1)
					if(!usr.bulma_quest_start)
						usr << "<font color = white>Bulma:</font> Greetings [usr.name]. I've got an important job for you if your not busy?"
						sleep(15)
						switch(alert("You able to help me out?","Quest: Malfunction!","Yes","Not at the Moment"))
							if("Yes")
								if(usr.inven_min < usr.inven_max)
									usr.bulma_quest_start = 1
									usr.contents += new/obj/Quests/Bulma/Malfunction
									usr.contents += new/obj/Equipment/Consumable/Spanner
									usr << "<font color = white>Bulma:</font> Good to Hear! I'll need you to run this part over to my father, Dr Briefs at Capsule Corp"
								else
									usr << "<font color = white>Bulma:</font> You don't have any room in your Inventory!"
									return
							else
								usr << "<font color = white>Bulma:</font> Ohh, that's unfortunant to hear"
								return