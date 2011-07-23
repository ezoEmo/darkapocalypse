mob/var/learn_zanzoken = 0

mob/NPC/

	Piccolo
		name = "{NPC} Piccolo"
		icon = 'Piccolo.dmi'
		density = 1
		doing = 0
		safe = 1

		powerlevel = 100

		energy_code = 2254343

		New()
			src.CreateName()

		verb/Talk()
			set src in oview(1)
			set category = null
			if(!usr.learn_zanzoken)
				if(usr.level >= 50 && usr.tp >= 15)
					usr.tp -= 15
					usr.learn_zanzoken = 1
					usr << "<font color = white>Piccolo:</font> Not only is Brute Strength needed in a fight, but so is Speed."
					sleep(20)
					usr << "<center><font color = white> .:: You learn Zanzoken ::.</font></center>"
					sleep(20)
					usr << "<font color = white>Piccolo:</white> Use the Zanzoken Technique Wisely [usr.name]"
					usr.verbs += new/mob/learn/verb/Zanzoken()
					return
				else
					usr << "<font color = white>Piccolo:</font> You aren't ready for my Teachings..."
			else
				usr << "<font color = white>Piccolo:</font> Use the Zanzoken Technique Wisely [usr.name]"
				return
