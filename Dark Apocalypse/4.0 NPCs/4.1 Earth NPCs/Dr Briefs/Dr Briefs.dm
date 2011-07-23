mob/var/bulma_quest_complete = 0

mob
	NPC

		Dr_Briefs

			name = "{NPC} Dr Briefs"
			icon = 'Dr Briefs.dmi'
			density = 1
			safe = 1

			powerlevel = 100

			energy_code = 1242351

			New()
				src.CreateName()

			verb
				Talk()
					set src in oview(1)
					if(usr.bulma_quest_start && !usr.bulma_quest_complete)
						usr << "<font color = white>Dr Briefs:</font> Greetings [usr.name]. I see you've brought the part I requested off Bulma!"
						sleep(15)
						if(usr.inven_min < usr.inven_max)
							for(var/obj/Quests/Bulma/Malfunction/Q)
								del(Q)
							for(var/obj/Equipment/Consumable/Spanner/O)
								del(O)
							usr << "<font color = white>Dr Briefs:</font> Thanks for your help [usr.name]! Here's a little something for your Trouble"
							usr.bulma_quest_complete = 1
							usr.contents += new/obj/Equipment/Consumable/Capsule
						else
							usr << "<font color = white>Dr Briefs:</font> Your Inventory is Full!"
							return
					else
						usr << "<font color = white>Dr Briefs:</font> Sorry [usr.name], i'm busy at the moment"
						return