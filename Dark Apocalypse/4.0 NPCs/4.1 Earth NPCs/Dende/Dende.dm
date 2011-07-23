mob/NPC/Dende
	icon = 'Dende.dmi'

	name = "{NPC} Dende"
	density = 1
	safe = 1

	powerlevel = 100

	energy_code = 6574567

	New()
		src.CreateName()

	verb/Talk()
		set category = null
		set src in oview(1)
		var/percent = usr.powerlevel_max / 30
		var/hurt = round(percent)

		if(usr.powerlevel <= hurt)
			usr << "<font color = white>Dende:</font> Oh [usr.name], you look fucked up, dont get punked like that again!"
			sleep(15)
			usr << "<font color = #0066FF>Dende puts his hands on your head and you feel much better!"
			sleep(25)
			usr.powerlevel = usr.powerlevel_max
			usr.fatigue = 0
			usr << "<font color = white>Dende:</font> Damnit, now my hands are dirty... get the hell away from me [usr.name]!"
			return
		else
			usr << "<font color = white>Dende:</font> Go away [usr.name], I dont care about you."
			return

