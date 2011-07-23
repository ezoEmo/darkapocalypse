mob/var/bulma_quest2_start = 0
mob/var/bulma_quest2_complete = 0
mob/var/killed_cell = 0
mob
	NPC
		Future_Bulma

			name = "{NPC} Future Bulma"
			icon = 'Bulma.dmi'
			density = 1
			safe = 1

			powerlevel = 100
			it_lock = 1

			New()
				src.CreateName()

			verb
				Talk_To_Bulma()
					set src in oview(1)
					if(!usr.bulma_quest2_start)
						usr << "<font color = white>Bulma:</font> Oh my! [usr] you are the one trunks sent arent you?"
						sleep(15)
						switch(alert("Cell is trying to steal the space ship?","Quest: Time Emergency!","Yes","Not at the Moment"))
							if("Yes")
								usr.bulma_quest2_start = 1
								usr.contents += new/obj/Quests/Future_Bulma/Time_Emergency
								usr << "<font color = white>Bulma:</font> Thank you! The last time I saw cell, he was around building."
							else
								usr << "<font color = white>Bulma:</font> Ohh, well I guess we will have to wait for Trunks. "
								return
					else
						if(!usr.bulma_quest2_complete)
							if(usr.killed_cell)
								usr.bulma_quest2_complete = 1
								usr << "<font color = white>Bulma:</font> Thanks [usr.name]! We are very grateful to you, for saving us."
								usr << "<font color = white>Bulma:</font> Take this old radar I have, maybe it will still work in your time and help you out."
								usr.contents += new/obj/Equipment/Consumable/Namek_Radar
								usr << "<font color=white><center>..:: You've obtained Namek Radar ::..</center></font>"
								usr.zenni += 50000

								for(var/obj/Quests/Future_Bulma/Time_Emergency/Q)
									del(Q)
							else
								usr << "<font color = white>Bulma:</font> Cell is still alive, can you please kill him!"
								return