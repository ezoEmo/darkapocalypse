mob/var/krilin_quest_start = 0
mob/var/krilin_quest_complete = 0
mob/var/cell_jr_kills = 0

mob/NPC/

	Krilin
		name = "{NPC} Krillin"
		icon = 'Krilin.dmi'
		density = 1
		doing = 0
		safe = 1

		powerlevel = 100

		energy_code = 5321659

		New()
			src.CreateName()

		verb/Talk()
			set src in oview(1)
			set category = null
			if(usr.karma == "Good"|| usr.karma=="Evil")
				if(!usr.krilin_quest_start)
					usr << "<font color = white>Krillin:</font> Hey [usr.name]. Yo i'm weak, help a brother out?"
					sleep(15)
					switch(alert("Begin your Quest?","Quest: Danger","Yes","Not Yet"))
						if("Yes")
							usr.krilin_quest_start = 1
							usr.contents += new/obj/Quests/Krilin/Danger
							usr << "<font color = white>Krillin:</font> Thanks. There'r 5 Cell Jr's around the world, could you kill them before they harm anyone."
						else
							return
				else
					if(!usr.krilin_quest_complete)
						if(usr.cell_jr_kills >= 5)
							usr.krilin_quest_complete = 1
							usr << "<font color = white>Krillin:</font> Thanks, [usr.name] for killing those Jr's, sorry I couldn't help you."
							usr.powerlevel_max += 50000
							usr.ki_max += 500000
							usr.strength_max += 50000
							usr.defence_max += 50000
							usr.zenni += 50000
							usr.strength = usr.strength_max
							usr.defence = usr.defence_max

							for(var/obj/Quests/Krilin/Danger/Q)
								del(Q)
						else
							usr << "<font color = white>Krillin:</font> You must stop those Cell Jr's...cuz you know i can't."
							return
					else
						usr << "<font color = white>Krillin:</font> Thanks again for killing them....cuz you know i can't."