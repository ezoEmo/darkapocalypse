mob/var/beans = 1
mob/var/bean_delay = 0

mob/NPC/Korin
	icon = 'Korin.dmi'

	name = "{NPC} Korin"
	density = 1
	safe = 1

	powerlevel = 100

	energy_code = 5564321

	New()
		src.CreateName()

	verb/Talk()
		set category = null
		set src in oview(1)

		usr << "<font color = white>Korin:</white> Hey [usr.name]."
		sleep(15)
		usr << "<font color = white>Korin:</white> I got these pills but i can't sell them as pilles cuz of the cops so would you like to buy some beans for 3,500??"
		switch(alert("Buy Senzu?","Korin","Yes","No"))
			if("Yes")
				if(usr.inven_min < usr.inven_max)
					if(usr.zenni >= 3500)
						usr.zenni -= 3500
						usr.contents += new/obj/Equipment/Consumable/Senzu
						usr.inven_min ++
					else
						usr << "<font color = white>Korin:</white> You broke hoe, go get some money."
						return
				else
					usr << "<font color = white>Korin:</white> You got too much shit on you ..."
					return






	verb/Ask_For_Bean()
		set category = null
		set src in oview(1)

		if(usr.bean_delay)
			return


		if(usr.beans > 0 && usr.inven_min < usr.inven_max)
			usr.bean_delay = 1
			usr << "<font color = white>Korin:</white> Hey [usr.name], I was trying to grow some pot, but for some reason i got beans...!"
			sleep(25)
			usr << "<font color = #0066FF>Korin puts a Senzu Bean in your hand."
			sleep(25)
			usr << "<font color = white>Korin:</white> Take it i dont need beans >.<."
			usr.contents += new/obj/Equipment/Consumable/Senzu
			usr.inven_min ++
			usr.beans --
			spawn(25) usr.bean_delay = 0
			sleep(3000)
			if(!usr)return
			usr.beans = 1
			return
		else
			usr << "<font color = white>Korin:</white> Hey [usr.name], you wanna get high?"
			return