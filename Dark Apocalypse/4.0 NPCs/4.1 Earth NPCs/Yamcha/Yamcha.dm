mob/var/warrior_quest_start = 0
mob/var/warrior_quest_complete = 0
mob/var/strength_test_start = 0
mob/var/strength_test_complete = 0
mob/var/green_kills = 0

mob/NPC/Yamcha
	icon = 'Yamcha.dmi'
	icon_state = ""

	name = "{NPC} Yamcha"
	density = 1
	safe = 1
	energy_code = 1356437

	powerlevel = 100

	New()
		src.CreateName()

	verb/Talk()
		set category = null
		set src in oview(6)

		if(!usr.warrior_quest_start)
			usr << "<font color = white>Yamcha:</font> Greetings [usr.name]. I'm so weak but you are weaker for trying to look help from me."
			sleep(15)
			switch(alert("Begin your Training?","Quest: Warrior's Path","Yes","Not Yet"))
				if("Yes")
					usr.warrior_quest_start = 1
					usr.contents += new/obj/Quests/Yamcha/A_Warriors_Path
					usr << "<font color = white>Yamcha:</font> Good to Hear! I'll teach you a method when your ready to help your Training!"
				else
					usr << "<font color = white>Yamcha:</font> Ohh, that's unfortunant to hear"
					return
		else
			if(!usr.warrior_quest_complete)
				if(usr.level >= 5)
					usr << "<font color = white>Yamcha:</font> Great, your learning fast! To help your training more, i'll give you some Power!"
					usr << "<font color = white>Yamcha:</font> All done, if you need training just talk to me!"
					usr.warrior_quest_complete = 1
					usr.powerlevel_max += rand(2000,4000)
					for(var/obj/Quests/Yamcha/A_Warriors_Path/Q)
						del(Q)
				else
					usr << "<font color = white>Yamcha:</font> You still aren't ready, keep Training!"
					return
			else
				switch(alert("Hi [usr.name]. What can I do for you today?","Yamcha","Do you have a Task?","Nothing","Use Training Points"))
					if("Do you have a Task?")
						if(!usr.strength_test_start)
							usr << "<font color = white>Yamcha:</font> Greetings again [usr.name]. I have another Task for you if your are Interested?"
							sleep(15)
							switch(alert("Begin your Training?","Quest: A Test of Strength","Yes","Not Yet"))
								if("Yes")
									usr.strength_test_start = 1
									usr.contents += new/obj/Quests/Yamcha/A_Test_of_Strength
									usr << "<font color = white>Yamcha:</font> Good to Hear! What I want you to do is <font color = red>Kill 5 Saibamen</font>"
								else
									usr << "<font color = white>Yamcha:</font> Ohh, that's unfortunant to hear"
									return
						else
							if(usr.green_kills >= 5)
								usr << "<font color = white>Yamcha:</font> Great work, your proving to be a Strong Warrior!"
								usr.green_kills = 0
								usr.exp += round(usr.level * 100)
								usr << "\white EXP + [round(usr.level * 100)]"
								usr.strength_test_start = 0
								for(var/obj/Quests/Yamcha/A_Test_of_Strength/Q)
									del(Q)
							else
								usr << "<font color = white>Yamcha:</font> You still aren't done, keep Training!"
								return

					if("Nothing")
						return

					if("Use Training Points")
						usr.Train()
						return
