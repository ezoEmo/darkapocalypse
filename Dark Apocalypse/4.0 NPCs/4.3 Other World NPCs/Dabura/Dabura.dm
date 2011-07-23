mob/var/dabura_quest_start = 0
mob/var/dabura_quest_complete = 0
mob/var/killed_vegito = 0
mob/NPC/

	Dabura
		name = "{NPC} Dabura"
		icon = 'Dabura.dmi'
		density = 1
		doing = 0
		safe = 1

		powerlevel = 100

		energy_code = 2234155

		New()
			src.CreateName()

		verb/Talk()
			set src in oview(1)
			set category = null
			switch(input("Dbura: What do you want [usr]?")in list("Send back to Snake Way","Quest","Nothing"))
				if("Send back to Snake Way")
					if(!usr)return
					if(usr.level >= 10)
						if(usr.karma == "Evil" && usr.karma_rating >= 25)
							if(usr.learn_DB == 0)
								if(prob(15))
									usr.learn_DB = 1
									usr << "<font color=white>Dabura: </font>Here my minion, this will help you..."
									sleep(10)
									usr << "<center><font color=white>.:: You Learn Death Ball ::.</font></center>"
									usr.verbs += new/mob/learn/verb/Death_Ball
									sleep(10)

						usr << "<font color = white>Dabura:</font> Go back to Snake Way..."
						usr.loc = locate(44,25,3)
					else
						usr << "<font color = white>Dabura:</font> Your not even strong enough to go back to Snake Way...Train some more..."
						return

				if("Quest")
					if(usr.karma == "Evil")
						if(!usr.dabura_quest_start)
							usr << "<font color = white>Dabura:</font> [usr.name] I got a job for you, do you think you can do this?!"
							sleep(10)
							switch(alert("Are you Ready?","Quest: The End","Yes","Not Yet"))
								if("Yes")
									usr.dabura_quest_start = 1
									usr.contents += new/obj/Quests/Dabura/The_End
									usr << "<font color = white>Dabura:</font> Do my bidding and you shall be rewarded."
								else
									return
						else
							if(!usr.dabura_quest_complete)
								if(usr.killed_vegito && usr.karma == "Evil" && usr.karma_rating >= 20)
									usr.dabura_quest_complete = 1
									usr << "<font color = white>Dabura:</font> Good Work [usr.name] , you did your job, here take this Blade and kill the Good people, Muahahaha"
									usr.contents += new/obj/Equipment/weapon/Demon_Blade
									usr << "<font color=white><center>..:: You've obtained Demon Blade ::..</center></font>"
									usr.zenni += 50000
									for(var/obj/Quests/Dabura/The_End/Q)
										del(Q)
								else
									usr << "<font color = white>Dabura:</font> Go and do my bidding before i change my mind!!"
									return

								if("No")
									return
				if("Nothing")
					return
