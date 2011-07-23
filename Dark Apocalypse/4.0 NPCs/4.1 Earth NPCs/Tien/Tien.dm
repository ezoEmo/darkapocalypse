mob/var/learn_kiai = 0

mob/NPC/Tien
	icon = 'Tien.dmi'

	name = "{NPC} Tien"
	density = 1
	safe = 1

	powerlevel = 100

	energy_code = 8876976

	New()
		src.CreateName()

	verb/Talk()
		set category = null
		set src in oview(1)

		if(!usr.learn_kiai)
			usr << "<font color = white>Tien:</font> yo G. wanna learn how to push someone out of a line?"
			sleep(15)
			switch(alert("Do you wish to learn Kiai?","Learn Technique","Yes","No"))

				if("Yes")
					if(usr.level >= 20 && usr.tp >= 5)
						usr.learn_kiai = 1
						usr.tp -= 5
						usr << "<center><font color = white> .:: You learn Kiai ::.</font></center>"
						sleep(20)
						usr << "<font color = white>Tien:</font> You can now use Kiai. Use it to push your Enemies back!"
						usr.verbs += new/mob/learn/verb/Kiai
					else
						usr << "<font color = white>Tien:</font> You aren't quiet ready for my Teaching"
				else
					return
		else
			usr << "<font color = white>Tien:</font> [usr.name], your gay for being near me -.-'?"
			return
