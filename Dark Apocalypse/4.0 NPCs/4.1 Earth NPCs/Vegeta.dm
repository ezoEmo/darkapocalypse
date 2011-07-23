

mob
	NPC

		Vegeta

			name = "{NPC} Vegeta"
			icon = 'npcs.dmi'
			icon_state = "Past Vegeta"
			density = 1
			safe = 1

			powerlevel = 100

			energy_code = 7227361

			New()
				src.CreateName()

			verb
				Talk()
					set category = null
					set src in oview(1)

					if(usr.level >= 950)
						if(!usr.learn_big_bang)
							usr << "<font color = white>Vegeta:</font> Greetings [usr.name]. with your power, i'm sure you can handle this technique?"
							if(usr.tp >= 40)
								usr.learn_big_bang = 1
								usr.tp -= 40
								usr << "<font color = white>Vegeta:</font> Great! You have enough points to learn this move!"
								sleep(10)
								usr << "<center><font color=white>..:: You learned Big Bang Attack ::..</center></font>"
								usr.verbs += new/mob/learn/verb/Big_Bang_Attack
							else
								usr << "<font color=white>Vegeta:</font> Come back with 40 training points and i will teach you this technique!"
								return
						else
							usr << "<font color=white>Vegeta:</font> i have nothing else to teach you."
					else
						usr << "<font color=white>Vegeta:</font> You are not strong enough to learn my technique."
						return
