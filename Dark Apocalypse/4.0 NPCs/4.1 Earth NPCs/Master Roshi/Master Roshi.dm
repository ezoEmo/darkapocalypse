mob/var/roshi_quest_start = 0
mob/var/roshi_quest_complete = 0
mob/var/got_rock = 0

mob
	NPC

		Master_Roshi

			name = "{NPC} Master Roshi"
			icon = 'Roshi.dmi'
			density = 1
			safe = 1

			powerlevel = 100

			energy_code = 9987654

			New()
				src.CreateName()

			verb
				Talk()
					set src in oview(1)
					if(!usr.roshi_quest_start)
						usr << "<font color = white>Master Roshi:</font> Greetings [usr.name]. I have an intersting skill to teach if you have the time?"
						sleep(15)
						switch(alert("You want to learn the Kamehameha Wave??","Quest: The Masters Technique","Yes","Not at the Moment"))
							if("Yes")
								usr.roshi_quest_start = 1
								usr.contents += new/obj/Quests/Master_Roshi/Masters_Technique
								usr << "<font color = white>Master Roshi:</font> Good to Hear! I'll need you to find this Rock i'll throw somewhere in the world!"
							else
								usr << "<font color = white>Master Roshi:</font> Ohh, that's unfortunant to hear"
								return
					else
						if(!usr.roshi_quest_complete)
							if(usr.got_rock)
								usr << "<font color = white>Master Roshi:</font> Good work [usr.name]! Now I shall teach you the \blue Kamehameha Wave"
								usr.roshi_quest_complete = 1
								usr.zenni += 1000
								usr.verbs += new/mob/learn/verb/Kamehameha
								usr.learn_kamehameha = 1
								for(var/obj/Quests/Master_Roshi/Masters_Technique/Q)
									del(Q)
							else
								usr << "<font color = white>Master Roshi:</font> You haven't found the rock yet!"
								return